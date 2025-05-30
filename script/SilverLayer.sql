USE HUKUM;
GO

SELECT * FROM bronze.[Data1];
SELECT * FROM bronze.[Data2];
SELECT * FROM bronze.[Df3];

IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'silver'
)
BEGIN
    EXEC('CREATE SCHEMA silver');
END;

-- Buat tabel cleaned dan terintegrasi
SELECT
    d1.id_kasus,
    d1.jenis_kasus,
    d1.sub_jenis,
    COALESCE(d1.teks_asli, 'Teks tidak tersedia') AS teks_asli,
    d1.durasi_hari,
    d1.biaya_kasus,
    d1.skor_kepuasan,

    -- Info Klien
    d2.id_klien,
    d2.nama AS nama_klien,
    d2.usia,
    LOWER(d2.jenis_kelamin) AS jenis_kelamin,
    INITCAP(d2.kota) AS kota,
    INITCAP(d2.provinsi) AS provinsi,

    -- Info Waktu
    TRY_CAST(d3.tanggal AS DATE) AS tanggal,
    d3.bulan,
    d3.tahun

INTO silver.CleanedKasus
FROM bronze.[Data 1] d1
LEFT JOIN bronze.[Data 2] d2 ON d1.id_klien = d2.id_klien
LEFT JOIN bronze.[Data 3] d3 ON d1.id_waktu = d3.id_waktu;


-- Standarisasi teks: lowercase dan TRIM
    LOWER(LTRIM(RTRIM(d2.jenis_kelamin))) AS jenis_kelamin,
    UPPER(LTRIM(RTRIM(d2.kota))) AS kota,
    UPPER(LTRIM(RTRIM(d2.provinsi))) AS provinsi,

    -- Format tanggal
    TRY_CAST(d3.tanggal AS DATE) AS tanggal,
    d3.bulan,
    d3.tahun

INTO silver.CleanedKasus
FROM bronze.[Data 1] d1
LEFT JOIN bronze.[Data 2] d2 ON d1.id_klien = d2.id_klien
LEFT JOIN bronze.[Data 3] d3 ON d1.id_waktu = d3.id_waktu;