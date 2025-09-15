// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get navigationHome => 'Home';

  @override
  String get navigationSettings => 'Settings';

  @override
  String get homeTitle => 'What are you\ncooking today?';

  @override
  String get searchHint => 'Search for recipes...';

  @override
  String get categoriesTitle => 'Categories';

  @override
  String get viewAllButton => 'View All';

  @override
  String get filterByCuisine => 'Filter by Cuisine';

  @override
  String get noRecipesFound => 'No recipes found';

  @override
  String get searchDifferentKeywords => 'Try searching with different keywords';

  @override
  String minutesShort(Object minutes) {
    return '${minutes}m';
  }

  @override
  String get cookTime => 'Cook time';

  @override
  String get servings => 'Servings';

  @override
  String get rating => 'Rating';

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instructions';

  @override
  String minutesLong(Object minutes) {
    return '$minutes min';
  }

  @override
  String hoursLong(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'hours',
      one: 'hour',
    );
    return '$hours $_temp0';
  }

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String get calories => 'cal';

  @override
  String get caloriesLong => 'calories';

  @override
  String daysAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$days $_temp0 ago';
  }

  @override
  String hoursAgo(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'hours',
      one: 'hour',
    );
    return '$hours $_temp0 ago';
  }

  @override
  String minutesAgo(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'minutes',
      one: 'minute',
    );
    return '$minutes $_temp0 ago';
  }

  @override
  String get justNow => 'just now';

  @override
  String createdOn(String date) {
    return 'Created on $date';
  }

  @override
  String updatedOn(String time) {
    return 'Updated $time';
  }

  @override
  String serves(int count) {
    return 'Serves $count';
  }

  @override
  String totalTime(String time) {
    return 'Total time: $time';
  }

  @override
  String get nutritionPerServing => 'Per serving';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get preferencesSection => 'Preferences';

  @override
  String get aboutSection => 'About';

  @override
  String get languageSetting => 'Language';

  @override
  String get languageSubtitle => 'English';

  @override
  String get notificationsSetting => 'Notifications';

  @override
  String get notificationsSubtitle => 'Manage your notifications';

  @override
  String get themeSetting => 'Theme';

  @override
  String get themeSubtitle => 'Light mode';

  @override
  String get appInfoSetting => 'App Information';

  @override
  String get appInfoSubtitle => 'Version 1.0.0';

  @override
  String get helpSetting => 'Help & Support';

  @override
  String get helpSubtitle => 'Get help with the app';

  @override
  String get rateSetting => 'Rate App';

  @override
  String get rateSubtitle => 'Share your feedback';

  @override
  String get selectLanguageTitle => 'Select Language';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get applyButton => 'Apply';

  @override
  String get englishLanguage => 'English';

  @override
  String get vietnameseLanguage => 'Vietnamese';

  @override
  String get germanLanguage => 'German';

  @override
  String get indonesianLanguage => 'Indonesian';

  @override
  String get cuisineAll => 'All';

  @override
  String get cuisineVietnamese => 'Vietnamese';

  @override
  String get cuisineWestern => 'Western';

  @override
  String get cuisineIndonesian => 'Indonesian';

  @override
  String get cuisineChinese => 'Chinese';

  @override
  String get notificationSettingsPlaceholder =>
      'Notification settings will be implemented here!';

  @override
  String get themeOptionsPlaceholder =>
      'Theme options will be implemented here!';

  @override
  String get helpSupportPlaceholder =>
      'Help & Support will be implemented here!';

  @override
  String get ratingThankYou =>
      'Thank you! Rating feature will be implemented here!';

  @override
  String get appName => 'Recipe App';

  @override
  String get appVersion => '1.0.0';

  @override
  String get appLegalese => '© 2025 Recipe App. All rights reserved.';

  @override
  String get appDescription =>
      'A simple and elegant recipe app built with Flutter.';

  @override
  String get promoBanner1 => 'Cook the best\nrecipes at home';

  @override
  String get promoBanner2 => 'Discover new\nflavors every day';

  @override
  String get promoBanner3 => 'Simple recipes for\nyour busy life';

  @override
  String get promoBanner4 => 'Impress your guests\nwith your skills';

  @override
  String get beefSteakName => 'Beef Steak';

  @override
  String get beefSteakDescription => 'Perfectly grilled beef steak with herbs.';

  @override
  String get beefSteakIngredient1Quantity => '2 pieces';

  @override
  String get beefSteakIngredient1Name => 'beef steaks (8oz each)';

  @override
  String get beefSteakIngredient2Quantity => '2 tbsp';

  @override
  String get beefSteakIngredient2Name => 'olive oil';

  @override
  String get beefSteakIngredient3Quantity => '1 tsp';

  @override
  String get beefSteakIngredient3Name => 'salt';

  @override
  String get beefSteakIngredient4Quantity => '1/2 tsp';

  @override
  String get beefSteakIngredient4Name => 'black pepper';

  @override
  String get beefSteakStep1 =>
      'Season steaks with salt and pepper on both sides.';

  @override
  String get beefSteakStep2 =>
      'Heat olive oil in a cast iron pan over high heat.';

  @override
  String get beefSteakStep3 =>
      'Sear steaks for 3-4 minutes each side for medium-rare.';

  @override
  String get beefSteakStep4 => 'Add butter, garlic, and rosemary to the pan.';

  @override
  String get beefSteakStep5 =>
      'Baste steaks with herb butter for extra flavor.';

  @override
  String get beefSteakStep6 => 'Rest for 5 minutes before serving.';

  @override
  String get phoBoName => 'Pho Bo';

  @override
  String get phoBoDescription => 'Traditional Vietnamese beef noodle soup.';

  @override
  String get phoBoIngredient1Quantity => '1 kg';

  @override
  String get phoBoIngredient1Name => 'beef bones';

  @override
  String get phoBoIngredient2Quantity => '400g';

  @override
  String get phoBoIngredient2Name => 'rice noodles (bánh phở)';

  @override
  String get phoBoIngredient3Quantity => '3 pieces';

  @override
  String get phoBoIngredient3Name => 'star anise';

  @override
  String get phoBoIngredient4Quantity => '1 stick';

  @override
  String get phoBoIngredient4Name => 'cinnamon';

  @override
  String get phoBoStep1 =>
      'Char onion and ginger over open flame until fragrant.';

  @override
  String get phoBoStep2 =>
      'Boil beef bones with spices for 3 hours to make broth.';

  @override
  String get phoBoStep3 =>
      'Cook rice noodles according to package instructions.';

  @override
  String get phoBoStep4 => 'Slice beef thinly for quick cooking.';

  @override
  String get phoBoStep5 => 'Assemble bowls with noodles and raw beef.';

  @override
  String get phoBoStep6 =>
      'Pour hot broth over to cook beef and garnish with herbs.';

  @override
  String get banhMiName => 'Vietnamese Banh Mi';

  @override
  String get banhMiDescription =>
      'Crispy baguette with Vietnamese pickled vegetables.';

  @override
  String get banhMiIngredient1Quantity => '2';

  @override
  String get banhMiIngredient1Name => 'French baguettes';

  @override
  String get banhMiIngredient2Quantity => '200g';

  @override
  String get banhMiIngredient2Name => 'Vietnamese ham';

  @override
  String get banhMiIngredient3Quantity => '100g';

  @override
  String get banhMiIngredient3Name => 'pickled carrots';

  @override
  String get banhMiIngredient4Quantity => '1/4 cup';

  @override
  String get banhMiIngredient4Name => 'cilantro leaves';

  @override
  String get banhMiStep1 => 'Slice baguettes lengthwise, hollow slightly.';

  @override
  String get banhMiStep2 => 'Spread mayonnaise and pâté inside.';

  @override
  String get banhMiStep3 => 'Layer with Vietnamese ham and cucumber.';

  @override
  String get banhMiStep4 => 'Add pickled vegetables and cilantro.';

  @override
  String get banhMiStep5 => 'Season with soy sauce and chili.';

  @override
  String get banhMiStep6 => 'Press sandwich lightly and serve fresh.';

  @override
  String get bunBoHueName => 'Bun Bo Hue';

  @override
  String get bunBoHueDescription => 'Spicy beef noodle soup from Hue.';

  @override
  String get bunBoHueIngredient1Quantity => '400g';

  @override
  String get bunBoHueIngredient1Name => 'thick round rice noodles';

  @override
  String get bunBoHueIngredient2Quantity => '500g';

  @override
  String get bunBoHueIngredient2Name => 'beef shank';

  @override
  String get bunBoHueIngredient3Quantity => '200g';

  @override
  String get bunBoHueIngredient3Name => 'pork hock';

  @override
  String get bunBoHueIngredient4Quantity => '3 tbsp';

  @override
  String get bunBoHueIngredient4Name => 'shrimp paste';

  @override
  String get bunBoHueIngredient5Quantity => '2 tbsp';

  @override
  String get bunBoHueIngredient5Name => 'chili oil';

  @override
  String get bunBoHueStep1 => 'Boil beef and pork bones for rich broth.';

  @override
  String get bunBoHueStep2 => 'Add lemongrass, onions, and spices to broth.';

  @override
  String get bunBoHueStep3 => 'Cook thick rice noodles until tender.';

  @override
  String get bunBoHueStep4 => 'Slice cooked beef and pork thinly.';

  @override
  String get bunBoHueStep5 => 'Season broth with shrimp paste and chili oil.';

  @override
  String get bunBoHueStep6 => 'Serve with fresh herbs and lime wedges.';

  @override
  String get rendangName => 'Beef Rendang';

  @override
  String get rendangDescription => 'Indonesian slow-cooked spicy beef curry.';

  @override
  String get rendangIngredient1Quantity => '800g';

  @override
  String get rendangIngredient1Name => 'beef chuck, cubed';

  @override
  String get rendangIngredient2Quantity => '400ml';

  @override
  String get rendangIngredient2Name => 'coconut milk';

  @override
  String get rendangIngredient3Quantity => '4 tbsp';

  @override
  String get rendangIngredient3Name => 'rendang spice paste';

  @override
  String get rendangIngredient4Quantity => '3';

  @override
  String get rendangIngredient4Name => 'lemongrass stalks';

  @override
  String get rendangStep1 => 'Brown beef cubes in a heavy pot.';

  @override
  String get rendangStep2 => 'Add spice paste and cook until fragrant.';

  @override
  String get rendangStep3 => 'Pour in coconut milk and add aromatics.';

  @override
  String get rendangStep4 => 'Simmer on low heat for 2 hours.';

  @override
  String get rendangStep5 => 'Continue cooking until sauce thickens.';

  @override
  String get rendangStep6 => 'Stir frequently in final 30 minutes until dark.';

  @override
  String get satayName => 'Chicken Satay';

  @override
  String get satayDescription => 'Grilled chicken skewers with peanut sauce.';

  @override
  String get satayIngredient1Quantity => '600g';

  @override
  String get satayIngredient1Name => 'chicken thigh, cubed';

  @override
  String get satayIngredient2Quantity => '2 tbsp';

  @override
  String get satayIngredient2Name => 'coconut milk';

  @override
  String get satayIngredient3Quantity => '1 tbsp';

  @override
  String get satayIngredient3Name => 'palm sugar';

  @override
  String get satayIngredient4Quantity => '20';

  @override
  String get satayIngredient4Name => 'bamboo skewers';

  @override
  String get satayIngredient5Quantity => '1/2 cup';

  @override
  String get satayIngredient5Name => 'peanut sauce';

  @override
  String get satayStep1 => 'Marinate chicken in coconut milk and spices.';

  @override
  String get satayStep2 => 'Thread chicken onto soaked bamboo skewers.';

  @override
  String get satayStep3 => 'Grill over charcoal until golden brown.';

  @override
  String get satayStep4 => 'Baste with remaining marinade while cooking.';

  @override
  String get satayStep5 => 'Prepare peanut sauce with ground peanuts.';

  @override
  String get satayStep6 => 'Serve hot with peanut sauce and cucumber.';

  @override
  String get kungPaoChickenName => 'Kung Pao Chicken';

  @override
  String get kungPaoChickenDescription => 'Spicy Sichuan chicken with peanuts.';

  @override
  String get kungPaoChickenIngredient1Quantity => '500g';

  @override
  String get kungPaoChickenIngredient1Name => 'chicken breast, diced';

  @override
  String get kungPaoChickenIngredient2Quantity => '1/2 cup';

  @override
  String get kungPaoChickenIngredient2Name => 'roasted peanuts';

  @override
  String get kungPaoChickenIngredient3Quantity => '8-10';

  @override
  String get kungPaoChickenIngredient3Name => 'dried chilies';

  @override
  String get kungPaoChickenIngredient4Quantity => '1 tsp';

  @override
  String get kungPaoChickenIngredient4Name => 'Sichuan peppercorns';

  @override
  String get kungPaoChickenStep1 =>
      'Marinate chicken pieces in soy sauce and rice wine.';

  @override
  String get kungPaoChickenStep2 =>
      'Toast peanuts and dried chilies until fragrant.';

  @override
  String get kungPaoChickenStep3 => 'Stir-fry chicken until golden brown.';

  @override
  String get kungPaoChickenStep4 => 'Add aromatics and sauce, toss well.';

  @override
  String get kungPaoChickenStep5 => 'Add peanuts and mix everything together.';

  @override
  String get kungPaoChickenStep6 => 'Serve hot with steamed rice.';

  @override
  String get estimatedCost => 'Estimated cost';

  @override
  String get costPerServing => 'Cost per serving';

  @override
  String get budgetFriendly => 'Budget friendly';

  @override
  String get moderatePrice => 'Moderate price';

  @override
  String get premiumRecipe => 'Premium recipe';

  @override
  String get priceNotAvailable => 'Price not available';

  @override
  String get totalIngredientsPrice => 'Total ingredients price';

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
