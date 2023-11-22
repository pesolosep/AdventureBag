
### Nama    : Muhammad Faishal Adly Nelwan
### NPM     : 2206030754
### Kelas   : PBP C

# Adventure Bag

<details>
<summary><b>Tugas 7</b></summary>

## Perbedaan antara Stateless dan Stateful Widget dalam Flutter

Dalam pengembangan aplikasi Flutter, stateless widget dan stateful widget memiliki perbedaan utama dalam cara mereka mengelola perubahan data dan tampilan dalam aplikasi. Perbedaan utama antara keduanya adalah sebagai berikut:

### Stateless Widget

Widget stateless adalah jenis widget yang tidak memiliki keadaan internal yang dapat berubah setelah dibuat.

Mereka ideal digunakan untuk bagian tampilan yang tidak memerlukan perubahan atau tidak bergantung pada data yang mungkin berubah.

Dengan menggunakan stateless widget, Anda tidak perlu secara eksplisit memerintahkan Flutter untuk merender ulang tampilan saat ada perubahan data; proses ini akan dilakukan otomatis oleh Flutter sesuai kebutuhan.

Contoh penggunaan stateless widget mencakup ikon, teks, gambar, dan elemen antarmuka pengguna (UI) yang bersifat statis.

### Stateful Widget

Widget stateful, sebaliknya, memiliki keadaan internal (state) yang dapat berubah selama siklus hidupnya.

Mereka sangat berguna untuk bagian tampilan yang perlu merespons perubahan data atau input dari pengguna.

Ketika terjadi perubahan data atau input yang mempengaruhi tampilan, Anda harus memanggil metode setState untuk memicu pembaruan tampilan widget. Langkah ini akan memaksa Flutter untuk merender ulang widget dengan keadaan yang baru.

Contoh penggunaan stateful widget mencakup formulir, daftar item yang dapat di-scroll, dan elemen antarmuka pengguna yang memerlukan pembaruan dinamis.

#### Perbedaan utama antara keduanya terletak pada cara mereka mengelola perubahan tampilan dan keadaan dalam aplikasi Flutter. Stateless widget cocok untuk elemen tampilan yang bersifat statis, sementara stateful widget cocok untuk elemen tampilan yang memerlukan perubahan dan interaktivitas.  


## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing!
| Widget               | Fungsi                                                                                                  |
|----------------------|---------------------------------------------------------------------------------------------------------|
| Material             | Memastikan aplikasi mengikuti desain material yang konsisten pada platform Android.                    |
| Scaffold             | Menyediakan kerangka dasar aplikasi dengan AppBar, body, dan floating action button.                    |
| SingleChildScrollView   | Memungkinkan konten discrollable jika melebihi ukuran layar untuk menghindari masalah overflow.          |
| Padding              | Menambahkan ruang di sekeliling widget untuk memperbaiki tata letak dan penampilan.                     |
| Column               | Menata widget-child secara vertikal dalam satu kolom.                                                   |
| GridView.count       | Menampilkan children dalam bentuk grid dengan jumlah baris dan kolom yang dapat disesuaikan.             |
| InkWell              | Membuat area responsif terhadap sentuhan, sering digunakan untuk menangani interaksi ketika disentuh.    |
| Text                 | Menampilkan teks di antarmuka pengguna.                                                                   |
| Icon                 | Menampilkan ikon yang membantu membuat antarmuka pengguna lebih informatif dan menarik.                  |
| SnackBar             | Menampilkan pesan singkat di bagian bawah layar, umumnya untuk memberikan informasi atau feedback.       |

Setiap widget memiliki perannya masing-masing dalam membangun tampilan dan fungsionalitas aplikasi Flutter. Tabel ini memberikan gambaran singkat tentang penggunaan dan fungsi setiap widget yang digunakan dalam tugas yang diberikan.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

### Langkah 1: Membuat Proyek Flutter Baru

