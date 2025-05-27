
-- Tabel Dimensi Pengacara
CREATE TABLE Dim_Pengacara (
    id_pengacara INT PRIMARY KEY,
    nama TEXT,
    spesialisasi TEXT,
    pengalaman INT
);

-- Tabel Dimensi Klien
CREATE TABLE Dim_Klien (
    id_klien INT PRIMARY KEY,
    nama TEXT,
    usia INT,
    jenis_kelamin TEXT,
    kota TEXT,
    provinsi TEXT
);

-- Tabel Dimensi Waktu
CREATE TABLE Dim_Waktu (
    id_waktu INT PRIMARY KEY,
    tanggal DATE,
    bulan TEXT,
    tahun INT
);

-- Tabel Dimensi Jenis Kasus
CREATE TABLE Dim_Jenis_Kasus (
    id_jenis_kasus INT PRIMARY KEY,
    tipe_kasus TEXT,
    sub_kategori TEXT
);

-- Tabel Dimensi Lokasi
CREATE TABLE Dim_Lokasi (
    id_lokasi INT PRIMARY KEY,
    kota TEXT,
    provinsi TEXT
);
