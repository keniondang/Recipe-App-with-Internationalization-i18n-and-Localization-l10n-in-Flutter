// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get navigationHome => 'Trang chủ';

  @override
  String get navigationSettings => 'Cài đặt';

  @override
  String get homeTitle => 'Hôm nay bạn\nsẽ nấu gì?';

  @override
  String get searchHint => 'Tìm kiếm công thức...';

  @override
  String get categoriesTitle => 'Danh mục';

  @override
  String get viewAllButton => 'Xem tất cả';

  @override
  String get filterByCuisine => 'Lọc theo ẩm thực';

  @override
  String get noRecipesFound => 'Không tìm thấy công thức';

  @override
  String get searchDifferentKeywords => 'Thử tìm kiếm với từ khóa khác';

  @override
  String minutesShort(Object minutes) {
    return '${minutes}p';
  }

  @override
  String get cookTime => 'Thời gian nấu';

  @override
  String get servings => 'Khẩu phần';

  @override
  String get rating => 'Đánh giá';

  @override
  String get ingredients => 'Nguyên liệu';

  @override
  String get instructions => 'Hướng dẫn';

  @override
  String minutesLong(Object minutes) {
    return '$minutes phút';
  }

  @override
  String hoursLong(int hours) {
    return '$hours giờ';
  }

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '${hours}g ${minutes}p';
  }

  @override
  String get calories => 'cal';

  @override
  String get caloriesLong => 'calo';

  @override
  String daysAgo(int days) {
    return '$days ngày trước';
  }

  @override
  String hoursAgo(int hours) {
    return '$hours giờ trước';
  }

  @override
  String minutesAgo(int minutes) {
    return '$minutes phút trước';
  }

  @override
  String get justNow => 'vừa xong';

  @override
  String createdOn(String date) {
    return 'Tạo ngày $date';
  }

  @override
  String updatedOn(String time) {
    return 'Cập nhật $time';
  }

  @override
  String serves(int count) {
    return 'Cho $count người';
  }

  @override
  String totalTime(String time) {
    return 'Tổng thời gian: $time';
  }

  @override
  String get nutritionPerServing => 'Mỗi khẩu phần';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get preferencesSection => 'Tùy chọn';

  @override
  String get aboutSection => 'Thông tin';

  @override
  String get languageSetting => 'Ngôn ngữ';

  @override
  String get languageSubtitle => 'Tiếng Việt';

  @override
  String get notificationsSetting => 'Thông báo';

  @override
  String get notificationsSubtitle => 'Quản lý thông báo';

  @override
  String get themeSetting => 'Giao diện';

  @override
  String get themeSubtitle => 'Chế độ sáng';

  @override
  String get appInfoSetting => 'Thông tin ứng dụng';

  @override
  String get appInfoSubtitle => 'Phiên bản 1.0.0';

  @override
  String get helpSetting => 'Trợ giúp & Hỗ trợ';

  @override
  String get helpSubtitle => 'Nhận trợ giúp về ứng dụng';

  @override
  String get rateSetting => 'Đánh giá ứng dụng';

  @override
  String get rateSubtitle => 'Chia sẻ phản hồi của bạn';

  @override
  String get selectLanguageTitle => 'Chọn ngôn ngữ';

  @override
  String get cancelButton => 'Hủy';

  @override
  String get applyButton => 'Áp dụng';

  @override
  String get englishLanguage => 'Tiếng Anh';

  @override
  String get vietnameseLanguage => 'Tiếng Việt';

  @override
  String get germanLanguage => 'Tiếng Đức';

  @override
  String get indonesianLanguage => 'Tiếng Indonesia';

  @override
  String get cuisineAll => 'Tất cả';

  @override
  String get cuisineVietnamese => 'Việt Nam';

  @override
  String get cuisineWestern => 'Phương Tây';

  @override
  String get cuisineIndonesian => 'Indonesia';

  @override
  String get cuisineChinese => 'Trung Quốc';

  @override
  String get notificationSettingsPlaceholder =>
      'Cài đặt thông báo sẽ được triển khai ở đây!';

  @override
  String get themeOptionsPlaceholder =>
      'Tùy chọn giao diện sẽ được triển khai ở đây!';

  @override
  String get helpSupportPlaceholder =>
      'Trợ giúp & Hỗ trợ sẽ được triển khai ở đây!';

  @override
  String get ratingThankYou =>
      'Cảm ơn! Tính năng đánh giá sẽ được triển khai ở đây!';

  @override
  String get appName => 'Ứng dụng Công thức';

  @override
  String get appVersion => '1.0.0';

  @override
  String get appLegalese =>
      '© 2025 Ứng dụng Công thức. Tất cả quyền được bảo lưu.';

  @override
  String get appDescription =>
      'Ứng dụng công thức đơn giản và tinh tế được xây dựng bằng Flutter.';

  @override
  String get promoBanner1 => 'Nấu những\ncông thức tuyệt nhất tại nhà';

  @override
  String get promoBanner2 => 'Khám phá hương vị\nmới mỗi ngày';

  @override
  String get promoBanner3 => 'Công thức đơn giản cho\ncuộc sống bận rộn';

  @override
  String get promoBanner4 => 'Gây ấn tượng với khách\nbằng kỹ năng của bạn';

  @override
  String get beefSteakName => 'Bò Bít Tết';

  @override
  String get beefSteakDescription => 'Bò bít tết nướng hoàn hảo với thảo mộc.';

  @override
  String get beefSteakIngredient1Quantity => '2 miếng';

  @override
  String get beefSteakIngredient1Name => 'bò bít tết (8oz mỗi miếng)';

  @override
  String get beefSteakIngredient2Quantity => '2 thìa canh';

  @override
  String get beefSteakIngredient2Name => 'dầu ô liu';

  @override
  String get beefSteakIngredient3Quantity => '1 thìa cà phê';

  @override
  String get beefSteakIngredient3Name => 'muối';

  @override
  String get beefSteakIngredient4Quantity => '1/2 thìa cà phê';

  @override
  String get beefSteakIngredient4Name => 'tiêu đen';

  @override
  String get beefSteakStep1 => 'Ướp bò với muối và tiêu ở cả hai mặt.';

  @override
  String get beefSteakStep2 => 'Đun nóng dầu ô liu trong chảo gang ở lửa lớn.';

  @override
  String get beefSteakStep3 => 'Áp chảo bò 3-4 phút mỗi mặt để được vừa chín.';

  @override
  String get beefSteakStep4 => 'Thêm bơ, tỏi và hương thảo vào chảo.';

  @override
  String get beefSteakStep5 => 'Tưới bò với bơ thảo mộc để thêm hương vị.';

  @override
  String get beefSteakStep6 => 'Để nghỉ 5 phút trước khi dọn ra.';

  @override
  String get phoBoName => 'Phở Bò';

  @override
  String get phoBoDescription => 'Phở bò truyền thống Việt Nam.';

  @override
  String get phoBoIngredient1Quantity => '1 kg';

  @override
  String get phoBoIngredient1Name => 'xương bò';

  @override
  String get phoBoIngredient2Quantity => '400g';

  @override
  String get phoBoIngredient2Name => 'bánh phở';

  @override
  String get phoBoIngredient3Quantity => '3 cái';

  @override
  String get phoBoIngredient3Name => 'hoa hồi';

  @override
  String get phoBoIngredient4Quantity => '1 thanh';

  @override
  String get phoBoIngredient4Name => 'quế';

  @override
  String get phoBoStep1 => 'Nướng hành tây và gừng trên lửa cho thơm.';

  @override
  String get phoBoStep2 =>
      'Ninh xương bò với gia vị trong 3 tiếng để có nước dùng.';

  @override
  String get phoBoStep3 => 'Luộc bánh phở theo hướng dẫn trên bao bì.';

  @override
  String get phoBoStep4 => 'Thái thịt bò mỏng để nấu nhanh.';

  @override
  String get phoBoStep5 => 'Xếp bánh phở và thịt bò sống vào tô.';

  @override
  String get phoBoStep6 =>
      'Đổ nước dùng nóng lên để chín thịt và trang trí với rau thơm.';

  @override
  String get banhMiName => 'Bánh Mì Việt Nam';

  @override
  String get banhMiDescription => 'Bánh mì giòn với rau củ chua Việt Nam.';

  @override
  String get banhMiIngredient1Quantity => '2 ổ';

  @override
  String get banhMiIngredient1Name => 'bánh mì Pháp';

  @override
  String get banhMiIngredient2Quantity => '200g';

  @override
  String get banhMiIngredient2Name => 'chả lụa';

  @override
  String get banhMiIngredient3Quantity => '100g';

  @override
  String get banhMiIngredient3Name => 'cà rốt ngâm chua';

  @override
  String get banhMiIngredient4Quantity => '1/4 chén';

  @override
  String get banhMiIngredient4Name => 'lá ngò';

  @override
  String get banhMiStep1 => 'Rạch bánh mì dọc, khoét bớt ruột.';

  @override
  String get banhMiStep2 => 'Phết mayonnaise và pâté vào trong.';

  @override
  String get banhMiStep3 => 'Xếp chả lụa và dưa chuột.';

  @override
  String get banhMiStep4 => 'Thêm rau củ ngâm chua và ngò.';

  @override
  String get banhMiStep5 => 'Nêm nếm với nước tương và ớt.';

  @override
  String get banhMiStep6 => 'Ép nhẹ bánh mì và dọn tươi.';

  @override
  String get bunBoHueName => 'Bún Bò Huế';

  @override
  String get bunBoHueDescription => 'Bún bò cay đặc sản Huế.';

  @override
  String get bunBoHueIngredient1Quantity => '400g';

  @override
  String get bunBoHueIngredient1Name => 'bún tròn';

  @override
  String get bunBoHueIngredient2Quantity => '500g';

  @override
  String get bunBoHueIngredient2Name => 'thịt bò';

  @override
  String get bunBoHueIngredient3Quantity => '200g';

  @override
  String get bunBoHueIngredient3Name => 'giò heo';

  @override
  String get bunBoHueIngredient4Quantity => '3 thìa canh';

  @override
  String get bunBoHueIngredient4Name => 'mắm ruốc';

  @override
  String get bunBoHueIngredient5Quantity => '2 thìa canh';

  @override
  String get bunBoHueIngredient5Name => 'dầu ớt';

  @override
  String get bunBoHueStep1 => 'Ninh xương bò và heo để có nước dùng đậm đà.';

  @override
  String get bunBoHueStep2 => 'Thêm sả, hành tây và gia vị vào nước dùng.';

  @override
  String get bunBoHueStep3 => 'Luộc bún cho mềm.';

  @override
  String get bunBoHueStep4 => 'Thái thịt bò và heo mỏng.';

  @override
  String get bunBoHueStep5 => 'Nêm nước dùng với mắm ruốc và dầu ớt.';

  @override
  String get bunBoHueStep6 => 'Dọn với rau thơm và chanh.';

  @override
  String get rendangName => 'Rendang Bò';

  @override
  String get rendangDescription => 'Cà ri bò cay nấu chậm kiểu Indonesia.';

  @override
  String get rendangIngredient1Quantity => '800g';

  @override
  String get rendangIngredient1Name => 'thịt bò thăn, cắt miếng';

  @override
  String get rendangIngredient2Quantity => '400ml';

  @override
  String get rendangIngredient2Name => 'nước cốt dừa';

  @override
  String get rendangIngredient3Quantity => '4 thìa canh';

  @override
  String get rendangIngredient3Name => 'kroeung rendang';

  @override
  String get rendangIngredient4Quantity => '3 cây';

  @override
  String get rendangIngredient4Name => 'sả';

  @override
  String get rendangStep1 => 'Áp chảo thịt bò trong nồi nặng đáy.';

  @override
  String get rendangStep2 => 'Thêm kroeung và xào cho thơm.';

  @override
  String get rendangStep3 => 'Đổ nước cốt dừa và thêm sả.';

  @override
  String get rendangStep4 => 'Ninh lửa nhỏ trong 2 tiếng.';

  @override
  String get rendangStep5 => 'Tiếp tục nấu cho đến khi nước sốt đặc.';

  @override
  String get rendangStep6 =>
      'Khuấy thường xuyên trong 30 phút cuối cho đến khi thẫm màu.';

  @override
  String get satayName => 'Sate Gà';

  @override
  String get satayDescription => 'Xiên gà nướng với nước chấm đậu phộng.';

  @override
  String get satayIngredient1Quantity => '600g';

  @override
  String get satayIngredient1Name => 'đùi gà, cắt miếng';

  @override
  String get satayIngredient2Quantity => '2 thìa canh';

  @override
  String get satayIngredient2Name => 'nước cốt dừa';

  @override
  String get satayIngredient3Quantity => '1 thìa canh';

  @override
  String get satayIngredient3Name => 'đường thốt nốt';

  @override
  String get satayIngredient4Quantity => '20 cái';

  @override
  String get satayIngredient4Name => 'xiên tre';

  @override
  String get satayIngredient5Quantity => '1/2 chén';

  @override
  String get satayIngredient5Name => 'nước chấm đậu phộng';

  @override
  String get satayStep1 => 'Ướp gà trong nước cốt dừa và gia vị.';

  @override
  String get satayStep2 => 'Xuyên gà vào xiên tre đã ngâm nước.';

  @override
  String get satayStep3 => 'Nướng trên than cho đến khi vàng.';

  @override
  String get satayStep4 => 'Quét nước ướp còn lại trong khi nướng.';

  @override
  String get satayStep5 => 'Pha nước chấm đậu phộng.';

  @override
  String get satayStep6 => 'Dọn nóng với nước chấm đậu phộng và dưa chuột.';

  @override
  String get kungPaoChickenName => 'Gà Kung Pao';

  @override
  String get kungPaoChickenDescription => 'Gà cay Tứ Xuyên với đậu phộng.';

  @override
  String get kungPaoChickenIngredient1Quantity => '500g';

  @override
  String get kungPaoChickenIngredient1Name => 'ức gà, cắt hạt lựu';

  @override
  String get kungPaoChickenIngredient2Quantity => '1/2 chén';

  @override
  String get kungPaoChickenIngredient2Name => 'đậu phộng rang';

  @override
  String get kungPaoChickenIngredient3Quantity => '8-10 quả';

  @override
  String get kungPaoChickenIngredient3Name => 'ớt khô';

  @override
  String get kungPaoChickenIngredient4Quantity => '1 thìa cà phê';

  @override
  String get kungPaoChickenIngredient4Name => 'hạt tiêu Tứ Xuyên';

  @override
  String get kungPaoChickenStep1 => 'Ướp gà trong nước tương và rượu gạo.';

  @override
  String get kungPaoChickenStep2 => 'Rang đậu phộng và ớt khô cho thơm.';

  @override
  String get kungPaoChickenStep3 => 'Xào gà cho đến khi vàng.';

  @override
  String get kungPaoChickenStep4 => 'Thêm gia vị thơm và nước sốt, trộn đều.';

  @override
  String get kungPaoChickenStep5 => 'Thêm đậu phộng và trộn mọi thứ lại.';

  @override
  String get kungPaoChickenStep6 => 'Dọn nóng với cơm trắng.';

  @override
  String get estimatedCost => 'Chi phí ước tính';

  @override
  String get costPerServing => 'Chi phí mỗi khẩu phần';

  @override
  String get budgetFriendly => 'Thân thiện ngân sách';

  @override
  String get moderatePrice => 'Giá vừa phải';

  @override
  String get premiumRecipe => 'Công thức cao cấp';

  @override
  String get priceNotAvailable => 'Giá không có sẵn';

  @override
  String get totalIngredientsPrice => 'Tổng giá nguyên liệu';

  @override
  String get exchangeRateUSD => '1.0';

  @override
  String get exchangeRateEUR => '0.92';

  @override
  String get exchangeRateVND => '24350.0';

  @override
  String get exchangeRateIDR => '15750.0';

  @override
  String get currencySymbolUSD => '\$';

  @override
  String get currencySymbolEUR => '€';

  @override
  String get currencySymbolVND => '₫';

  @override
  String get currencySymbolIDR => 'Rp';
}