1. Buka Terminal atau Command Prompt.
2. Masuk ke direktori di mana proyek Flutter akan disimpan.
3. Generate proyek Flutter baru dengan perintah `flutter create adventure_bag`.
4. Masuk ke dalam direktori proyek tersebut dengan perintah `cd adventure_bag`.

### Menjalankan Proyek

- Untuk menjalankan proyek, gunakan perintah `flutter run`.
- Untuk pengguna macOS, ada beberapa opsi untuk menjalankan aplikasi Flutter: menggunakan emulator di Android Studio atau menggunakan Google Chrome.
- Untuk menjalankan aplikasi di Google Chrome, jalankan perintah `flutter config --enable-web` dan kemudian `flutter run -d chrome`.

### Git Initialization dan Push ke GitHub

1. Lakukan `git init` pada root folder proyek.
2. Tambahkan, commit, dan push proyek ke repositori baru di GitHub dengan perintah sesuai langkah-langkah GitHub.
3. Nama repositori bisa disesuaikan dengan `adventure_bag`.

### Merapikan Struktur Proyek

1. Buat file baru bernama `inventory.dart` dalam direktori `adventure_bag/lib`.
2. Pindahkan kode dari file `main.dart` ke file `inventory.dart`.
3. Tambahkan `import 'package:adventure_bag/inventory.dart';` di awal file `main.dart` untuk memperbaiki kesalahan.
4. Pastikan aplikasi tetap berjalan dengan baik.

### Membuat Widget Sederhana pada Flutter

1. Buka file `main.dart`.
2. Ubah warna tema aplikasi menjadi indigo dengan kode `colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),`.
3. Ubah sifat widget halaman menjadi stateless di `main.dart` dan `inventory.dart`.
4. Tambahkan daftar item yang dijual dalam kelas `BagItem`.
5. Tambahkan kode untuk menampilkan teks dan kartu produk.
6. Buat widget stateless baru `BagCard` untuk menampilkan kartu produk.
7. Ubah warna tombol berdasarkan variabel warna dalam kelas `BagItem`.
8. Jalankan proyek dan pastikan bahwa tampilan sudah menampilkan perubahan.

### Untuk mengganti warna tombol pada setiap item dalam daftar, kita perlu menyesuaikan tata letak widget dan menerapkan properti `color` dari `BagItem` ke dalam kode pembuatan widget.
1. **Tetapkan Warna pada BagItem:**
    ```dart
    final List<BagItem> items = [
        BagItem("Inventory", Icons.checklist, Colors.brown),
        BagItem("Add an Item", Icons.add_Bagping_cart, Colors.green),
        BagItem("Continue Your Journey", Icons.logout, Colors.red),
    ];
    ```

2. **Definisikan Warna pada BagItem:**
    ```dart
    class BagItem {
      final String name;
      final IconData icon;
      final Color color;

      BagItem(this.name, this.icon, this.color);
    }
    ```

3. **Perbarui Bagian Tampilan Widget untuk Menggunakan Warna:**
    ```dart
    class BagCard extends StatelessWidget {
      final BagItem item;

      const BagCard(this.item); // Constructor

      @override
      Widget build(BuildContext context) {
        return Material(
          color: item.color, // Gunakan warna dari BagItem
          child: InkWell(
            // Area responsif terhadap sentuhan
            onTap: () {
              // Tampilkan SnackBar saat tombol diklik
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!"),
                ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      color: Colors.white, // Sesuaikan jika diperlukan
                      size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
    ```
   </details>

   <details>
<summary><b>Tugas 8</b></summary>

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

🔹 __Navigator.push()__ menambahkan _route_ baru ditambahkan ke dalam _stack_, sehingga _stack_ akan berisi _route_ sebelumnya dan _route_ yang baru ditambahkan.

```
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const BagFormPage(),
  )
);
```
🔹 __Navigator.pushReplacement()__ akan menggantikan _route_ sebelumnya dalam _stack_ dengan _route_ baru yang ditentukan.

