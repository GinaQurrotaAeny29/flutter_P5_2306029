# Praktikum Mobile – Pertemuan 5

## Routing & Navigasi pada Flutter

## Deskripsi

Praktikum ini membahas tentang implementasi **routing dan navigasi** pada aplikasi Flutter. Aplikasi yang dibuat memiliki dua halaman, yaitu halaman utama (Home Page) dan halaman detail (Second Page), dengan fitur perpindahan halaman serta pengiriman data antar halaman.

## Tujuan Pembelajaran

Berdasarkan modul praktikum :

* Memahami konsep navigasi antar halaman menggunakan `Navigator`
* Menggunakan `Navigator.push()` dan `Navigator.pop()`
* Mengimplementasikan **Named Routes**
* Mengirim dan menerima data antar halaman

## Fitur Aplikasi

* Halaman utama menampilkan:

  * Gambar produk
  * Nama produk
  * Harga produk
  * Tombol **Lihat Detail**
* Halaman detail menampilkan:

  * Gambar produk
  * Nama produk
  * Harga produk
  * Deskripsi produk
* Navigasi:

  * Klik **Lihat Detail** → pindah ke halaman kedua
  * Klik tombol kembali → kembali ke halaman utama

## Tampilan Aplikasi

### Halaman Utama

<img width="751" height="964" alt="image" src="https://github.com/user-attachments/assets/f717acff-c744-49aa-8e0a-f3ce2e82ec24" />


### Halaman Detail

<img width="744" height="958" alt="image" src="https://github.com/user-attachments/assets/d4ed6e1f-d7a5-46ad-9d69-a8ae25600cc3" />


## Struktur Project

```
lib/
├── main.dart
├── home_page.dart
└── second_page.dart
```

## Konsep yang Digunakan

### 1. Navigator

* `Navigator.push()` → berpindah ke halaman baru
* `Navigator.pop()` → kembali ke halaman sebelumnya

### 2. Named Routes

Routing menggunakan nama path seperti:

```dart
routes: {
  '/': (context) => HomePage(),
  '/second': (context) => SecondPage(),
}
```

### 3. Pengiriman Data

Data dikirim melalui `arguments`:

* name
* price
* imageUrl
* description

## Cara Kerja Aplikasi

* Data produk disimpan di `main.dart`
* Data dikirim ke `HomePage` dan `SecondPage`
* Ketika tombol **Lihat Detail** ditekan:

  * Menggunakan `Navigator.pushNamed('/second')`
  * Data dikirim ke halaman kedua
* Halaman kedua menampilkan detail produk
* Tombol back menggunakan `Navigator.pop()`

## Teknologi yang Digunakan

* Flutter
* Dart

## Kesimpulan

Pada praktikum ini, dapat disimpulkan bahwa:

* Navigasi di Flutter dapat dilakukan dengan mudah menggunakan `Navigator`
* **Named Routes** mempermudah pengelolaan perpindahan halaman
* Data antar halaman dapat dikirim menggunakan `arguments`
* Struktur aplikasi menjadi lebih rapi dengan pemisahan file halaman
