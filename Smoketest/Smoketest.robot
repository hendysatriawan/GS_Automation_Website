*** Setting ***

Library    SeleniumLibrary

Resource    ../Resource/Capability_Resource.robot
Resource    ../Resource/Register_Resource.robot
Resource    ../Resource/Login_Resource.robot
Resource    ../Resource/Home_Resource.robot
Resource    ../Resource/Artikel_Resource.robot
Resource    ../Resource/Direktori_Resource.robot
Resource    ../Resource/InfoKesehatan_Resource.robot
Resource    ../Resource/Forum_Resource.robot
Resource    ../Resource/Event_Resource.robot
Resource    ../Resource/Bukes_Resource.robot
Resource    ../Resource/Profile_Resource.robot
Resource    ../Resource/Tulis_Resource.robot


*** Test Cases ***
1.Register Akun Guesehat
  Buka Browser Guesehat
  Register Akun
  Close Browser

2.Forgot Password Akun Guesehat
  Buka Browser Guesehat
  Forgot Password
  Close Browser

3.Login Dengan Akun Google
  Buka Browser Guesehat
  Login Google
  Close Browser

4.Login Dengan Akun Facebook
  Buka Browser Guesehat
  Login Facebook
  Close Browser

5.Login Dengan Akun Guesehat
  Buka Browser Guesehat
  Login Akun Guesehat
  Close Browser

6.Home Puskes & Bukes
  Buka Browser Guesehat
  Cari Via Home
  Click Element    //html/body/div[3]//div[@class='close-button-search search-close-trigger']
  Pusat Kesehatan Home
  Go Back
  Buku Kesehatan Home Kehamilan
  Go Back
  Buku Kesehatan Home Hitung Kalori IMT
  Go Back
  Buku Kesehatan Home Siklus Haid
  Go Back
  Buku Kesehatan Home Tumbuh Kembang & Imunisasi
  Go Back
  Close Browser

7.Home Artikel & Direktori
  Buka Browser Guesehat
  Buka Artikel Tag Medis
  Go Back
  Buka Artikel Tag Wanita
  Go Back
  Buka Artikel Tag Sex & Love
  Go Back
  Buka Artikel Tag Lifestyle
  Go Back
  Buka Artikel Terpopuler
  Go Back
  Buka Direktori Home
  Go Back
  Close Browser

8.Home Bukes Side & Artikel Lainnya
  Buka Browser Guesehat
  Buku Kesehatan Side Kehamilan
  Go Back
  Buku Kesehatan Side Hitung Kalori IMT
  Go Back
  Buku Kesehatan Side Siklus Haid
  Go Back
  Buku Kesehatan Side Tumbuh Kembang Imunisasi
  Go Back
  Artikel Lainnya
  Close Browser

9.Home Cari Artikel via Header Icon
  Buka Browser Guesehat
  Cari Artikel via search icon
  Kembali ke Homepage
  Close Browser

10.Artikel
  Buka Browser Guesehat
  Masuk Ke Semua Artikel
  Go Back
  Masuk Ke Artikel Medis
  Go Back
  Masuk Ke Artikel Wanita
  Go Back
  Masuk Ke Artikel Sex & Love
  Go Back
  Masuk Ke Artikel Lifestyle
  Go Back
  Close Browser

11.Direktori
  Buka Browser Guesehat
  Buka List Menu Direktori
  Masuk Ke Semua Direktori
  Buka Semua Direktori Detail Via Halaman Direktori
  Go Back
  Buka Direktori Dokter Via Menu
  Buka Direktori Rumah Sakit Via Menu
  Buka Direktori Klinik Via Menu
  Buka Direktori Gym & health club Via Menu
  Buka Direktori Spa & Massage club Via Menu
  Buka Direktori Healthy Food & Beverage Via Menu
  Buka Direktori Beauty Via Menu
  Buka Direktori Lab Via Menu
  Buka Direktori Praktisi Via Menu
  Kembali ke Homepage
  Close Browser

12.Info Kesehatan
  Buka Browser Guesehat
  Buka List Menu Info Kesehatan
  Masuk Ke Semua Info Kesehatan
  Buka Semua Detail Info Kesehatan Dari Halaman Info Kesehatan
  Buka Pusat Kesehatan via Menu
  Cari Pusat Kesehatan
  Buka Penyakit via Menu
  Buka Sakit Apa Via Menu
  Buka Info Obat Via Menu
  Close Browser

13.Forum
  Buka Browser Guesehat
  Login Akun Guesehat
  Masuk Ke Forum
  Buat Forum
  Cari Forum
  Pilih Topik
  Buka View All
  Close Browser

14.Event
  Buka Browser Guesehat
  Masuk Ke Event
  Buka Event
  Close Browser

15.Buku Kesehatan
  Buka Browser Guesehat
  Login Akun Guesehat
  Masuk Ke Semua Buku Kesehatan
  Go Back
  Buka Hitung Kalori IMT
  Go Back
  Buka Siklus Haid
  Go Back
  Buka Kehamilan
  Go Back
  Buka Tumbuh Kembang
  Go Back
  Close Browser

16.Profile
  Buka Browser Guesehat
  Login Akun Guesehat
  Masuk Ke Profile Saya
  Go Back
  Masuk Ke Poin
  Go Back
  Masuk Ke Pengaturan
  Kembali Ke Homepage Dari Profile
  Masuk Ke Notifikasi
  Go Back
  Logout
Close Browser

17.Tulis Artikel
  Buka Browser Guesehat
  Login Akun Guesehat
  Lakukan Tulis Artikel
  Kembali Ke Homepage Dari Profile

18.Artikel Khusus
  Buka Browser Guesehat
  Cari Artikel Single
  Kembali ke Homepage
  Cari Artikel Single Sex & Love
  Kembali ke Homepage
  Cari Artikel Pagination
  Kembali ke Homepage
  Cari Artikel Slideshow
  Kembali ke Homepage
  Login Akun Guesehat
  Cari Artikel Counting
  Kembali ke Homepage
  Cari Artikel Survey
  Kembali ke Homepage
  Cari Artikel Trivia
  Kembali ke Homepage
  Close Browser