```
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => MyHomePage(),
  )
);
```

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Berikut adalah beberapa _widget layout_ yang tersedia di Flutter:

- `Align` : Widget yang mengatur posisi child di dalam dirinya dan opsional mengatur ukuran widget berdasarkan ukuran child.

- `Center` : Blok alignment yang menempatkan child di tengah-tengah dirinya.

- `Container` : Widget yang menggabungkan widget painting, positioning, dan sizing yang umum.

- `Expanded` : Widget yang memperluas child dari Row, Column, atau Flex.

- `Padding` : Widget yang memasukkan child-nya dengan padding yang diberikan.

- `Column` : Widget yang mengatur daftar child widget secara vertikal.

- `GridView` : Daftar grid terdiri dari pola sel yang diatur dalam layout vertikal dan horizontal.

- `ListView` : Daftar scrollable dan linear dari widget.

- `Row` : Widget yang mengatur daftar child widget secara horizontal.

- `Stack` : Menumpuk beberapa child dengan cara yang sederhana

- `Table` : Menampilkan child widget dalam baris dan kolom.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Pada tugas ini saya menggunakan `TextFormField` karena dapat memvalidasi input  sebelum menyimpan datanya. `TextFormField` juga memungkinkan untuk menampilkan pesan kesalahan jika input pengguna tidak valid.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?

_Clean Architecture_ adalah sebuah konsep arsitektur yang memisahkan kode menjadi beberapa lapisan yang berbeda untuk memudahkan pengembangan, pemeliharaan, dan pengujian aplikasi. Pada umumnya, arsitektur ini terdiri dari tiga layer utama: domain, data, dan presentation.

- _Domain layer_ berisi bisnis logika dan aturan aplikasi. Lapisan ini tidak bergantung pada lapisan lainnya, sehingga dapat digunakan kembali pada aplikasi lain.
- _Data layer_ bertanggung jawab untuk mengambil dan menyimpan data dari berbagai sumber, seperti database, API, atau penyimpanan lokal. Lapisan ini juga bertanggung jawab untuk memetakan data ke dalam model domain.
- _Presentation layer_ adalah lapisan yang berhubungan langsung dengan pengguna. Lapisan ini bertanggung jawab untuk menampilkan data ke pengguna dan menerima input dari pengguna. Pada proyek ini terdapat di folder _screens_.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

__Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru.__

Halaman formulir dapat dilihat pada file `Bag_form.dart`. Pada halaman ini saya menggunakan widget `Form` yang menggunakan `TextFormField` untuk masing-masing input. Tiap elemen input validator sehingga tipe data input sesuai dan tidak ada input kosong. Terakhir saya tambahkan tombol save seperti berikut

```
child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(Colors.purple.shade900),
  ),
  onPressed: () {
    // Menunjukkan pop-up -> checklist 3
  },
  child: const Text(
    "Save",
    style: TextStyle(color: Colors.white),
  ),
),
```

<br>

__Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.__

Sebelum itu saya memindahkan elemen _card_ pada file terpisah yaitu `Bag_card.dart`. Pada file ini saya tambahkan kode berikut

```dart
onTap: () {
  // Memunculkan SnackBar ketika diklik
  ...

  if (item.name == "Add an Item") {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BagFormPage(),
      )
    );
  }
},
```

Sehingga saat card ditekan pengguna akan diarahkan ke halaman form.

<br>

__Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.__

Pada potongan kode di poin checklist pertama ditambahkan kode berikut

```dart
onPressed: () {
  if (_formKey.currentState!.validate()) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Item berhasil tersimpan'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text('Name: $_name'),
                Text('Amount: $_amount'),
                Text('Description: $_description'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  _formKey.currentState!.reset();
  }
},
```

Jika input pengguna valid, maka akan muncul pop-up yang berisi data yang baru saja di-input.

<br>

__Membuat sebuah drawer pada aplikasi.__

Pertama saya buat drawer seperti berikut.

