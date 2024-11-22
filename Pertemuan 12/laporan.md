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
## Langakh 7  
![alt text](image-9.png)  
## Langkah 8  
![alt text](image-10.png)
## Langkah 9  
![alt text](image-11.png)  
## Langkah 10  
![alt text](image-12.png)  
## Langkah 11  
![alt text](image-13.png)
## Langkah 12  
### Soal 4
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.  
![](image-13.gif)
- Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"  
## Langkah 13  
![alt text](image-14.png)  
### Soal 5  
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !  
`await for` menunggu dan memproses setiap elemen dari `Stream` satu per satu secara sinkron dalam fungsi `async`, sementara `listen` menangani elemen secara real-time dengan callback, tanpa menunggu, dan tidak memblokir eksekusi program.
- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"  

# Praktikum 2  
## Langkah 1  
![alt text](image-15.png)  
## Langkah 2  
![alt text](image-16.png)
## Langkah 3  
![alt text](image-17.png)  
## Langkah 4  
![alt text](image-18.png)  
## Langkah 5  
![alt text](image-19.png)  
## Langkah 6  
![alt text](image-20.png)  
## Langkah 7  
![alt text](image-21.png)  
## Langkah 8  
![alt text](image-22.png)
## Langkah 9  
![alt text](image-23.png)
## Langkah 10  
![alt text](image-24.png)  
## Langkah 11  
![alt text](image-25.png)  
## Langkah 12  
### Soal 6  
- Jelaskan maksud kode langkah 8 dan 10 tersebut!  
    - **Langkah 8**: `initState()` menginisialisasi `numberStream` dan mendengarkan data dari `Stream`. Setiap kali data baru diterima, `setState()` dipanggil untuk memperbarui `lastNumber` dan memperbarui UI.
    - **Langkah 10**: `addRandomNumber()` menghasilkan angka acak dari 0 hingga 9 dan menambahkannya ke `Stream`, yang memicu pembaruan UI dengan angka baru.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
    ![](image-26.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".
## Langlah 13
![alt text](image-26.png)  
## Langkah 14
![alt text](image-27.png)  
## Langkah 15
![alt text](image-28.png)
### Soal 7
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
    - **Langkah 13**: `addError()` mengirimkan error ke `Stream` menggunakan `controller.sink.addError('error')`.
    - **Langkah 14**: `onError()` menangani error dari `Stream` dan mengubah `lastNumber` menjadi `-1` jika terjadi error.
    - **Langkah 15**: `addRandomNumber()` memanggil `addError()` untuk memicu error dalam `Stream`, yang kemudian ditangani di `initState()`.
- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
![alt text](image-29.png)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".

# Praktikum 3
## Langkah 1  
![alt text](image-30.png)  
## Langkah 2  
![alt text](image-31.png)  
## Langkah 3  
![alt text](image-32.png)  
## Langkah 4
### Soal 8
- Jelaskan maksud kode langkah 1-3 tersebut!  
    - **Langkah 1**: Mendeklarasikan variabel `transformer` bertipe `StreamTransformer<int, int>` untuk memodifikasi data stream.
    - **Langkah 2**: Menginisialisasi `transformer` dengan callback untuk mengalikan data dengan 10, menangani error dengan mengirim `-1`, dan menutup sink saat selesai.
    - **Langkah 3**: Menerapkan `transformer` pada stream dan mendengarkan data. Data yang diproses diperbarui di UI, dan error mengubah nilai `lastNumber` menjadi `-1`.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![](image-32.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 8".

# Praktikum 4
## Langkah 1
![alt text](image-33.png)
## Langkah 2
![alt text](image-34.png)
## Langkah 3
![alt text](image-35.png)
## Langkah 4
![alt text](image-36.png)
## Langkah 5
![alt text](image-37.png)
## Langkah 6
![alt text](image-38.png)
## Langkah 7
![alt text](image-39.png)
## Langkah 8
![alt text](image-40.png)
## Langkah 9
![](image-41.gif)
## Langkah 10
![alt text](image-41.png)
### Soal 9 
- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
    - langkah 2  
    bagian dari inisialisasi aliran data (stream) di Flutter, digunakan untuk menghubungkan data real-time dengan antarmuka pengguna. Fungsi initState memulai stream melalui instance NumberStream, yang menghasilkan aliran data menggunakan StreamController. Widget berlangganan ke stream dengan metode listen(), sehingga setiap kali ada data baru yang dipancarkan, callback akan dipanggil untuk memperbarui nilai lastNumber melalui setState. Hal ini memungkinkan UI untuk secara otomatis memperbarui sesuai dengan perubahan data. Akhirnya, super.initState() memastikan lifecycle widget tetap berjalan dengan benar.
    - langkah 6  
    `subscription.cancel();` digunakan untuk menghentikan langganan ke stream, sehingga widget tidak lagi menerima data baru. Ini penting untuk mencegah kebocoran memori dan biasanya dipanggil di metode `dispose()` untuk membersihkan sumber daya sebelum widget dihancurkan.
    - langkah 8  
    Fungsi `addRandomNumber()` menghasilkan angka acak dari 0 hingga 9 menggunakan kelas `Random` dan mencoba menambahkan angka tersebut ke stream melalui `addNumberToSink()`. Sebelum menambahkan, fungsi memeriksa apakah `numberStreamController` masih terbuka menggunakan `isClosed`. Jika controller masih terbuka, angka ditambahkan ke stream; jika tidak, nilai `lastNumber` diatur ke `-1` menggunakan `setState` untuk mencerminkan bahwa stream sudah ditutup. Fungsi ini memastikan penanganan kondisi ketika stream tidak lagi aktif.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.  
![](image-41.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 9".

# Praktikum 5
## Langkah 1
![alt text](image-42.png)
## Langkah 2
![alt text](image-43.png)
## Langkah 3
![alt text](image-44.png)
### Soal 10  
- Jelaskan mengapa error itu bisa terjadi ?  
    Error terjadi karena stream yang digunakan adalah **single-subscription stream**, yang hanya mendukung satu listener pada satu waktu. Ketika Anda mencoba menambahkan listener kedua menggunakan `stream.listen()`, Flutter memunculkan error **"Bad state: Stream has already been listened to."** untuk mencegah konflik data. Untuk memperbaikinya, ubah stream menjadi **broadcast stream** dengan `asBroadcastStream()`, atau pastikan hanya ada satu listener pada stream tersebut.
## Langkah 4
![alt text](image-45.png)
## Langkah 5  
![alt text](image-46.png)
## Langkah 6
![](image-47.gif)
### Soal 11
- Jelaskan mengapa hal itu bisa terjadi ?  
    Hal ini terjadi karena terdapat **dua listener** (`subscription` dan `subscription2`) yang aktif mendengarkan stream yang sama. Ketika tombol "New Random Number" ditekan, stream memancarkan angka baru, dan kedua listener menerima angka tersebut secara bersamaan. Karena kedua listener memiliki callback yang sama untuk memperbarui variabel `values`, angka ditambahkan dua kali ke teks yang ditampilkan. Ini diperbolehkan karena stream diubah menjadi **broadcast stream** menggunakan `asBroadcastStream()`, yang memungkinkan banyak listener mendengarkan aliran yang sama. Akibatnya, setiap angka yang dipancarkan diproses dua kali, sehingga teks angka terus bertambah sebanyak dua kali.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
    ![](image-47.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 10,11".


# Praktikum 6  
## Langkah 1  
![alt text](image.png)
## Langkah 2
![alt text](image-1.png)
## Langkah 3
![alt text](image-2.png)
## Langkah 4  
![alt text](image-3.png)
## Langkah 5
![alt text](image-4.png)
## Langkah 6
![alt text](image-5.png)
## Langkah 7
![alt text](image-6.png)
## Langkah 8  
### Soal 12
- Jelaskan maksud kode pada langkah 3 dan 7 !  
    Pada langkah 3, kode mendefinisikan kelas `NumberStream` yang memiliki metode `getNumbers()` yang menghasilkan stream angka acak setiap detik. Dengan menggunakan `Stream.periodic`, angka acak antara 0 dan 9 diproduksi setiap detik oleh objek `Random`. Metode ini mengembalikan stream yang dapat didengarkan oleh widget lain untuk mendapatkan data secara periodik. Sementara itu, pada langkah 7, `StreamBuilder` digunakan untuk membangun UI berdasarkan data yang diterima dari stream tersebut. `StreamBuilder` mendengarkan stream yang didefinisikan di langkah 3, dan setiap kali data baru diterima, builder akan dipanggil untuk memperbarui tampilan UI. Jika ada data, angka acak ditampilkan dengan ukuran font besar, dan jika terjadi error, pesan error akan dicetak ke konsol. Jika data belum tersedia, tampilan kosong akan ditampilkan.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.  
    ![](image-6.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 12".



# Praktikum 7  
## Langkah 1  
![alt text](image.png)
## Langkah 2
![alt text](image-1.png)
## Langkah 3  
![alt text](image-2.png)
## Langkah 4
![alt text](image-3.png)
## Langkah 5
![alt text](image-4.png)
## Langkah 6
![alt text](image-5.png)
## Langkah 7  
![alt text](image-6.png)
## Langkah 8
![alt text](image-7.png)
## Langkah 9
![alt text](image-8.png)
## Langkah 10
![alt text](image-9.png)
## Langkah 11
![alt text](image-10.png)
## Langkah 12
![alt text](image-11.png)
## Langkah 13
![alt text](image-12.png)
### Soal 13
- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
    Praktikum ini bertujuan untuk memahami dan mengimplementasikan pola arsitektur BLoC (Business Logic Component) dalam Flutter, yang memisahkan logika bisnis dari antarmuka pengguna (UI) menggunakan *stream*. Logika bisnis dikelola di kelas `RandomNumberBloc`, di mana *StreamController* menerima *event* melalui `generateRandom` untuk menghasilkan angka acak dan mengirimkannya ke *stream* `randomNumber`. UI, yang dikelola oleh widget `RandomScreen`, menggunakan `StreamBuilder` untuk berlangganan ke *stream* tersebut, sehingga setiap data baru secara otomatis memperbarui tampilan. Tombol di aplikasi memicu *event* melalui *sink*, memanfaatkan pendekatan berbasis *event-driven*. Pola ini mendukung pemisahan logika dan UI, meningkatkan reusabilitas, testabilitas, dan skalabilitas aplikasi.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
    ![](image-12.gif)
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 13".