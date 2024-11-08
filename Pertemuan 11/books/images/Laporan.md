Nama : Putri Ayu Aliciawati  
Kelas : TI-3C   
NIM : 2241720132  

# Praktikum 1 : Mengunduh Data dari Web Service (API)  
## Langkah 1
![alt text](image.png)
## Langkah 2  
![alt text](image-1.png)  
## Langkah 3  
### Soal 1  
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![alt text](image-2.png)  
## Langkah 4  
![alt text](image-3.png)
### Soal 2  
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini. Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".  
![alt text](image-4.png)  
## Langkah 5  
![alt text](image-5.png)
### Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!  
    1. **substring(0, 450)**: Potongan kode ini digunakan untuk mengambil substring dari hasil `value.body`. Dengan menggunakan metode `substring(0, 450)`, bagian string yang diambil adalah dari indeks ke-0 hingga ke-449, yang artinya hanya menampilkan 450 karakter pertama dari `value.body`. Ini berguna jika string yang diambil sangat panjang dan ingin disederhanakan atau dibatasi.
    2. **catchError**: Bagian ini adalah penanganan kesalahan (error handling). Jika terjadi kesalahan saat menunggu hasil dari pemanggilan `getData()`, fungsi `catchError` akan dipanggil. Kesalahan tersebut akan menyebabkan `result` diatur ke pesan "An error occured". Kemudian, `setState()` dipanggil untuk memperbarui UI dengan pesan error tersebut.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".  
![](image-6.gif)


