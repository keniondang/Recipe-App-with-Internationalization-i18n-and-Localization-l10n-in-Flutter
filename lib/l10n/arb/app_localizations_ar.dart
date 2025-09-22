// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get navigationHome => 'الرئيسية';

  @override
  String get navigationSettings => 'الإعدادات';

  @override
  String get homeTitle => 'ماذا ستطبخ\nاليوم؟';

  @override
  String get searchHint => 'البحث عن الوصفات...';

  @override
  String get categoriesTitle => 'الفئات';

  @override
  String get viewAllButton => 'عرض الكل';

  @override
  String get filterByCuisine => 'تصفية حسب المطبخ';

  @override
  String get noRecipesFound => 'لا توجد وصفات';

  @override
  String get searchDifferentKeywords => 'جرب البحث بكلمات مفتاحية مختلفة';

  @override
  String minutesShort(Object minutes) {
    return '$minutesد';
  }

  @override
  String get cookTime => 'وقت الطبخ';

  @override
  String get servings => 'الحصص';

  @override
  String get rating => 'التقييم';

  @override
  String get ingredients => 'المكونات';

  @override
  String get instructions => 'التعليمات';

  @override
  String minutesLong(Object minutes) {
    return '$minutes دقيقة';
  }

  @override
  String hoursLong(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'ساعات',
      many: 'ساعة',
      few: 'ساعات',
      two: 'ساعتان',
      one: 'ساعة',
    );
    return '$hours $_temp0';
  }

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '$hoursس $minutesد';
  }

  @override
  String get calories => 'سعرة';

  @override
  String get caloriesLong => 'سعرة حرارية';

  @override
  String daysAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'يوم',
      many: 'يوماً',
      few: 'أيام',
      two: 'يومين',
      one: 'يوم',
    );
    return 'منذ $days $_temp0';
  }

  @override
  String hoursAgo(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'ساعات',
      many: 'ساعة',
      few: 'ساعات',
      two: 'ساعتين',
      one: 'ساعة',
    );
    return 'منذ $hours $_temp0';
  }

  @override
  String minutesAgo(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'دقائق',
      many: 'دقيقة',
      few: 'دقائق',
      two: 'دقيقتين',
      one: 'دقيقة',
    );
    return 'منذ $minutes $_temp0';
  }

  @override
  String get justNow => 'منذ قليل';

  @override
  String createdOn(String date) {
    return 'تم إنشاؤها في $date';
  }

  @override
  String updatedOn(String time) {
    return 'تم التحديث $time';
  }

  @override
  String serves(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'شخص',
      many: 'شخصاً',
      few: 'أشخاص',
      two: 'شخصين',
      one: 'شخص',
    );
    return 'تكفي $count $_temp0';
  }

  @override
  String totalTime(String time) {
    return 'الوقت الإجمالي: $time';
  }

  @override
  String get nutritionPerServing => 'لكل حصة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get preferencesSection => 'التفضيلات';

  @override
  String get aboutSection => 'حول';

  @override
  String get languageSetting => 'اللغة';

  @override
  String get languageSubtitle => 'العربية';

  @override
  String get notificationsSetting => 'الإشعارات';

  @override
  String get notificationsSubtitle => 'إدارة الإشعارات';

  @override
  String get themeSetting => 'المظهر';

  @override
  String get themeSubtitle => 'الوضع الفاتح';

  @override
  String get appInfoSetting => 'معلومات التطبيق';

  @override
  String get appInfoSubtitle => 'الإصدار 1.0.0';

  @override
  String get helpSetting => 'المساعدة والدعم';

  @override
  String get helpSubtitle => 'الحصول على مساعدة بالتطبيق';

  @override
  String get rateSetting => 'تقييم التطبيق';

  @override
  String get rateSubtitle => 'شارك ملاحظاتك';

  @override
  String get selectLanguageTitle => 'اختر اللغة';

  @override
  String get cancelButton => 'إلغاء';

  @override
  String get applyButton => 'تطبيق';

  @override
  String get englishLanguage => 'الإنجليزية';

  @override
  String get vietnameseLanguage => 'الفيتنامية';

  @override
  String get germanLanguage => 'الألمانية';

  @override
  String get indonesianLanguage => 'الإندونيسية';

  @override
  String get cuisineAll => 'الكل';

  @override
  String get cuisineVietnamese => 'فيتنامي';

  @override
  String get cuisineWestern => 'غربي';

  @override
  String get cuisineIndonesian => 'إندونيسي';

  @override
  String get cuisineChinese => 'صيني';

  @override
  String get notificationSettingsPlaceholder =>
      'إعدادات الإشعارات سيتم تنفيذها هنا!';

  @override
  String get themeOptionsPlaceholder => 'خيارات المظهر سيتم تنفيذها هنا!';

  @override
  String get helpSupportPlaceholder => 'المساعدة والدعم سيتم تنفيذها هنا!';

  @override
  String get ratingThankYou => 'شكراً! ميزة التقييم سيتم تنفيذها هنا!';

  @override
  String get appName => 'تطبيق الوصفات';

  @override
  String get appVersion => '1.0.0';

  @override
  String get appLegalese => '© 2025 تطبيق الوصفات. جميع الحقوق محفوظة.';

  @override
  String get appDescription => 'تطبيق وصفات بسيط وأنيق مبني باستخدام Flutter.';

  @override
  String get promoBanner1 => 'اطبخ أفضل\nالوصفات في المنزل';

  @override
  String get promoBanner2 => 'اكتشف نكهات\nجديدة كل يوم';

  @override
  String get promoBanner3 => 'وصفات بسيطة لحياتك\nالمشغولة';

  @override
  String get promoBanner4 => 'أبهر ضيوفك\nبمهاراتك';

  @override
  String get beefSteakName => 'ستيك اللحم';

  @override
  String get beefSteakDescription => 'ستيك لحم مشوي بالأعشاب بطريقة مثالية.';

  @override
  String get beefSteakIngredient1Quantity => 'قطعتان';

  @override
  String get beefSteakIngredient1Name => 'ستيك لحم بقري (8 أونصة لكل قطعة)';

  @override
  String get beefSteakIngredient2Quantity => 'ملعقتان كبيرتان';

  @override
  String get beefSteakIngredient2Name => 'زيت الزيتون';

  @override
  String get beefSteakIngredient3Quantity => 'ملعقة صغيرة';

  @override
  String get beefSteakIngredient3Name => 'ملح';

  @override
  String get beefSteakIngredient4Quantity => 'نصف ملعقة صغيرة';

  @override
  String get beefSteakIngredient4Name => 'فلفل أسود';

  @override
  String get beefSteakStep1 => 'تبّل قطع الستيك بالملح والفلفل من الجهتين.';

  @override
  String get beefSteakStep2 => 'سخّن زيت الزيتون في مقلاة حديد على نار عالية.';

  @override
  String get beefSteakStep3 =>
      'اشوِ الستيك لمدة 3-4 دقائق من كل جهة للحصول على نضج متوسط.';

  @override
  String get beefSteakStep4 => 'أضف الزبدة والثوم وإكليل الجبل للمقلاة.';

  @override
  String get beefSteakStep5 => 'ادهن الستيك بزبدة الأعشاب لنكهة إضافية.';

  @override
  String get beefSteakStep6 => 'اتركه يرتاح لمدة 5 دقائق قبل التقديم.';

  @override
  String get phoBoName => 'فو بو';

  @override
  String get phoBoDescription => 'حساء شعيرية اللحم الفيتنامي التقليدي.';

  @override
  String get phoBoIngredient1Quantity => '1 كيلو';

  @override
  String get phoBoIngredient1Name => 'عظام لحم البقر';

  @override
  String get phoBoIngredient2Quantity => '400 جرام';

  @override
  String get phoBoIngredient2Name => 'شعيرية الأرز (bánh phở)';

  @override
  String get phoBoIngredient3Quantity => '3 قطع';

  @override
  String get phoBoIngredient3Name => 'يانسون نجمي';

  @override
  String get phoBoIngredient4Quantity => 'عود واحد';

  @override
  String get phoBoIngredient4Name => 'قرفة';

  @override
  String get phoBoStep1 =>
      'حمّص البصل والزنجبيل على نار مكشوفة حتى تفوح رائحتهما.';

  @override
  String get phoBoStep2 =>
      'اسلقي عظام اللحم مع التوابل لمدة 3 ساعات لعمل المرق.';

  @override
  String get phoBoStep3 => 'اطبخي شعيرية الأرز حسب تعليمات العبوة.';

  @override
  String get phoBoStep4 => 'قطّعي لحم البقر شرائح رفيعة للطبخ السريع.';

  @override
  String get phoBoStep5 => 'رتّبي الأطباق بالشعيرية واللحم النيء.';

  @override
  String get phoBoStep6 => 'اسكبي المرق الساخن لطبخ اللحم وزيّني بالأعشاب.';

  @override
  String get banhMiName => 'بانه مي فيتنامي';

  @override
  String get banhMiDescription => 'خبز مقرمش مع خضار فيتنامية مخللة.';

  @override
  String get banhMiIngredient1Quantity => '2';

  @override
  String get banhMiIngredient1Name => 'رغيف خبز فرنسي';

  @override
  String get banhMiIngredient2Quantity => '200 جرام';

  @override
  String get banhMiIngredient2Name => 'لحم خنزير فيتنامي';

  @override
  String get banhMiIngredient3Quantity => '100 جرام';

  @override
  String get banhMiIngredient3Name => 'جزر مخلل';

  @override
  String get banhMiIngredient4Quantity => 'ربع كوب';

  @override
  String get banhMiIngredient4Name => 'أوراق الكزبرة';

  @override
  String get banhMiStep1 => 'اقطعي الخبز طولياً واجوّفيه قليلاً.';

  @override
  String get banhMiStep2 => 'ادهني المايونيز والباتيه من الداخل.';

  @override
  String get banhMiStep3 => 'ضعي طبقات من اللحم الفيتنامي والخيار.';

  @override
  String get banhMiStep4 => 'أضيفي الخضار المخللة والكزبرة.';

  @override
  String get banhMiStep5 => 'تبّلي بصوص الصويا والفلفل الحار.';

  @override
  String get banhMiStep6 => 'اضغطي على الساندويش قليلاً وقدّميه طازجاً.';

  @override
  String get bunBoHueName => 'بون بو هوي';

  @override
  String get bunBoHueDescription => 'حساء شعيرية لحم حار من هوي.';

  @override
  String get bunBoHueIngredient1Quantity => '400 جرام';

  @override
  String get bunBoHueIngredient1Name => 'شعيرية أرز دائرية سميكة';

  @override
  String get bunBoHueIngredient2Quantity => '500 جرام';

  @override
  String get bunBoHueIngredient2Name => 'ساق لحم بقري';

  @override
  String get bunBoHueIngredient3Quantity => '200 جرام';

  @override
  String get bunBoHueIngredient3Name => 'ساق خنزير';

  @override
  String get bunBoHueIngredient4Quantity => '3 ملاعق كبيرة';

  @override
  String get bunBoHueIngredient4Name => 'معجون الروبيان';

  @override
  String get bunBoHueIngredient5Quantity => 'ملعقتان كبيرتان';

  @override
  String get bunBoHueIngredient5Name => 'زيت الفلفل الحار';

  @override
  String get bunBoHueStep1 => 'اسلقي عظام اللحم والخنزير للحصول على مرق غني.';

  @override
  String get bunBoHueStep2 => 'أضيفي عشب الليمون والبصل والتوابل للمرق.';

  @override
  String get bunBoHueStep3 => 'اطبخي الشعيرية السميكة حتى تنضج.';

  @override
  String get bunBoHueStep4 => 'قطّعي اللحم المطبوخ والخنزير شرائح رفيعة.';

  @override
  String get bunBoHueStep5 => 'تبّلي المرق بمعجون الروبيان وزيت الفلفل الحار.';

  @override
  String get bunBoHueStep6 => 'قدّمي مع الأعشاب الطازجة وقطع الليمون.';

  @override
  String get rendangName => 'رندانغ اللحم';

  @override
  String get rendangDescription => 'كاري لحم حار إندونيسي مطبوخ ببطء.';

  @override
  String get rendangIngredient1Quantity => '800 جرام';

  @override
  String get rendangIngredient1Name => 'لحم بقري مقطع مكعبات';

  @override
  String get rendangIngredient2Quantity => '400 مل';

  @override
  String get rendangIngredient2Name => 'حليب جوز الهند';

  @override
  String get rendangIngredient3Quantity => '4 ملاعق كبيرة';

  @override
  String get rendangIngredient3Name => 'معجون توابل الرندانغ';

  @override
  String get rendangIngredient4Quantity => '3 عيدان';

  @override
  String get rendangIngredient4Name => 'عشب الليمون';

  @override
  String get rendangStep1 => 'حمّري مكعبات اللحم في إناء ثقيل القاع.';

  @override
  String get rendangStep2 => 'أضيفي معجون التوابل واطبخي حتى تفوح الرائحة.';

  @override
  String get rendangStep3 => 'اسكبي حليب جوز الهند وأضيفي العطريات.';

  @override
  String get rendangStep4 => 'اتركي الخليط ينضج على نار هادئة لمدة ساعتين.';

  @override
  String get rendangStep5 => 'واصلي الطبخ حتى يثخن القوام.';

  @override
  String get rendangStep6 =>
      'حرّكي باستمرار في آخر 30 دقيقة حتى يصبح لونه داكناً.';

  @override
  String get satayName => 'ساتيه الدجاج';

  @override
  String get satayDescription => 'أسياخ دجاج مشوية مع صوص الفول السوداني.';

  @override
  String get satayIngredient1Quantity => '600 جرام';

  @override
  String get satayIngredient1Name => 'فخذ دجاج مقطع مكعبات';

  @override
  String get satayIngredient2Quantity => 'ملعقتان كبيرتان';

  @override
  String get satayIngredient2Name => 'حليب جوز الهند';

  @override
  String get satayIngredient3Quantity => 'ملعقة كبيرة';

  @override
  String get satayIngredient3Name => 'سكر النخيل';

  @override
  String get satayIngredient4Quantity => '20';

  @override
  String get satayIngredient4Name => 'سيخ خيزران';

  @override
  String get satayIngredient5Quantity => 'نصف كوب';

  @override
  String get satayIngredient5Name => 'صوص الفول السوداني';

  @override
  String get satayStep1 => 'تبّلي الدجاج في حليب جوز الهند والتوابل.';

  @override
  String get satayStep2 => 'اربطي الدجاج في أسياخ الخيزران المنقوعة.';

  @override
  String get satayStep3 => 'اشويها على الفحم حتى تصبح ذهبية اللون.';

  @override
  String get satayStep4 => 'ادهنيها بالتتبيلة المتبقية أثناء الشوي.';

  @override
  String get satayStep5 => 'حضّري صوص الفول السوداني بالفول السوداني المطحون.';

  @override
  String get satayStep6 => 'قدّميها ساخنة مع صوص الفول السوداني والخيار.';

  @override
  String get kungPaoChickenName => 'دجاج كونغ باو';

  @override
  String get kungPaoChickenDescription => 'دجاج سيتشوان حار مع الفول السوداني.';

  @override
  String get kungPaoChickenIngredient1Quantity => '500 جرام';

  @override
  String get kungPaoChickenIngredient1Name => 'صدر دجاج مقطع مكعبات';

  @override
  String get kungPaoChickenIngredient2Quantity => 'نصف كوب';

  @override
  String get kungPaoChickenIngredient2Name => 'فول سوداني محمص';

  @override
  String get kungPaoChickenIngredient3Quantity => '8-10';

  @override
  String get kungPaoChickenIngredient3Name => 'فلفل حار مجفف';

  @override
  String get kungPaoChickenIngredient4Quantity => 'ملعقة صغيرة';

  @override
  String get kungPaoChickenIngredient4Name => 'حبوب فلفل سيتشوان';

  @override
  String get kungPaoChickenStep1 =>
      'تبّلي قطع الدجاج في صوص الصويا ونبيذ الأرز.';

  @override
  String get kungPaoChickenStep2 =>
      'حمّصي الفول السوداني والفلفل المجفف حتى تفوح رائحتهما.';

  @override
  String get kungPaoChickenStep3 => 'اقلي الدجاج حتى يصبح ذهبي اللون.';

  @override
  String get kungPaoChickenStep4 => 'أضيفي العطريات والصوص واخلطي جيداً.';

  @override
  String get kungPaoChickenStep5 => 'أضيفي الفول السوداني واخلطي كل شيء معاً.';

  @override
  String get kungPaoChickenStep6 => 'قدّميه ساخناً مع الأرز المطهو بالبخار.';

  @override
  String get estimatedCost => 'التكلفة المقدرة';

  @override
  String get costPerServing => 'التكلفة لكل حصة';

  @override
  String get budgetFriendly => 'اقتصادي';

  @override
  String get moderatePrice => 'سعر متوسط';

  @override
  String get premiumRecipe => 'وصفة فاخرة';

  @override
  String get priceNotAvailable => 'السعر غير متوفر';

  @override
  String get totalIngredientsPrice => 'إجمالي سعر المكونات';
}
