# Tutorial 4 - Basic 2D Level Design
**Nama:** Muh. Kemal Lathif Galih Putra
**NPM:** 2206081225
**Kelas:** Game Development - Fasilkom UI 2022

## Deskripsi Proyek
Proyek ini merupakan hasil pengerjaan Tutorial 4 yang berfokus pada perancangan level 2D menggunakan Godot Engine. Fitur utama yang diimplementasikan meliputi penggunaan TileMap, sistem Signal untuk kondisi menang/kalah, dan Object Spawner.

## Fitur dan Implementasi
### 1. Level Design (TileMap)
* Menggunakan `TileMapLayer` dengan ukuran tile 128x128 pixel.
* Menambahkan `Physics Layer` pada TileSet agar objek Player dapat berinteraksi secara fisik dengan lantai (collision).

### 2. Kamera dan Pergerakan
* Menambahkan node `Camera2D` sebagai child dari Player agar tampilan layar mengikuti pergerakan karakter utama.

### 3. Kondisi Menang dan Kalah (Signal)
* Menggunakan scene `AreaTrigger` yang bersifat reusable untuk mendeteksi kondisi menang (Rektorat) dan kalah (Jurang).
* Implementasi sistem Signal `body_entered` pada `Area2D` untuk memicu perpindahan scene.
* Menggunakan `call_deferred` saat mengganti scene untuk mencegah error pada siklus fisika engine.

### 4. Rintangan Dinamis (Object Spawner)
* **Falling Mouse**: Musuh yang jatuh secara vertikal dari langit menggunakan `RigidBody2D`.
* **Flying Bee**: Musuh yang bergerak horizontal dari samping layar dengan pengaturan `linear_velocity` dan `gravity_scale = 0`.
* **Spawner**: Script `Spawner.gd` yang melakukan instansiasi objek secara periodik (setiap 1 detik) pada posisi acak.

### 5. WinScreen Interaktif
* Menggunakan satu scene `WinScreen` yang fleksibel dengan `TextureButton` (Asset Koin).
* Menggunakan variabel `@export var target_level` untuk menentukan rute balik antar level secara dinamis melalui Inspector.

## Latihan Mandiri (Level 2)
* Membuat `Level2.tscn` dengan desain platforming yang lebih menantang.
* Menambahkan variasi rintangan baru (Bee/Lebah) yang muncul dari sisi atas dan samping layar.
* Mengintegrasikan sistem perpindahan level dari Level 1 -> WinScreen -> Level 2 -> WinScreen.

## Referensi
* Lab Tutorial 4 Game Development Fasilkom UI.
* Kenney Platformer Pack Assets.