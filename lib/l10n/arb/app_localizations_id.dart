// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get navigationHome => 'Beranda';

  @override
  String get navigationSettings => 'Pengaturan';

  @override
  String get homeTitle => 'Apa yang akan\nkamu masak hari ini?';

  @override
  String get searchHint => 'Cari resep...';

  @override
  String get categoriesTitle => 'Kategori';

  @override
  String get viewAllButton => 'Lihat Semua';

  @override
  String get filterByCuisine => 'Filter berdasarkan masakan';

  @override
  String get noRecipesFound => 'Resep tidak ditemukan';

  @override
  String get searchDifferentKeywords => 'Coba cari dengan kata kunci lain';

  @override
  String minutesShort(Object minutes) {
    return '${minutes}m';
  }

  @override
  String get cookTime => 'Waktu memasak';

  @override
  String get servings => 'Porsi';

  @override
  String get rating => 'Rating';

  @override
  String get ingredients => 'Bahan-bahan';

  @override
  String get instructions => 'Instruksi';

  @override
  String minutesLong(Object minutes) {
    return '$minutes menit';
  }

  @override
  String hoursLong(int hours) {
    return '$hours jam';
  }

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '${hours}j ${minutes}m';
  }

  @override
  String get calories => 'kal';

  @override
  String get caloriesLong => 'kalori';

  @override
  String daysAgo(int days) {
    return '$days hari yang lalu';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours jam yang lalu';
  }

  @override
  String minutesAgo(int minutes) {
    return '$minutes menit yang lalu';
  }

  @override
  String get justNow => 'baru saja';

  @override
  String createdOn(String date) {
    return 'Dibuat pada $date';
  }

  @override
  String updatedOn(String time) {
    return 'Diperbarui $time';
  }

  @override
  String serves(int count) {
    return 'Untuk $count porsi';
  }

  @override
  String totalTime(String time) {
    return 'Total waktu: $time';
  }

  @override
  String get nutritionPerServing => 'Per porsi';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get preferencesSection => 'Preferensi';

  @override
  String get aboutSection => 'Tentang';

  @override
  String get languageSetting => 'Bahasa';

  @override
  String get languageSubtitle => 'Indonesia';

  @override
  String get notificationsSetting => 'Notifikasi';

  @override
  String get notificationsSubtitle => 'Kelola notifikasi Anda';

  @override
  String get themeSetting => 'Tema';

  @override
  String get themeSubtitle => 'Mode terang';

  @override
  String get appInfoSetting => 'Informasi Aplikasi';

  @override
  String get appInfoSubtitle => 'Versi 1.0.0';

  @override
  String get helpSetting => 'Bantuan & Dukungan';

  @override
  String get helpSubtitle => 'Dapatkan bantuan dengan aplikasi';

  @override
  String get rateSetting => 'Beri Rating Aplikasi';

  @override
  String get rateSubtitle => 'Bagikan feedback Anda';

  @override
  String get selectLanguageTitle => 'Pilih Bahasa';

  @override
  String get cancelButton => 'Batal';

  @override
  String get applyButton => 'Terapkan';

  @override
  String get englishLanguage => 'Bahasa Inggris';

  @override
  String get vietnameseLanguage => 'Bahasa Vietnam';

  @override
  String get germanLanguage => 'Bahasa Jerman';

  @override
  String get indonesianLanguage => 'Bahasa Indonesia';

  @override
  String get cuisineAll => 'Semua';

  @override
  String get cuisineVietnamese => 'Vietnam';

  @override
  String get cuisineWestern => 'Barat';

  @override
  String get cuisineIndonesian => 'Indonesia';

  @override
  String get cuisineChinese => 'Tiongkok';

  @override
  String get notificationSettingsPlaceholder =>
      'Pengaturan notifikasi akan diimplementasikan di sini!';

  @override
  String get themeOptionsPlaceholder =>
      'Opsi tema akan diimplementasikan di sini!';

  @override
  String get helpSupportPlaceholder =>
      'Bantuan & Dukungan akan diimplementasikan di sini!';

  @override
  String get ratingThankYou =>
      'Terima kasih! Fitur rating akan diimplementasikan di sini!';

  @override
  String get appName => 'Aplikasi Resep';

  @override
  String get appVersion => '1.0.0';

  @override
  String get appLegalese => '© 2025 Aplikasi Resep. Semua hak dilindungi.';

  @override
  String get appDescription =>
      'Aplikasi resep yang sederhana dan elegan dibuat dengan Flutter.';

  @override
  String get promoBanner1 => 'Masak resep terbaik\ndi rumah';

  @override
  String get promoBanner2 => 'Temukan rasa baru\nsetiap hari';

  @override
  String get promoBanner3 => 'Resep sederhana untuk\nhidup yang sibuk';

  @override
  String get promoBanner4 => 'Buat kagum tamu\ndengan kemampuan Anda';

  @override
  String get beefSteakName => 'Steak Daging Sapi';

  @override
  String get beefSteakDescription =>
      'Steak daging sapi panggang sempurna dengan bumbu herbal.';

  @override
  String get beefSteakIngredient1Quantity => '2 potong';

  @override
  String get beefSteakIngredient1Name =>
      'steak daging sapi (8oz setiap potong)';

  @override
  String get beefSteakIngredient2Quantity => '2 sdm';

  @override
  String get beefSteakIngredient2Name => 'minyak zaitun';

  @override
  String get beefSteakIngredient3Quantity => '1 sdt';

  @override
  String get beefSteakIngredient3Name => 'garam';

  @override
  String get beefSteakIngredient4Quantity => '1/2 sdt';

  @override
  String get beefSteakIngredient4Name => 'lada hitam';

  @override
  String get beefSteakStep1 =>
      'Bumbui steak dengan garam dan lada di kedua sisi.';

  @override
  String get beefSteakStep2 =>
      'Panaskan minyak zaitun di wajan besi dengan api besar.';

  @override
  String get beefSteakStep3 =>
      'Panggang steak 3-4 menit setiap sisi untuk medium-rare.';

  @override
  String get beefSteakStep4 =>
      'Tambahkan mentega, bawang putih, dan rosemary ke wajan.';

  @override
  String get beefSteakStep5 =>
      'Siram steak dengan mentega herbal untuk rasa ekstra.';

  @override
  String get beefSteakStep6 => 'Diamkan selama 5 menit sebelum disajikan.';

  @override
  String get phoBoName => 'Pho Bo';

  @override
  String get phoBoDescription => 'Sup mie daging sapi tradisional Vietnam.';

  @override
  String get phoBoIngredient1Quantity => '1 kg';

  @override
  String get phoBoIngredient1Name => 'tulang sapi';

  @override
  String get phoBoIngredient2Quantity => '400g';

  @override
  String get phoBoIngredient2Name => 'mie beras (bánh phở)';

  @override
  String get phoBoIngredient3Quantity => '3 buah';

  @override
  String get phoBoIngredient3Name => 'bunga lawang';

  @override
  String get phoBoIngredient4Quantity => '1 batang';

  @override
  String get phoBoIngredient4Name => 'kayu manis';

  @override
  String get phoBoStep1 =>
      'Panggang bawang bombay dan jahe di atas api terbuka hingga harum.';

  @override
  String get phoBoStep2 =>
      'Rebus tulang sapi dengan rempah selama 3 jam untuk membuat kaldu.';

  @override
  String get phoBoStep3 => 'Masak mie beras sesuai petunjuk kemasan.';

  @override
  String get phoBoStep4 => 'Iris daging sapi tipis untuk masak cepat.';

  @override
  String get phoBoStep5 => 'Susun mangkuk dengan mie dan daging sapi mentah.';

  @override
  String get phoBoStep6 =>
      'Tuang kaldu panas untuk memasak daging dan hiasi dengan herbal.';

  @override
  String get banhMiName => 'Banh Mi Vietnam';

  @override
  String get banhMiDescription =>
      'Roti baguette renyah dengan acar sayuran Vietnam.';

  @override
  String get banhMiIngredient1Quantity => '2 buah';

  @override
  String get banhMiIngredient1Name => 'baguette Prancis';

  @override
  String get banhMiIngredient2Quantity => '200g';

  @override
  String get banhMiIngredient2Name => 'ham Vietnam';

  @override
  String get banhMiIngredient3Quantity => '100g';

  @override
  String get banhMiIngredient3Name => 'acar wortel';

  @override
  String get banhMiIngredient4Quantity => '1/4 cangkir';

  @override
  String get banhMiIngredient4Name => 'daun ketumbar';

  @override
  String get banhMiStep1 => 'Iris baguette memanjang, korek sedikit isinya.';

  @override
  String get banhMiStep2 => 'Oles mayonnaise dan pâté di dalam.';

  @override
  String get banhMiStep3 => 'Tata dengan ham Vietnam dan timun.';

  @override
  String get banhMiStep4 => 'Tambahkan acar sayuran dan ketumbar.';

  @override
  String get banhMiStep5 => 'Bumbui dengan kecap asin dan cabai.';

  @override
  String get banhMiStep6 => 'Tekan sandwich ringan dan sajikan segar.';

  @override
  String get bunBoHueName => 'Bun Bo Hue';

  @override
  String get bunBoHueDescription => 'Sup mie daging sapi pedas dari Hue.';

  @override
  String get bunBoHueIngredient1Quantity => '400g';

  @override
  String get bunBoHueIngredient1Name => 'mie beras tebal bulat';

  @override
  String get bunBoHueIngredient2Quantity => '500g';

  @override
  String get bunBoHueIngredient2Name => 'daging sapi bagian betis';

  @override
  String get bunBoHueIngredient3Quantity => '200g';

  @override
  String get bunBoHueIngredient3Name => 'kaki babi';

  @override
  String get bunBoHueIngredient4Quantity => '3 sdm';

  @override
  String get bunBoHueIngredient4Name => 'terasi udang';

  @override
  String get bunBoHueIngredient5Quantity => '2 sdm';

  @override
  String get bunBoHueIngredient5Name => 'minyak cabai';

  @override
  String get bunBoHueStep1 =>
      'Rebus tulang sapi dan babi untuk kaldu yang kaya.';

  @override
  String get bunBoHueStep2 =>
      'Tambahkan serai, bawang bombay, dan rempah ke kaldu.';

  @override
  String get bunBoHueStep3 => 'Masak mie beras tebal hingga empuk.';

  @override
  String get bunBoHueStep4 =>
      'Iris daging sapi dan babi yang sudah matang tipis-tipis.';

  @override
  String get bunBoHueStep5 =>
      'Bumbui kaldu dengan terasi udang dan minyak cabai.';

  @override
  String get bunBoHueStep6 =>
      'Sajikan dengan herbal segar dan irisan jeruk nipis.';

  @override
  String get rendangName => 'Rendang Daging Sapi';

  @override
  String get rendangDescription =>
      'Kari daging sapi pedas masak lambat khas Indonesia.';

  @override
  String get rendangIngredient1Quantity => '800g';

  @override
  String get rendangIngredient1Name => 'daging sapi chuck, potong dadu';

  @override
  String get rendangIngredient2Quantity => '400ml';

  @override
  String get rendangIngredient2Name => 'santan';

  @override
  String get rendangIngredient3Quantity => '4 sdm';

  @override
  String get rendangIngredient3Name => 'bumbu rendang';

  @override
  String get rendangIngredient4Quantity => '3 batang';

  @override
  String get rendangIngredient4Name => 'serai';

  @override
  String get rendangStep1 =>
      'Tumis daging sapi dalam panci tebal hingga kecoklatan.';

  @override
  String get rendangStep2 => 'Tambahkan bumbu dan masak hingga harum.';

  @override
  String get rendangStep3 => 'Tuang santan dan tambahkan serai.';

  @override
  String get rendangStep4 => 'Masak dengan api kecil selama 2 jam.';

  @override
  String get rendangStep5 => 'Lanjutkan memasak hingga kuah mengental.';

  @override
  String get rendangStep6 =>
      'Aduk sering di 30 menit terakhir hingga berwarna gelap.';

  @override
  String get satayName => 'Sate Ayam';

  @override
  String get satayDescription => 'Tusuk sate ayam panggang dengan saus kacang.';

  @override
  String get satayIngredient1Quantity => '600g';

  @override
  String get satayIngredient1Name => 'paha ayam, potong dadu';

  @override
  String get satayIngredient2Quantity => '2 sdm';

  @override
  String get satayIngredient2Name => 'santan';

  @override
  String get satayIngredient3Quantity => '1 sdm';

  @override
  String get satayIngredient3Name => 'gula kelapa';

  @override
  String get satayIngredient4Quantity => '20 buah';

  @override
  String get satayIngredient4Name => 'tusuk sate bambu';

  @override
  String get satayIngredient5Quantity => '1/2 cangkir';

  @override
  String get satayIngredient5Name => 'saus kacang';

  @override
  String get satayStep1 => 'Marinasi ayam dalam santan dan bumbu.';

  @override
  String get satayStep2 =>
      'Tusuk ayam ke tusuk sate bambu yang sudah direndam.';

  @override
  String get satayStep3 => 'Panggang di atas arang hingga keemasan.';

  @override
  String get satayStep4 => 'Oles dengan sisa bumbu marinasi saat memanggang.';

  @override
  String get satayStep5 => 'Buat saus kacang dengan kacang tanah halus.';

  @override
  String get satayStep6 => 'Sajikan panas dengan saus kacang dan timun.';

  @override
  String get kungPaoChickenName => 'Ayam Kung Pao';

  @override
  String get kungPaoChickenDescription =>
      'Ayam pedas Sichuan dengan kacang tanah.';

  @override
  String get kungPaoChickenIngredient1Quantity => '500g';

  @override
  String get kungPaoChickenIngredient1Name => 'dada ayam, potong dadu';

  @override
  String get kungPaoChickenIngredient2Quantity => '1/2 cangkir';

  @override
  String get kungPaoChickenIngredient2Name => 'kacang tanah sangrai';

  @override
  String get kungPaoChickenIngredient3Quantity => '8-10 buah';

  @override
  String get kungPaoChickenIngredient3Name => 'cabai kering';

  @override
  String get kungPaoChickenIngredient4Quantity => '1 sdt';

  @override
  String get kungPaoChickenIngredient4Name => 'merica Sichuan';

  @override
  String get kungPaoChickenStep1 =>
      'Marinasi potongan ayam dalam kecap asin dan arak beras.';

  @override
  String get kungPaoChickenStep2 =>
      'Panggang kacang tanah dan cabai kering hingga harum.';

  @override
  String get kungPaoChickenStep3 => 'Tumis ayam hingga keemasan.';

  @override
  String get kungPaoChickenStep4 =>
      'Tambahkan bumbu aromatik dan saus, aduk rata.';

  @override
  String get kungPaoChickenStep5 =>
      'Tambahkan kacang tanah dan campur semua bahan.';

  @override
  String get kungPaoChickenStep6 => 'Sajikan panas dengan nasi putih.';

  @override
  String get estimatedCost => 'Perkiraan biaya';

  @override
  String get costPerServing => 'Biaya per porsi';

  @override
  String get budgetFriendly => 'Ramah anggaran';

  @override
  String get moderatePrice => 'Harga sedang';

  @override
  String get premiumRecipe => 'Resep premium';

  @override
  String get priceNotAvailable => 'Harga tidak tersedia';

  @override
  String get totalIngredientsPrice => 'Total harga bahan';
}
