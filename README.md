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

## 🧪 Dokumentasi Proyek

| Misi | Deskripsi | Laporan |
|------|-----------|---------|
| **Misi 1** | Identifikasi masalah & desain konseptual | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi1_DW%20(1)%20(2).pdf) |
| **Misi 2** | Desain & implementasi skema multidimensi | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi2_DW%20.pdf) |
| **Misi 3** | Penerapan ETL pipeline & visualisasi | 📄 [Lihat](https://github.com/sains-data/Legalyze/blob/main/misi/Kelompok%2021(RC)_TugasMisi3_DW%20.pdf) |

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

---
## 📁 Repository Structure

```bash
data-warehouse-project/
├── datasets/                  # Raw datasets used for the project
├── gambar/                    # Project documentation and architecture details
│   ├── JusTeach_Logo.png       # our Logo Team
│   ├── Medallion Architecture # Project architectur
├── scripts/                   # SQL&Python scripts for ETL and transformations
│   
├── tests/                     # Test scripts and validation files
├── README.md                  # Project overview and instructions
├── LICENSE                    # License information
├── .gitignore                 # Files to be ignored by Git
└── requirements.txt           # Dependencies for the project

---


