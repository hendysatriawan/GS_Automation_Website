*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${cari_kesehatan}   Nutrisi
${cari_penyakit}    Cedera Lutut
${abjad}    d
${cari_penyakit_by_abjad}     Difteri
${cari_obat}    Albumin
${abjad_obat}   e
${cari_obat_by_abjad}     Estrogen
*** Keywords ***
Buka List Menu Info Kesehatan
  Mouse Over    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Info Kesehatan']
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Pusat Kesehatan']   ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Penyakit']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Sakit Apa']     ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Info Obat']     ${timeout}

Masuk Ke Semua Info Kesehatan
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Info Kesehatan']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Info Kesehatan']
  # cek halaman info kesehatan
  Wait Until Element Is Visible     Xpath=//h1[contains(text(),'Semua Info Kesehatan')]   ${timeout}

Buka Semua Detail Info Kesehatan Dari Halaman Info Kesehatan
  # buka fitur pusat kesehatan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/pusat-kesehatan']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/pusat-kesehatan']
  # cek halaman pusat kesehatan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Pusat Kesehatan')]     ${timeout}
  Wait Until Element Is Visible    //input[@id='keyword']   ${timeout}
  Go Back
  # buka fitur sakit apa
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/cek-penyakit']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/cek-penyakit']
  # konfirmasi OK
  Wait Until Element Is Visible    Xpath=//h3[contains(text(),'Perhatian')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-disclaimer']//a[@href='javascript:;']
  Click Element    //div[@id='modal-disclaimer']//a[@href='javascript:;']
  # cek halaman sakit apa
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sakit Apa')]     ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Aplikasi Cek Penyakit Online')]
  Go Back
  # buka fitur penyakit
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/nama-penyakit-a-z']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/nama-penyakit-a-z']
  # cek halaman penyakit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Penyakit')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//input[@name='keyword']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//button[@class='dislist-search-button']    ${timeout}
  Go Back
  # buka fitur obat
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/info-obat']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/info-obat']
  # cek halaman obat
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Obat A to Z')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//input[@name='keyword']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//button[@class='dislist-search-button']      ${timeout}
  Go Back

Buka Pusat Kesehatan via Menu
  Buka List Menu Info Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Pusat Kesehatan']
  # cek halaman pusat kesehatan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Pusat Kesehatan')]     ${timeout}
  Wait Until Element Is Visible    //input[@id='keyword']   ${timeout}
  # Buka Alergi
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Alergi']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Alergi']//p[@class='health-centre-title']   ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Alergi']//p[@class='health-centre-title']
  # cek halaman alergi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Alergi')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka bayi & balita
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Bayi & Balita']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Bayi & Balita']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Bayi & Balita']//p[@class='health-centre-title']
  # cek halaman bayi & balita
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Bayi & Balita')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka diabetes
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Diabetes']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Diabetes']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Diabetes']//p[@class='health-centre-title']
  # cek halaman diabetes
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Diabetes')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Hipertensi
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Hipertensi']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Hipertensi']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Hipertensi']//p[@class='health-centre-title']
  # cek halaman Hipertensi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Hipertensi')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kanker
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kanker']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kanker']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kanker']//p[@class='health-centre-title']
  # cek halaman Kanker
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kanker')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kardiovaskular
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kardiovaskular']//p[@class='health-centre-tag']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kardiovaskular']//p[@class='health-centre-tag']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kardiovaskular']//p[@class='health-centre-tag']
  # cek halaman Kardiovaskular
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kardiovaskular')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kecantikan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kecantikan']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kecantikan']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kecantikan']//p[@class='health-centre-title']
  # cek halaman Kecantikan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kecantikan')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kehamilan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kehamilan']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kehamilan']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kehamilan']//p[@class='health-centre-title']
  # cek halaman Kehamilan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kesehatan Mental
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mental']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mental']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mental']//p[@class='health-centre-title']
  # cek halaman Kesehatan Mental
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kesehatan Mental')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kesehatan Mulut
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mulut']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mulut']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Mulut']//p[@class='health-centre-title']
  # cek halaman Kesehatan Mulut
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kesehatan Mulut')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kesehatan Pria
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Pria']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Pria']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Pria']//p[@class='health-centre-title']
  # cek halaman Kesehatan Pria
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kesehatan Pria')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kesehatan Wanita
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Wanita']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Wanita']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kesehatan Wanita']//p[@class='health-centre-title']
  # cek halaman Kesehatan Wanita
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kesehatan Wanita')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Kulit
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kulit']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kulit']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Kulit']//p[@class='health-centre-title']
  # cek halaman Kulit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kulit')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Mata
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Mata']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Mata']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Mata']//p[@class='health-centre-title']
  # cek halaman Mata
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Mata')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Nutrisi
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Nutrisi']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Nutrisi']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Nutrisi']//p[@class='health-centre-title']
  # cek halaman Nutrisi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Nutrisi')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Olahraga
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Olahraga']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Olahraga']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Olahraga']//p[@class='health-centre-title']
  # cek halaman Olahraga
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Olahraga')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Pencernaan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Pencernaan']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Pencernaan']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Pencernaan']//p[@class='health-centre-title']
  # cek halaman Pencernaan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Pencernaan')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Sex & Relationship
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Sex & Relationship']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Sex & Relationship']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Sex & Relationship']//p[@class='health-centre-title']
  # cek halaman Sex & Relationship
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sex & Relationship')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  # buka Turun Berat Badan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@title='Turun Berat Badan']//p[@class='health-centre-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@title='Turun Berat Badan']//p[@class='health-centre-title']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@title='Turun Berat Badan']//p[@class='health-centre-title']
  # cek halaman Turun Berat Badam
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Turun Berat Badan')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back

