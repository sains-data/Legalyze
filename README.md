# ⚖️Legalyze: Perancangan Data Warehouse untuk Mendukung Pengambilan Keputusan Firma Hukum

<p align="center">
  <img src= "gambar/JustTeach_Logo.png" alt="JustTeach Logo" width="500">
</p>

<h1 align="center">Legalyze</h1>
<h3 align="center">Empowering Legal Intelligence through Data</h3>

<p align="center">
  <strong>JustTech</strong> Merupakan Sebuah Tim Kelompok 21 Matakuliah Pergudangan Data Program Studi Sains data Institut Teknologi Sumatera yang menghadirkan <strong>Legalyze</strong>, sebuah solusi Data Warehouse modern yang dirancang khusus untuk <br/>
  mentransformasi proses pengambilan keputusan dalam firma hukum dan memperluas edukasi hukum berbasis data di Indonesia.
</p>

<p align="center">
  <em>Legal Tech meets Data Engineering Transparansi, Efisiensi, dan Keadilan di Era Digital.</em>
</p>

---

## 📘 Tentang Legalyze

**Legalyze** adalah sistem data warehouse komprehensif untuk sektor hukum yang bertujuan memperkuat pengambilan keputusan berbasis data. Data warehouse ini dirancang untuk mengolah berbagai sumber data hukum mulai dari riwayat kasus, profil pengacara, hingga kepuasan klien menjadi insight analitis yang mudah diakses melalui dashboard visual dan query multidimensi.

Legalyze dikembangkan menggunakan pendekatan **Medallion Architecture** (Bronze → Silver → Gold) serta model **Star Schema**, menjadikannya sistem yang scalable, modular, dan siap untuk eksplorasi lanjutan menggunakan *Business Intelligence Tools* atau bahkan *Machine Learning*.

---

## 📈 Analisis Kebutuhan Bisnis

### 🔍 Masalah Bisnis
Firma hukum di Indonesia menghadapi sejumlah tantangan operasional dan strategis yang menghambat efisiensi dan efektivitas pengambilan keputusan:

- Belum tersedia sistem analitik terintegrasi untuk mengevaluasi performa pengacara, klasifikasi kasus, dan efisiensi penanganan perkara.
- Proses pengambilan keputusan strategis masih bersifat subjektif dan tidak berbasis data historis.
- Kebutuhan manajemen untuk mendapatkan laporan kinerja firma dalam format visual dan dinamis belum terpenuhi.


### 🎯 Tujuan Proyek

- 📊 Menganalisis performa pengacara berdasarkan beban kerja dan tingkat kepuasan
- 🔍 Mengidentifikasi tren jenis kasus dan waktu penyelesaiannya
- 💼 Mendukung keputusan manajerial firma hukum 
- 🧭 Menyokong regulator dalam pemantauan kepatuhan dan efisiensi layanan hukum

---

## 👥 Stakeholder Sistem

| Stakeholder                          | Peran                                         | Tujuan                                                                 |
|--------------------------------------|-----------------------------------------------|------------------------------------------------------------------------|
| **Pengacara**                        | Pengguna utama DW untuk analisis kasus hukum  | Meningkatkan efisiensi pengambilan keputusan hukum berbasis data      |
| **Manajer Firma Hukum**              | Pengelola strategi dan sumber daya firma      | Mengoptimalkan alokasi SDM & strategi firma                           |
| **Tim IT**                           | Pengelola dan pemelihara sistem DW            | Menjamin ketersediaan, keamanan, dan efisiensi sistem                 |
| **Investor / Sponsor Teknologi**     | Penyandang dana & mitra inovasi               | Mendorong inovasi hukum digital dan dampak sosial                     |
| **Lembaga Swadaya Masyarakat (LSM)**| Mediator & edukator hukum masyarakat          | Menyediakan edukasi hukum berbasis data & relevan                     |
| **Regulator & Instansi Pemerintah** | Pengawas & penentu arah kebijakan hukum       | Memonitor kepatuhan, privasi data, dan digitalisasi hukum             |
| **Legal Analyst**                    | Analis data hukum & strategi                  | Mendapatkan insight hukum dari pola & tren data                       |
| **Compliance Officer**              | Pengawas kepatuhan dan etika hukum            | Memantau potensi pelanggaran regulasi atau kode etik                  |
| **Eksekutif / Partner Senior**       | Pengambil keputusan strategis firma           | Menyusun kebijakan berbasis insight dari dashboard dan laporan        |


---

## 🧱 Arsitektur Sistem

Legalyze mengimplementasikan pendekatan **Medallion Architecture**, yang terdiri dari beberapa lapisan

<p align="center">
  <img src= "gambar/Medallion Architecture.png" alt="Medallion Architecture" width="1000">
</p>


- 🟫 **Bronze Layer**  
  Menyimpan *raw data* dari berbagai sumber.

