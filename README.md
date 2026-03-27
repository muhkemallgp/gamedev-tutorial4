# Tutorial 4 & 6 - Game Development
**Nama:** Muh. Kemal Lathif Galih Putra

**NPM:** 2206081225

**Kelas:** Game Development - Fasilkom UI 2022

## Tutorial 6 - Menu & In-Game GUI

### Fitur dan Implementasi Tutorial 6
#### 1. Main Menu Screen (`MainMenu.tscn`)
* Menggunakan hierarki `MarginContainer` sebagai root untuk memastikan tampilan responsif dengan layout **Full Rect**.
* Implementasi tata letak menggunakan `HBoxContainer` dan `VBoxContainer` untuk memisahkan area judul/tombol dengan area visual (gambar karakter).
* Customisasi font menggunakan `Theme Overrides` pada node `Label` dan `LinkButton` (menggunakan asset .ttf).
* Pengaturan **Main Scene** di Project Settings agar game dimulai dari Main Menu.

#### 2. Sistem Nyawa Global (Autoload)
* Membuat script `GameManager.gd` yang menyimpan variabel `var lives = 3` dan juga stage level variable.
* Mendaftarkan script tersebut sebagai **Autoload (Singleton)** agar data nyawa tetap tersimpan (persist) meskipun scene di-reload atau berpindah level.

#### 3. In-Game GUI (`LifeCounter.tscn`)
* Membuat tampilan nyawa menggunakan `CanvasLayer` agar UI selalu berada di depan kamera dan tidak ikut bergeser saat pemain bergerak.
* Menghubungkan label nyawa dengan variabel global menggunakan fungsi `_process` untuk pembaruan nilai secara real-time.

#### 4. Kondisi Game Over
* Implementasi logika pengurangan nyawa pada script `Area2D` setiap kali pemain jatuh ke jurang atau mengenai rintangan.
* Membuat scene `GameOver.tscn` dengan background `ColorRect` yang menutupi seluruh layar (**Full Rect**).
* Transisi otomatis ke layar Game Over menggunakan `call_deferred` ketika `Global.lives` mencapai angka 0.

### Latihan Mandiri (Fitur Tambahan)
Sesuai instruksi, saya mengimplementasikan 2 fitur tambahan berikut:
1. **Tombol Kembali ke Menu Utama**:
   * Menambahkan tombol pada layar Game Over yang meriset jumlah nyawa kembali ke 3 dan mengarahkan pemain kembali ke `MainMenu.tscn`.
   * Implementasi menggunakan `get_tree().call_deferred("change_scene_to_file", ...)` untuk memastikan transisi scene yang stabil.
2. **Sistem Select Stage**:
   * Implementasi tombol **Stage Select** di Main Menu yang mengarahkan ke scene pemilihan level.
   * Memberikan akses cepat bagi pemain untuk memilih langsung antara Level 1 atau Level 2.

## Referensi
* Lab Tutorial Game Development Fasilkom UI.
* Kenney Platformer Pack Assets.

## Tutorial 4 - Basic 2D Level Design
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
