# SoalShift_modul1_F05

1. Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari.
Hint: Base64, Hexdump
	Penyelesaian :
Unduh file nature.zip
Lalu masuk ke folder yang berisi file nature.zip lalu unzip file tersebut dengan mengetikkan “unzip nature.zip”
Lalu buat file soal1.sh dengan mengetikkan “nano soal1.sh” dan buat program untuk mengdekripsikan file yang ada di dalam folder nature












Lalu buka pengaturan crontab dengan mengetikkan “crontab -e”
Setting crontab agar mengdekripsi file tersebut sesuai waktu yang ditentukan
14 14 14 2 5 bash /home/justfachry/modul1/soal1.sh

2. Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv. Laporan yang diminta berupa:
a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.
b. Tentukan tiga product line yang memberikan penjualan(quantity) terbanyak pada soal poin a.
c. Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin b.
	Penyelesaian :
Pertama atur pada bash script agar mengubah inputan koma(‘,’) menjadi whitespace karena file yang diakses adalah tipe csv

Deklarasikan variabel  MAX_1 dan MAX_2 serta Country_1 dan Country_2 pada bagian BEGIN
Pada bagian if, menggunakan NR>1 agar header tidak ikut	tersimpan dan terbawa saat di print





Karena awk secara default akan mengakses tiap barisnya, maka tidak perlu looping atau sebagainya	








Setelah  awk melakukan proses diatas, maka proses akan diakhiri dengan	melakukan print negara dan quantity yang terbanyak nomor 1 dan 2
Pada soal 2b, bashscript nya sama dengan 2a. Perbedaannya script ini mencari 3 nilai quantity terbesar.


Pada soal 2b, 	karena data yang diambil adalah product line, maka data yang diakses adalah $4
Pada soal 2c, masih menggunakan script yang sama dengan script 2b, namun program mengambil data dari variabel $6 yaitu field product

3. Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut:
a. Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt
b. Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
d. Password yang dihasilkan tidak boleh sama.
	Penyelesaian :
Pertama, buatlah sebuah file bash dengan mengetikkan “nano soal3.sh”
Lalu buat sebuah variabel file yang berisikan string password sesuai dengan perintah soal


Lalu pada if menggunakan Boolean -e untuk mengecek file dengan nama password1.txt
Jika file password1.txt tidak ada maka akan dijalankan perintah else yang berisikan perintah untuk generate number sebanyak 12 char kemudian hasil itu dimasukkan ke $file$b.txt
Perintah else ini sengaja dibuat khusus untuk membuat file password1.txt, karena jika dilihat di kondisi if pertama mengecek apakah ada $file yang berisi password $b yang berisi 1 sehingga $file$b.txt berisi password1.txt
Jika file password1.txt sudah ada maka masuk kondisi if dan dilakukan loop while menggunakan Boolean -e untuk mengecek  file $file$a.txt, jika file sudah ada maka a di-increment
Saat sudah keluar dari percabangan dibuatlah random 12 char dan dimasukkan $file yang sudah dirubah di dalam perulangan 
4. Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:
a. Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki urutan ke 12+2 = 14.
b. Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya. 
c. setelah huruf z akan kembali ke huruf a
d. Backup file syslog setiap jam.
e. dan buatkan juga bash script untuk dekripsinya.
5. Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi kriteria berikut:
a. Tidak mengandung string “sudo”, tetapi mengandung string “cron”, serta buatlah pencarian stringnya tidak bersifat case sensitive, sehingga huruf kapital atau tidak, tidak menjadi masalah.
b. Jumlah field (number of field) pada baris tersebut berjumlah kurang dari 13.
c. Masukkan record tadi ke dalam file logs yang berada pada direktori /home/[user]/modul1.
d. Jalankan script tadi setiap 6 menit dari menit ke 2 hingga 30, contoh 13:02, 13:08, 13:14, dst.
	Penyelesaian :