```dart
import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(),
          ListTile(),
        ],
      ),
    );
  }
}
```

Lalu ditambahkan header yang berisi keterangan aplikasi

```dart
decoration: BoxDecoration(
  color: Color.fromRGBO(74, 20, 140, 1),
),
child: Column(
  children: [
    Text(
      'Adventure Bag',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    Padding(padding: EdgeInsets.all(16)),
    Text("Keep track of your Bag here!",
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
  ],
),
```

Dan routing untuk halaman utama dan halaman formulir.

```dart
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Main Page'),
  // Bagian redirection ke MyHomePage
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      )
    );
  },
),
ListTile(
  leading: const Icon(Icons.add_circle),
  title: const Text('Add an Item'),
  // Bagian redirection ke BagFormPage
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BagFormPage(),
      )
    );
  },
),
```
</details>

<details>
<summary><b>Tugas 9</b></summary>

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Mengambil data JSON tanpa model berarti kita akan langsung memproses data JSON tersebut sebagai struktur data dasar yang disediakan oleh bahasa pemrograman kita.

Keuntungan Menggunakan Pendekatan Tanpa Model:
- Fleksibilitas: Mudah untuk bekerja dengan data yang strukturnya tidak tetap atau sering berubah.
- Pengembangan yang Lebih Cepat: Mengurangi kebutuhan untuk merancang dan mengimplementasikan model terlebih dahulu.
- Sederhana: Cocok untuk skenario sederhana di mana struktur data tidak terlalu kompleks atau tidak memerlukan validasi khusus.<br>
Keuntungan Menggunakan Model:
- Validasi Data: Model membantu dalam validasi data dan memastikan bahwa data yang diterima sesuai dengan yang diharapkan.
- Konsistensi: Memudahkan pemeliharaan kode, terutama dalam proyek besar karena semua interaksi data mengikuti struktur yang telah ditentukan.
- Pemeliharaan Kode: Memudahkan pemeliharaan dan perubahan kode di masa depan, karena perubahan pada struktur data hanya perlu dilakukan di satu tempat (model).
- Dokumentasi: Model berfungsi sebagai bentuk dokumentasi, memudahkan developer lain untuk memahami struktur data.
<br>
Lebih disarankan untuk kita membuat model terlebih dahulu supaya JSON yang hendak kita olah sudah benar-benar mengikuti syntax pemrograman.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi utama dari `CookieRequest` adalah untuk menangani cookie saat melakukan HTTP request. Ini meliputi pengiriman cookie saat HTTP request ke server dan menyimpan cookie yang diterima dari server. Hal ini penting untuk memastikan bahwa sesi pengguna tetap berjalan dengan konsisten konteksnya saat pengguna menggunakan aplikasi, misalnya saat autentikasi atau saat mengatur preferensi pengguna yang disimpan.

Membagikan instance `CookieRequest` ke semua komponen di aplikasi Flutter penting karena ini memastikan bahwa manajemen cookie dilakukan secara konsisten di seluruh aplikasi. Dengan cara ini, semua request yang dibuat dari berbagai bagian aplikasi akan memiliki akses ke informasi cookie yang sama, memastikan bahwa pengguna tetap terautentikasi dan preferensi mereka tetap diterapkan di seluruh aplikasi. Ini juga membantu dalam menyederhanakan arsitektur kode dengan memusatkan logic dari manajemen cookie sehingga mengurangi duplikasi dan potensi kesalahan.


## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
1. GET Request dikirimkan ke url supaya kita mendapatkan JSON yang berisi list of product.
```   var url = Uri.parse('http://127.0.0.1:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );
```