- ⚪ **Silver Layer**  
  Menyimpan *cleaned data* yang telah melalui proses pembersihan dan transformasi dasar.

- 🟨 **Gold Layer**  
  Menyediakan *business-ready insights* untuk kebutuhan analisis dan pelaporan.

Alur data:  
**Raw Data** → **Cleaned Data** → **Business-Ready Insight**

---

---

## 📊 Database Schema

Skema database Legalyze dibangun menggunakan pendekatan **Star Schema** dengan satu tabel fakta utama yang terhubung ke lima tabel dimensi. Skema ini dirancang untuk mempermudah proses analisis multidimensi terhadap data kasus hukum, performa pengacara, dan kepuasan klien.

### 🗃️ Tabel Fakta: `Fakta_Kasus`

| Kolom               | Tipe Data   | Deskripsi                                           |
|---------------------|-------------|-----------------------------------------------------|
| `id_kasus`          | INT         | ID unik setiap kasus hukum                         |
| `id_pengacara`      | INT (FK)    | Referensi ke `Dim_Pengacara`                       |
| `id_klien`          | INT (FK)    | Referensi ke `Dim_Klien`                           |
| `id_waktu`          | INT (FK)    | Referensi ke `Dim_Waktu`                           |
| `id_jenis_kasus`    | INT (FK)    | Referensi ke `Dim_Jenis_Kasus`                     |
| `id_lokasi`         | INT (FK)    | Referensi ke `Dim_Lokasi`                          |
| `durasi_penyelesaian` | INT      | Lama penanganan kasus (dalam hari)                 |
| `biaya_kasus`       | FLOAT       | Biaya yang dikeluarkan untuk kasus (dalam Rupiah)  |
| `skor_kepuasan`     | INT         | Nilai kepuasan klien (skala 1–10)                  |

---

### 📁 Tabel Dimensi

#### 🔹 `Dim_Pengacara`

| Kolom             | Tipe Data | Deskripsi                                |
|-------------------|-----------|------------------------------------------|
| `id_pengacara`    | INT       | ID unik pengacara                        |
| `nama`            | TEXT      | Nama pengacara                           |
| `spesialisasi`    | TEXT      | Bidang hukum yang dikuasai               |
| `pengalaman`      | INT       | Lama pengalaman kerja (tahun)            |

#### 🔹 `Dim_Klien`

| Kolom             | Tipe Data | Deskripsi                        |
|-------------------|-----------|----------------------------------|
| `id_klien`        | INT       | ID unik klien                    |
| `nama`            | TEXT      | Nama klien                       |
| `usia`            | INT       | Usia klien                       |
| `jenis_kelamin`   | TEXT      | Laki-laki / Perempuan            |
| `kota`            | TEXT      | Kota domisili                    |
| `provinsi`        | TEXT      | Provinsi domisili                |

#### 🔹 `Dim_Waktu`

| Kolom          | Tipe Data | Deskripsi                      |
|----------------|-----------|--------------------------------|
| `id_waktu`     | INT       | ID waktu                       |
| `tanggal`      | DATE      | Tanggal kasus ditangani        |
| `bulan`        | TEXT      | Nama bulan                     |
| `tahun`        | INT       | Tahun                          |

#### 🔹 `Dim_Jenis_Kasus`

| Kolom             | Tipe Data | Deskripsi                           |
|-------------------|-----------|-------------------------------------|
| `id_jenis_kasus`  | INT       | ID jenis kasus                      |
| `tipe_kasus`      | TEXT      | Kategori utama (Pidana, Perdata, dsb) |
| `sub_kategori`    | TEXT      | Sub-kategori kasus                  |

#### 🔹 `Dim_Lokasi`

| Kolom          | Tipe Data | Deskripsi             |
|----------------|-----------|-----------------------|
| `id_lokasi`    | INT       | ID lokasi             |
| `kota`         | TEXT      | Kota tempat kasus     |
| `provinsi`     | TEXT      | Provinsi tempat kasus |

---

### 🔗 Relasi Antar Tabel

Relasi antar tabel dalam database Legalyze mengikuti pola **many-to-one**:

- `Fakta_Kasus` → `Dim_Pengacara`
- `Fakta_Kasus` → `Dim_Klien`
- `Fakta_Kasus` → `Dim_Waktu`
- `Fakta_Kasus` → `Dim_Jenis_Kasus`
- `Fakta_Kasus` → `Dim_Lokasi`

---

### 📏 Ukuran (Measures)

Tabel fakta menyimpan metrik kuantitatif sebagai dasar analisis:

- `durasi_penyelesaian`: waktu penyelesaian kasus
- `biaya_kasus`: total biaya hukum
- `skor_kepuasan`: nilai kepuasan dari klien
- `jumlah_kasus`: total kasus
- `jumlah_kasus_per_tipe`: agregasi per kategori kasus
- `rata-rata_durasi_per_tipe`: perbandingan efisiensi antar tipe kasus

