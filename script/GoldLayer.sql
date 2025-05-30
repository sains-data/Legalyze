IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'gold'
)
BEGIN
    EXEC('CREATE SCHEMA gold');
END;

SELECT 
    jenis_kasus,
    provinsi,
    COUNT(*) AS total_kasus,
    AVG(skor_kepuasan) AS avg_skor,
    AVG(z_skor_kepuasan) AS avg_zscore,
    AVG(durasi_hari) AS avg_durasi,
    SUM(biaya_kasus) AS total_biaya
INTO gold.RingkasanKasus
FROM silver.CleanedKasus
GROUP BY jenis_kasus, provinsi;

SELECT *,
    CASE 
        WHEN usia < 20 THEN 'Remaja'
        WHEN usia BETWEEN 20 AND 35 THEN 'Dewasa Muda'
        WHEN usia BETWEEN 36 AND 50 THEN 'Dewasa'
        WHEN usia > 50 THEN 'Lansia'
        ELSE 'Tidak diketahui'
    END AS segment_usia
INTO gold.KasusDenganSegmentasi
FROM silver.CleanedKasus;

SELECT *,
    CASE 
        WHEN skor_kepuasan >= 4 THEN 'Puas'
        WHEN skor_kepuasan BETWEEN 2 AND 3 THEN 'Netral'
        ELSE 'Tidak Puas'
    END AS label_kepuasan
INTO gold.KasusDenganLabel
FROM silver.CleanedKasus;