Cari Pusat Kesehatan
  Scroll Element Into View    //input[@id='keyword']
  Wait Until Element Is Visible    //input[@id='keyword']   ${timeout}
  Input Text    //input[@id='keyword']    ${cari_kesehatan}
  Press Keys    //input[@id='keyword']    RETURN
  # masuk ke pusat kesehatan nutrisi
  Wait Until Element Is Visible    //div[@id='content']/section[@class='block']/div[@class='container']//a[@title='${cari_kesehatan}']//p[@class='health-centre-title']   ${timeout}
  Click Element    //div[@id='content']/section[@class='block']/div[@class='container']//a[@title='${cari_kesehatan}']//p[@class='health-centre-title']
  # cek halaman nutrisi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_kesehatan}')]    ${timeout}
  Scroll Element Into View    Xpath=//a[contains(text(),'Lainnya')]
  Go Back
  Go Back

Buka Penyakit via Menu
  Buka List Menu Info Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Penyakit']
  # cek halaman penyakit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Penyakit')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//input[@name='keyword']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//button[@class='dislist-search-button']    ${timeout}
  # cari nama penyakit
  Input Text    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//input[@name='keyword']    ${cari_penyakit}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//button[@class='dislist-search-button']    ${timeout}
  Click Element    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//button[@class='dislist-search-button']
  # buka yang dicari
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_penyakit}')]   ${timeout}
  Sleep    2s
  Click Element    Xpath=//a[contains(text(),'${cari_penyakit}')]
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'${cari_penyakit}')]    ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]
  # cari penyakit by abjad
  Buka List Menu Info Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Penyakit']
  # cek halaman penyakit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Penyakit')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//input[@name='keyword']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/nama-penyakit-a-z']//button[@class='dislist-search-button']    ${timeout}
  # piih abjad
  Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//ul[@class='dislist-filter']//a[@href='https://www.guesehat.com/nama-penyakit-a-z?prefix=${abjad}']   ${timeout}
  Click Element    //div[@id='content']/section[@class='dislist-head']//ul[@class='dislist-filter']//a[@href='https://www.guesehat.com/nama-penyakit-a-z?prefix=${abjad}']
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_penyakit_by_abjad}')]      ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_penyakit_by_abjad}')]
  # cek halaman detail
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'${cari_penyakit_by_abjad}')]   ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Buka Sakit Apa Via Menu
  Buka List Menu Info Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Sakit Apa']
  # cek halaman sakit apa
  # konfirmasi OK
  Wait Until Element Is Visible    Xpath=//h3[contains(text(),'Perhatian')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-disclaimer']//a[@href='javascript:;']
  Click Element    //div[@id='modal-disclaimer']//a[@href='javascript:;']
  # cek halaman sakit apa
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sakit Apa')]     ${timeout}
  Wait Until Element Is Visible    //input[@id='conditionkeyword']    ${timeout}
  Wait Until Element Is Visible    //div[@id='map-view-button']     ${timeout}

Buka Info Obat Via Menu
   Buka List Menu Info Kesehatan
   Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Info Obat']
   # cek halaman Info Obat
   Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Obat A to Z')]    ${timeout}
   Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//input[@name='keyword']    ${timeout}
   Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//button[@class='dislist-search-button']    ${timeout}
   # cari obat
   Input Text    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//input[@name='keyword']    ${cari_obat}
   Click Element    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//button[@class='dislist-search-button']
   # buka yang dicari
   Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_obat}')]   ${timeout}
   Sleep    2s
   Click Element    Xpath=//a[contains(text(),'${cari_obat}')]
   Wait Until Element Is Visible    Xpath=//h2[contains(text(),'${cari_obat}')]    ${timeout}
   Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]
   # cari obat by abjad
   Buka List Menu Info Kesehatan
   Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[3]/div/ul[@class='submenu-list']//a[@title='Info Obat']
   # cek halaman obat
   Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Obat A to Z')]    ${timeout}
   Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//input[@name='keyword']    ${timeout}
   Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//form[@action='https://www.guesehat.com/info-obat']//button[@class='dislist-search-button']    ${timeout}
   # piih abjad
   Wait Until Element Is Visible    //div[@id='content']/section[@class='dislist-head']//ul[@class='dislist-filter']//a[@href='https://www.guesehat.com/info-obat?prefix=${abjad_obat}']   ${timeout}
   Click Element    //div[@id='content']/section[@class='dislist-head']//ul[@class='dislist-filter']//a[@href='https://www.guesehat.com/info-obat?prefix=${abjad_obat}']
   Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_obat_by_abjad}')]      ${timeout}
   Click Element    Xpath=//a[contains(text(),'${cari_obat_by_abjad}')]
   # cek halaman detail
   Wait Until Element Is Visible    Xpath=//h2[contains(text(),'${cari_obat_by_abjad}')]   ${timeout}
   Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]