---

### 🗂️ Hierarki Dimensi

| Dimensi           | Hirarki                         |
|-------------------|----------------------------------|
| Waktu             | Tanggal → Bulan → Tahun          |
| Klien             | Kota → Provinsi                  |
| Jenis Kasus       | Tipe Kasus → Sub-Kategori        |
| Pengacara         | Spesialisasi → Pengalaman (ops)  |

---
## Implementasi

### ETL 
![Deskripsi Gambar](https://drive.google.com/uc?export=view&id=1TioEnGhKj_0zkO3vLkuzzvqaCy_Y4A4Z)

> 📌 Skema ini mendukung analitik OLAP (Online Analytical Processing) dan memungkinkan visualisasi multidimensi melalui dashboard Power BI atau tools serupa.



---

## 🧪 Dokumentasi Proyek

| Misi | Deskripsi | Laporan |
|------|-----------|---------|
| **Misi 1** | Identifikasi masalah & desain konseptual | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi1_DW%20(1)%20(2).pdf) |
| **Misi 2** | Desain & implementasi skema multidimensi | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi2_DW%20.pdf) |
| **Misi 3** | Penerapan ETL pipeline & visualisasi | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi3_DW%20.pdf) |

---

---

# ⚙️**Rencana Pengembangan**

###  **Short Term (3-6 bulan)**

1. **ETL Automation**:
   - **Apache Airflow** digunakan untuk otomatisasi proses ETL (Extract, Transform, Load) agar dapat dijalankan secara terjadwal dan terorganisir.
   - **Manfaat**: Memastikan data yang masuk ke dalam data warehouse selalu terbarui secara otomatis dan tepat waktu.

2. **BI Integration**:
   - **Power BI** dan **Tableau** akan diintegrasikan untuk visualisasi data dan pembuatan dashboard interaktif.
   - **Manfaat**: Memudahkan manajemen dan pengacara dalam menganalisis data kasus, performa pengacara, dan keuangan secara visual.

3. **Security Enhancement**:
   - Mengimplementasikan **encryption** untuk data sensitif, seperti informasi klien dan hasil kasus.
   - Menambahkan **audit trails** untuk memastikan jejak audit yang jelas dan kontrol akses yang aman.
   - **Manfaat**: Meningkatkan keamanan dan menjaga kerahasiaan data.

4. **Performance Tuning**:
   - Melakukan **query optimization** dan menerapkan **caching strategies** untuk meningkatkan performa akses data.
   - **Manfaat**: Meningkatkan kecepatan query dan efisiensi dalam pengolahan data di **Data Warehouse**.

### **Long Term (6-12 bulan)**

1. **Machine Learning**:
   - Mengimplementasikan **predictive analytics** untuk melakukan **forecasting** dan prediksi terkait kinerja kasus dan pengacara.
   - **Manfaat**: Membantu firma hukum merencanakan dan mengalokasikan sumber daya dengan lebih baik berdasarkan data historis.

2. **Real-time Processing**:
   - Menggunakan **Apache Kafka** untuk melakukan **streaming data** secara real-time dari sistem manajemen kasus dan sistem keuangan.
   - **Manfaat**: Memungkinkan pengambilan keputusan berbasis data secara langsung dan real-time, mempercepat respon terhadap kasus yang sedang berjalan.

3. **Data Lake Integration**:
   - Mengintegrasikan **Data Lake** sebagai arsitektur hibrid untuk menangani big data yang lebih besar dan lebih kompleks, memungkinkan analisis data lebih lanjut.
   - **Manfaat**: Menyediakan penyimpanan data yang lebih fleksibel dan scalable untuk analisis lebih mendalam.

4. **API Development**:
   - Mengembangkan **REST APIs** untuk integrasi dengan sistem eksternal, seperti aplikasi pihak ketiga, untuk memungkinkan pertukaran data secara lebih fleksibel.
   - **Manfaat**: Memungkinkan **Data Warehouse** untuk terhubung dengan sistem lain secara mudah dan memfasilitasi aliran data secara lebih efisien.

---


---

## 👨‍💻 Kontributor

**JustTech** – Kelompok 21  
Institut Teknologi Sumatera (ITERA)  
Mata Kuliah: Data Warehouse (2024/2025)

- Gede Moena (121450014) [GedeMoenaa](https://github.com/GedeMoenaa)
- Tria Yunanni (122450062) [triayunannii](https://github.com/triayunannii)
- Afifah Syaharani (121450097) [syaharani097](https://github.com/syaharani097)
- Ratu Keisha Jasmine Deanova (122450106) [jasminednva27](https://github.com/jasminednva27)
- Muhammad Regi Abdi Putra Amanta (122450031)

---