2. Mengubah http respons body agar sesuai dengan bentuk JSON
```
var data = jsonDecode(utf8.decode(response.bodyBytes)); 
```
3. Dari data JSON tersebut, objek product dibuat dan disimpan pada list_product.
```
List<Product> list_product = [];
    for (var d in data) {
      if (d != null) {
        list_product.add(Product.fromJson(d));
      }
    }
    return list_product;
```
4. Seluruh item yang sudah ada ditampilkan dengan ListView.builder() dan masing-masingnya ditampilkan dalam bentuk Card. Jika card suatu product diklik, maka akan pergi ke halaman details
```
 return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var barang = snapshot.data![index].fields; // Assuming fields has the necessary properties
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailItemPage(fields: barang),
                        ),
                      );
                    },
```

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Membangun objek request dengan CookieRequest lalu meminta input username dan password.
```
    final request = context.watch<CookieRequest>();
```
```
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
```
```
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
```
2. Melakukan login request supaya bisa  mengirim data username dan password ke url tujuan.
```
                final response =
                    await request.login("http://127.0.0.1:8000/auth/login/", {
                  'username': username,
                  'password': password,
                });
```
3. App akan memberikan respons sesuai login request. Kalau berhasil, maka user akan menuju halaman MyHomePage(). Sedangkan, kalau gagal akan muncul AlertDialog().

```
               if (request.loggedIn) {
                  String message = response['message'];
                  String uname = response['username'];
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("$message Selamat datang, $uname.")));
                } else {
                  // ignore: use_build_context_synchronously
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Login Gagal'),
                      content: Text(response['message']),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
```
## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
1. `LeftDrawer`: Widget kustom (didefinisikan di luar kode yang diberikan) yang mungkin digunakan untuk menampilkan drawer navigasi di sisi kiri.
2. `FutureBuilder`: Widget ini digunakan untuk membangun widget berdasarkan hasil terbaru dari Future, seperti menampilkan data yang diambil dari internet.
3. `Center`: Widget ini digunakan untuk menempatkan child widgetnya di tengah-tengah parent widget.
4. `CircularProgressIndicator`: Widget ini menampilkan indikator loading yang berputar.
5. `ListView.builder`: Widget ini digunakan untuk membuat daftar yang scrollable, dimana item-itemnya dibangun secara dinamis.
6. `SizedBox`: Widget ini digunakan untuk memberikan jarak antar widget.
7. `ElevatedButton`: Widget ini menampilkan tombol yang menonjol, biasanya digunakan untuk aksi utama dalam sebuah form.
8. `Navigator`: Digunakan untuk navigasi antar halaman dalam aplikasi.
9. `AlertDialog`: Widget ini menampilkan dialog untuk memberi informasi atau konfirmasi kepada pengguna.
10. `TextButton`: Widget ini menampilkan tombol dengan teks, biasanya digunakan dalam dialog.
11. `Provider`: Paket ini digunakan untuk manajemen state dan akses data melintasi widget.
12. `CookieRequest `(dari `pbp_django_auth`): Komponen ini digunakan untuk mengelola autentikasi dan permintaan HTTP dengan cookie, khususnya dalam konteks login.
Sisanya sama seperti minggu lalu.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Membangun app baru di django project bernama authentication
2. Melakukan instalasi library corsheaders dan mengaturnya pada settings di django project
3. Membuat method untuk melakukan login pada views.py authentication
4. Membuat method untuk melakukan logout pada views.py authentication
5. Membangun method create_product_flutter pada views.py main
6. Mengatur path untuk semua method yang baru dibangun
7. Menginstal semua package baru yang akan dibutuhkan pada tugas minggu ini seperti provider, pbp_django_auth, dan http
8. Membuat login.dart dan mengatur main.dart supaya pertama kali masuk ke LoginPage()
9. Membangun product.dart yang merupakan model
10. Mengizinkan flutter app bisa mengakses internet
11. Membangun list_product.dart dengan fetching data dari web yang sudah dideploy
12. Mengatur ulang left drawer
13. Menghubungkan form dengan CookieRequest
14. Mengatur ulang pengisian form dengan jsonEncode.
15. Mengatur ulang card.dart dengan cookierequest agar bisa logout dengan method yang sudah dibangun sebelumnya
16. Melakukan add-commit-push ke github.




</details>