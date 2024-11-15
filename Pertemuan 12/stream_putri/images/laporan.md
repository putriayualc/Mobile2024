Nama  : Putri Ayu Aliciawati  
Kelas : TI-3C  
NIM   : 2241720132  

# Praktikum 1  
## Langkah 1
![alt text](image.png)  
## Langkah 2
![alt text](image-1.png)
### Soal 1  
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.  
![alt text](image-2.png)
- Gantilah warna tema aplikasi sesuai kesukaan Anda.  
![alt text](image-3.png)
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"  
## Langkah 3  
![alt text](image-4.png)  
## Langkah 4  
![alt text](image-5.png)  
### Soal 2  
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
![alt text](image-6.png)
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"  
## Langkah 5  
![alt text](image-7.png)
## Langkah 6  
![alt text](image-8.png)  
### Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!  
Keyword `yield*` dalam kode tersebut digunakan untuk menyalurkan atau mendelegasikan semua elemen dari `Stream` lain ke `Stream` yang sedang didefinisikan. Dalam konteks ini, `yield* Stream.periodic(...)` memungkinkan semua elemen yang dihasilkan oleh `Stream.periodic`, yang menghasilkan elemen setiap satu detik, untuk diteruskan secara langsung ke `Stream` dari fungsi `getColors`. Ini memastikan bahwa warna-warna dari daftar `colors` dipancarkan secara berurutan dalam interval satu detik, tanpa perlu menangani elemen satu per satu secara manual.
- Apa maksud isi perintah kode tersebut?  
Kode tersebut mendefinisikan sebuah kelas bernama `Colorstream` yang menghasilkan aliran (stream) warna secara berkala. Kelas ini memiliki daftar warna (`colors`), yang mencakup berbagai warna seperti `Colors.blueGrey`, `Colors.amber`, dan sebagainya. Fungsi `getColors()` menggunakan sebuah `Stream` untuk menghasilkan warna-warna dari daftar tersebut secara berurutan dalam interval waktu satu detik. Dengan menggunakan `Stream.periodic`, setiap detik warna yang berbeda dari daftar akan dihasilkan, dan indeks warna diatur dengan `t % colors.length` untuk mengulang warna secara siklis saat mencapai akhir daftar.
- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"