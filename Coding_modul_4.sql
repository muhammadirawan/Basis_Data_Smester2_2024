CREATE TABLE `Pabrik` (
  `Sejarah_Produksi` text PRIMARY KEY,
  `Reputasi` varchar(255),
  `No_Distribusi` integer,
  `nama` varchar(255),
  `Lokasi_Produksi` varchar(255)
);

CREATE TABLE `Ponsel` (
  `spesifikasi` text PRIMARY KEY,
  `Tahun_Rilis` integer,
  `Nama` varchar(255),
  `kategori` varchar(255),
  `Sejarah_Produksin` text
);

CREATE TABLE `Pelanggan` (
  `No_Telpon` integer PRIMARY KEY,
  `Jenis_Kelamin` bool,
  `Tanggal_Lahir` datetime,
  `Alamat_Email` varchar(255),
  `Nama` varchar(255),
  `Alamat` varchar(255)
);

CREATE TABLE `Beli` (
  `No_Tlpon_Pelanggan` integer,
  `Spesifikasi` text,
  `Tanggal_Pembelian` datetime,
  `Tanggal_Pengambilan` datetime,
  `Garansi` varchar(255),
  `No_Tlpon_Karyawan` integer
);

CREATE TABLE `Jaringan_Distribusi` (
  `No_Distribusi` integer,
  `Karyawan` varchar(255)
);

CREATE TABLE `Kategori_Ponsel` (
  `Kategori` varchar(255),
  `Penggunaan` varchar(255)
);

CREATE TABLE `Email` (
  `Alamat_Email` varchar(255) PRIMARY KEY,
  `Email` varchar(255)
);

CREATE TABLE `Karyawan` (
  `No_Tlpon_karyawan` integer PRIMARY KEY,
  `Tanggal_Lahir` datetime
);

ALTER TABLE `Ponsel` ADD FOREIGN KEY (`Sejarah_Produksin`) REFERENCES `Pabrik` (`Sejarah_Produksi`);

ALTER TABLE `Beli` ADD FOREIGN KEY (`No_Tlpon_Pelanggan`) REFERENCES `Pelanggan` (`No_Telpon`);

ALTER TABLE `Beli` ADD FOREIGN KEY (`Spesifikasi`) REFERENCES `Ponsel` (`spesifikasi`);

ALTER TABLE `Karyawan` ADD FOREIGN KEY (`No_Tlpon_karyawan`) REFERENCES `Beli` (`No_Tlpon_Karyawan`);

ALTER TABLE `Jaringan_Distribusi` ADD FOREIGN KEY (`No_Distribusi`) REFERENCES `Pabrik` (`Sejarah_Produksi`);

ALTER TABLE `Kategori_Ponsel` ADD FOREIGN KEY (`Kategori`) REFERENCES `Ponsel` (`spesifikasi`);

ALTER TABLE `Email` ADD FOREIGN KEY (`Email`) REFERENCES `Pelanggan` (`Alamat_Email`);
