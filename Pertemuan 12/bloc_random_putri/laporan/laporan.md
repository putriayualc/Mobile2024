Nama : Putri Ayu Aliciawati  
Kelas : TI-3C  
NIM : 2241720132  

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