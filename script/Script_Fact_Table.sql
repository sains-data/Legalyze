
-- Tabel Dimensi

CREATE TABLE Dim_Pengacara (
    id_pengacara INT PRIMARY KEY,
    nama TEXT,
    spesialisasi TEXT,
    pengalaman INT
);

CREATE TABLE Dim_Klien (
    id_klien INT PRIMARY KEY,
    nama TEXT,
    usia INT,
    jenis_kelamin TEXT,
    kota TEXT,
    provinsi TEXT
);

CREATE TABLE Dim_Waktu (
    id_waktu INT PRIMARY KEY,
    tanggal DATE,
    bulan TEXT,
    tahun INT
);

CREATE TABLE Dim_Jenis_Kasus (
    id_jenis_kasus INT PRIMARY KEY,
    tipe_kasus TEXT,
    sub_kategori TEXT
);

CREATE TABLE Dim_Lokasi (
    id_lokasi INT PRIMARY KEY,
    kota TEXT,
    provinsi TEXT
);

-- Tabel Fakta

CREATE TABLE Fakta_Kasus (
    id_kasus INT PRIMARY KEY,
    id_pengacara INT,
    id_klien INT,
    id_waktu INT,
    id_jenis_kasus INT,
    id_lokasi INT,
    biaya FLOAT,
    status_kasus TEXT,
    FOREIGN KEY (id_pengacara) REFERENCES Dim_Pengacara(id_pengacara),
    FOREIGN KEY (id_klien) REFERENCES Dim_Klien(id_klien),
    FOREIGN KEY (id_waktu) REFERENCES Dim_Waktu(id_waktu),
    FOREIGN KEY (id_jenis_kasus) REFERENCES Dim_Jenis_Kasus(id_jenis_kasus),
    FOREIGN KEY (id_lokasi) REFERENCES Dim_Lokasi(id_lokasi)
);
