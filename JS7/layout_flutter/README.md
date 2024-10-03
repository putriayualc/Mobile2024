Nama : Putri Ayu Aliciawati  
Kelas : TI-3C  
NIM : 2241720132

# Praktikum 1
## Langkah 1
![alt text](images/prak1(1).png)  
Membuat proyek baru bernama layout_flutter.

## Langkah 2
![alt text](images/prak1(2).png)  
Kode tersebut membuat aplikasi Flutter sederhana yang menampilkan teks "Hello World" di tengah layar dengan menggunakan MaterialApp, Scaffold untuk kerangka, dan AppBar sebagai judul. Widget Center memposisikan teks di tengah layar.

## Langkah 3
![alt text](images/prak1(3).png)  

## Langkah 4
![alt text](images/prak1(4).png)  
* soal 1 Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

* soal 2 Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

* soal 3 Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection

# Praktikum 2
## Langkah 1
![alt text](images/prak2(1).png)  
buildButtonColumn() mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

## Langkah 2
![alt text](images/prak2(2).png)  
Kode tersebut membuat sebuah baris (Row) yang terdiri dari tiga tombol dengan ikon dan teks: CALL, ROUTE, dan SHARE. Warna tombol menggunakan warna utama dari tema aplikasi (primaryColor), yang diambil dari Theme.of(context). Fungsi _buildButtonColumn() digunakan untuk membangun setiap tombol dalam kolom yang terdiri dari ikon dan teks.

## Langkah 3
![alt text](images/prak2(3).png)  

## Hasil Run
![alt text](images/prak2(4).png)  

# Praktikum 3  
## Langkah 1  
![alt text](images/prak3(1).png)  
Kode tersebut membuat sebuah widget Container yang berfungsi sebagai section untuk menampilkan teks. Container ini memiliki padding sebesar 32 piksel di semua sisi (EdgeInsets.all(32)), sehingga memberi ruang di sekeliling teks. Properti softWrap: true memastikan teks akan secara otomatis turun ke baris berikutnya jika melebihi lebar layar.  


## Langkah 2  
![alt text](images/prak3(2).png)  

## Hasil Run  
![alt text](images/prak3(3).png)  

# Praktikum 4
## Langkah 1  
![alt text](images/prak4(1).png)  
Pertama-tama memasukkan gambar ke folder images terlebih dahulu kemudian set nama file di pubspec.yaml.

## Langkah 2  
![alt text](images/prak4(2).png)  
Memanggil gambar ke dalam body. BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya

## Langkah 3  
![alt text](images/prak4(3).png)  
Mengatur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.  

## Hasil Run  
![alt text](images/prak4(4).png)