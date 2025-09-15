import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_id.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('id'),
    Locale('vi')
  ];

  /// No description provided for @navigationHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navigationHome;

  /// No description provided for @navigationSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navigationSettings;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'What are you\ncooking today?'**
  String get homeTitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for recipes...'**
  String get searchHint;

  /// No description provided for @categoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categoriesTitle;

  /// No description provided for @viewAllButton.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAllButton;

  /// No description provided for @filterByCuisine.
  ///
  /// In en, this message translates to:
  /// **'Filter by Cuisine'**
  String get filterByCuisine;

  /// No description provided for @noRecipesFound.
  ///
  /// In en, this message translates to:
  /// **'No recipes found'**
  String get noRecipesFound;

  /// No description provided for @searchDifferentKeywords.
  ///
  /// In en, this message translates to:
  /// **'Try searching with different keywords'**
  String get searchDifferentKeywords;

  /// No description provided for @minutesShort.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m'**
  String minutesShort(Object minutes);

  /// No description provided for @cookTime.
  ///
  /// In en, this message translates to:
  /// **'Cook time'**
  String get cookTime;

  /// No description provided for @servings.
  ///
  /// In en, this message translates to:
  /// **'Servings'**
  String get servings;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @ingredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get ingredients;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @minutesLong.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String minutesLong(Object minutes);

  /// Display hours in long format with proper pluralization
  ///
  /// In en, this message translates to:
  /// **'{hours} {hours, plural, =1{hour} other{hours}}'**
  String hoursLong(int hours);

  /// Display hours and minutes combined
  ///
  /// In en, this message translates to:
  /// **'{hours}h {minutes}m'**
  String hoursAndMinutes(int hours, int minutes);

  /// Short form for calories
  ///
  /// In en, this message translates to:
  /// **'cal'**
  String get calories;

  /// Long form for calories
  ///
  /// In en, this message translates to:
  /// **'calories'**
  String get caloriesLong;

  /// Relative time in days
  ///
  /// In en, this message translates to:
  /// **'{days} {days, plural, =1{day} other{days}} ago'**
  String daysAgo(int days);

  /// Relative time in hours
  ///
  /// In en, this message translates to:
  /// **'{hours} {hours, plural, =1{hour} other{hours}} ago'**
  String hoursAgo(int hours);

  /// Relative time in minutes
  ///
  /// In en, this message translates to:
  /// **'{minutes} {minutes, plural, =1{minute} other{minutes}} ago'**
  String minutesAgo(int minutes);

  /// Indicates something happened very recently
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get justNow;

  /// Shows when a recipe was created
  ///
  /// In en, this message translates to:
  /// **'Created on {date}'**
  String createdOn(String date);

  /// Shows when a recipe was last updated
  ///
  /// In en, this message translates to:
  /// **'Updated {time}'**
  String updatedOn(String time);

  /// Indicates how many people the recipe serves
  ///
  /// In en, this message translates to:
  /// **'Serves {count}'**
  String serves(int count);

  /// Shows total cooking time
  ///
  /// In en, this message translates to:
  /// **'Total time: {time}'**
  String totalTime(String time);

  /// Indicates nutrition information is per serving
  ///
  /// In en, this message translates to:
  /// **'Per serving'**
  String get nutritionPerServing;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @preferencesSection.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferencesSection;

  /// No description provided for @aboutSection.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSection;

  /// No description provided for @languageSetting.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSetting;

  /// No description provided for @languageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageSubtitle;

  /// No description provided for @notificationsSetting.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsSetting;

  /// No description provided for @notificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage your notifications'**
  String get notificationsSubtitle;

  /// No description provided for @themeSetting.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeSetting;

  /// No description provided for @themeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get themeSubtitle;

  /// No description provided for @appInfoSetting.
  ///
  /// In en, this message translates to:
  /// **'App Information'**
  String get appInfoSetting;

  /// No description provided for @appInfoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0'**
  String get appInfoSubtitle;

  /// No description provided for @helpSetting.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSetting;

  /// No description provided for @helpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get help with the app'**
  String get helpSubtitle;

  /// No description provided for @rateSetting.
  ///
  /// In en, this message translates to:
  /// **'Rate App'**
  String get rateSetting;

  /// No description provided for @rateSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Share your feedback'**
  String get rateSubtitle;

  /// No description provided for @selectLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguageTitle;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @applyButton.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get applyButton;

  /// No description provided for @englishLanguage.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get englishLanguage;

  /// No description provided for @vietnameseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get vietnameseLanguage;

  /// No description provided for @germanLanguage.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get germanLanguage;

  /// No description provided for @indonesianLanguage.
  ///
  /// In en, this message translates to:
  /// **'Indonesian'**
  String get indonesianLanguage;

  /// No description provided for @cuisineAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get cuisineAll;

  /// No description provided for @cuisineVietnamese.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get cuisineVietnamese;

  /// No description provided for @cuisineWestern.
  ///
  /// In en, this message translates to:
  /// **'Western'**
  String get cuisineWestern;

  /// No description provided for @cuisineIndonesian.
  ///
  /// In en, this message translates to:
  /// **'Indonesian'**
  String get cuisineIndonesian;

  /// No description provided for @cuisineChinese.
  ///
  /// In en, this message translates to:
  /// **'Chinese'**
  String get cuisineChinese;

  /// No description provided for @notificationSettingsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Notification settings will be implemented here!'**
  String get notificationSettingsPlaceholder;

  /// No description provided for @themeOptionsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Theme options will be implemented here!'**
  String get themeOptionsPlaceholder;

  /// No description provided for @helpSupportPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Help & Support will be implemented here!'**
  String get helpSupportPlaceholder;

  /// No description provided for @ratingThankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you! Rating feature will be implemented here!'**
  String get ratingThankYou;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Recipe App'**
  String get appName;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'1.0.0'**
  String get appVersion;

  /// No description provided for @appLegalese.
  ///
  /// In en, this message translates to:
  /// **'© 2025 Recipe App. All rights reserved.'**
  String get appLegalese;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'A simple and elegant recipe app built with Flutter.'**
  String get appDescription;

  /// No description provided for @promoBanner1.
  ///
  /// In en, this message translates to:
  /// **'Cook the best\nrecipes at home'**
  String get promoBanner1;

  /// No description provided for @promoBanner2.
  ///
  /// In en, this message translates to:
  /// **'Discover new\nflavors every day'**
  String get promoBanner2;

  /// No description provided for @promoBanner3.
  ///
  /// In en, this message translates to:
  /// **'Simple recipes for\nyour busy life'**
  String get promoBanner3;

  /// No description provided for @promoBanner4.
  ///
  /// In en, this message translates to:
  /// **'Impress your guests\nwith your skills'**
  String get promoBanner4;

  /// No description provided for @beefSteakName.
  ///
  /// In en, this message translates to:
  /// **'Beef Steak'**
  String get beefSteakName;

  /// No description provided for @beefSteakDescription.
  ///
  /// In en, this message translates to:
  /// **'Perfectly grilled beef steak with herbs.'**
  String get beefSteakDescription;

  /// No description provided for @beefSteakIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'2 pieces'**
  String get beefSteakIngredient1Quantity;

  /// No description provided for @beefSteakIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'beef steaks (8oz each)'**
  String get beefSteakIngredient1Name;

  /// No description provided for @beefSteakIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'2 tbsp'**
  String get beefSteakIngredient2Quantity;

  /// No description provided for @beefSteakIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'olive oil'**
  String get beefSteakIngredient2Name;

  /// No description provided for @beefSteakIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'1 tsp'**
  String get beefSteakIngredient3Quantity;

  /// No description provided for @beefSteakIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'salt'**
  String get beefSteakIngredient3Name;

  /// No description provided for @beefSteakIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'1/2 tsp'**
  String get beefSteakIngredient4Quantity;

  /// No description provided for @beefSteakIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'black pepper'**
  String get beefSteakIngredient4Name;

  /// No description provided for @beefSteakStep1.
  ///
  /// In en, this message translates to:
  /// **'Season steaks with salt and pepper on both sides.'**
  String get beefSteakStep1;

  /// No description provided for @beefSteakStep2.
  ///
  /// In en, this message translates to:
  /// **'Heat olive oil in a cast iron pan over high heat.'**
  String get beefSteakStep2;

  /// No description provided for @beefSteakStep3.
  ///
  /// In en, this message translates to:
  /// **'Sear steaks for 3-4 minutes each side for medium-rare.'**
  String get beefSteakStep3;

  /// No description provided for @beefSteakStep4.
  ///
  /// In en, this message translates to:
  /// **'Add butter, garlic, and rosemary to the pan.'**
  String get beefSteakStep4;

  /// No description provided for @beefSteakStep5.
  ///
  /// In en, this message translates to:
  /// **'Baste steaks with herb butter for extra flavor.'**
  String get beefSteakStep5;

  /// No description provided for @beefSteakStep6.
  ///
  /// In en, this message translates to:
  /// **'Rest for 5 minutes before serving.'**
  String get beefSteakStep6;

  /// No description provided for @phoBoName.
  ///
  /// In en, this message translates to:
  /// **'Pho Bo'**
  String get phoBoName;

  /// No description provided for @phoBoDescription.
  ///
  /// In en, this message translates to:
  /// **'Traditional Vietnamese beef noodle soup.'**
  String get phoBoDescription;

  /// No description provided for @phoBoIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'1 kg'**
  String get phoBoIngredient1Quantity;

  /// No description provided for @phoBoIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'beef bones'**
  String get phoBoIngredient1Name;

  /// No description provided for @phoBoIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'400g'**
  String get phoBoIngredient2Quantity;

  /// No description provided for @phoBoIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'rice noodles (bánh phở)'**
  String get phoBoIngredient2Name;

  /// No description provided for @phoBoIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'3 pieces'**
  String get phoBoIngredient3Quantity;

  /// No description provided for @phoBoIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'star anise'**
  String get phoBoIngredient3Name;

  /// No description provided for @phoBoIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'1 stick'**
  String get phoBoIngredient4Quantity;

  /// No description provided for @phoBoIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'cinnamon'**
  String get phoBoIngredient4Name;

  /// No description provided for @phoBoStep1.
  ///
  /// In en, this message translates to:
  /// **'Char onion and ginger over open flame until fragrant.'**
  String get phoBoStep1;

  /// No description provided for @phoBoStep2.
  ///
  /// In en, this message translates to:
  /// **'Boil beef bones with spices for 3 hours to make broth.'**
  String get phoBoStep2;

  /// No description provided for @phoBoStep3.
  ///
  /// In en, this message translates to:
  /// **'Cook rice noodles according to package instructions.'**
  String get phoBoStep3;

  /// No description provided for @phoBoStep4.
  ///
  /// In en, this message translates to:
  /// **'Slice beef thinly for quick cooking.'**
  String get phoBoStep4;

  /// No description provided for @phoBoStep5.
  ///
  /// In en, this message translates to:
  /// **'Assemble bowls with noodles and raw beef.'**
  String get phoBoStep5;

  /// No description provided for @phoBoStep6.
  ///
  /// In en, this message translates to:
  /// **'Pour hot broth over to cook beef and garnish with herbs.'**
  String get phoBoStep6;

  /// No description provided for @banhMiName.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese Banh Mi'**
  String get banhMiName;

  /// No description provided for @banhMiDescription.
  ///
  /// In en, this message translates to:
  /// **'Crispy baguette with Vietnamese pickled vegetables.'**
  String get banhMiDescription;

  /// No description provided for @banhMiIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get banhMiIngredient1Quantity;

  /// No description provided for @banhMiIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'French baguettes'**
  String get banhMiIngredient1Name;

  /// No description provided for @banhMiIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'200g'**
  String get banhMiIngredient2Quantity;

  /// No description provided for @banhMiIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese ham'**
  String get banhMiIngredient2Name;

  /// No description provided for @banhMiIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'100g'**
  String get banhMiIngredient3Quantity;

  /// No description provided for @banhMiIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'pickled carrots'**
  String get banhMiIngredient3Name;

  /// No description provided for @banhMiIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'1/4 cup'**
  String get banhMiIngredient4Quantity;

  /// No description provided for @banhMiIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'cilantro leaves'**
  String get banhMiIngredient4Name;

  /// No description provided for @banhMiStep1.
  ///
  /// In en, this message translates to:
  /// **'Slice baguettes lengthwise, hollow slightly.'**
  String get banhMiStep1;

  /// No description provided for @banhMiStep2.
  ///
  /// In en, this message translates to:
  /// **'Spread mayonnaise and pâté inside.'**
  String get banhMiStep2;

  /// No description provided for @banhMiStep3.
  ///
  /// In en, this message translates to:
  /// **'Layer with Vietnamese ham and cucumber.'**
  String get banhMiStep3;

  /// No description provided for @banhMiStep4.
  ///
  /// In en, this message translates to:
  /// **'Add pickled vegetables and cilantro.'**
  String get banhMiStep4;

  /// No description provided for @banhMiStep5.
  ///
  /// In en, this message translates to:
  /// **'Season with soy sauce and chili.'**
  String get banhMiStep5;

  /// No description provided for @banhMiStep6.
  ///
  /// In en, this message translates to:
  /// **'Press sandwich lightly and serve fresh.'**
  String get banhMiStep6;

  /// No description provided for @bunBoHueName.
  ///
  /// In en, this message translates to:
  /// **'Bun Bo Hue'**
  String get bunBoHueName;

  /// No description provided for @bunBoHueDescription.
  ///
  /// In en, this message translates to:
  /// **'Spicy beef noodle soup from Hue.'**
  String get bunBoHueDescription;

  /// No description provided for @bunBoHueIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'400g'**
  String get bunBoHueIngredient1Quantity;

  /// No description provided for @bunBoHueIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'thick round rice noodles'**
  String get bunBoHueIngredient1Name;

  /// No description provided for @bunBoHueIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'500g'**
  String get bunBoHueIngredient2Quantity;

  /// No description provided for @bunBoHueIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'beef shank'**
  String get bunBoHueIngredient2Name;

  /// No description provided for @bunBoHueIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'200g'**
  String get bunBoHueIngredient3Quantity;

  /// No description provided for @bunBoHueIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'pork hock'**
  String get bunBoHueIngredient3Name;

  /// No description provided for @bunBoHueIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'3 tbsp'**
  String get bunBoHueIngredient4Quantity;

  /// No description provided for @bunBoHueIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'shrimp paste'**
  String get bunBoHueIngredient4Name;

  /// No description provided for @bunBoHueIngredient5Quantity.
  ///
  /// In en, this message translates to:
  /// **'2 tbsp'**
  String get bunBoHueIngredient5Quantity;

  /// No description provided for @bunBoHueIngredient5Name.
  ///
  /// In en, this message translates to:
  /// **'chili oil'**
  String get bunBoHueIngredient5Name;

  /// No description provided for @bunBoHueStep1.
  ///
  /// In en, this message translates to:
  /// **'Boil beef and pork bones for rich broth.'**
  String get bunBoHueStep1;

  /// No description provided for @bunBoHueStep2.
  ///
  /// In en, this message translates to:
  /// **'Add lemongrass, onions, and spices to broth.'**
  String get bunBoHueStep2;

  /// No description provided for @bunBoHueStep3.
  ///
  /// In en, this message translates to:
  /// **'Cook thick rice noodles until tender.'**
  String get bunBoHueStep3;

  /// No description provided for @bunBoHueStep4.
  ///
  /// In en, this message translates to:
  /// **'Slice cooked beef and pork thinly.'**
  String get bunBoHueStep4;

  /// No description provided for @bunBoHueStep5.
  ///
  /// In en, this message translates to:
  /// **'Season broth with shrimp paste and chili oil.'**
  String get bunBoHueStep5;

  /// No description provided for @bunBoHueStep6.
  ///
  /// In en, this message translates to:
  /// **'Serve with fresh herbs and lime wedges.'**
  String get bunBoHueStep6;

  /// No description provided for @rendangName.
  ///
  /// In en, this message translates to:
  /// **'Beef Rendang'**
  String get rendangName;

  /// No description provided for @rendangDescription.
  ///
  /// In en, this message translates to:
  /// **'Indonesian slow-cooked spicy beef curry.'**
  String get rendangDescription;

  /// No description provided for @rendangIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'800g'**
  String get rendangIngredient1Quantity;

  /// No description provided for @rendangIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'beef chuck, cubed'**
  String get rendangIngredient1Name;

  /// No description provided for @rendangIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'400ml'**
  String get rendangIngredient2Quantity;

  /// No description provided for @rendangIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'coconut milk'**
  String get rendangIngredient2Name;

  /// No description provided for @rendangIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'4 tbsp'**
  String get rendangIngredient3Quantity;

  /// No description provided for @rendangIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'rendang spice paste'**
  String get rendangIngredient3Name;

  /// No description provided for @rendangIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get rendangIngredient4Quantity;

  /// No description provided for @rendangIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'lemongrass stalks'**
  String get rendangIngredient4Name;

  /// No description provided for @rendangStep1.
  ///
  /// In en, this message translates to:
  /// **'Brown beef cubes in a heavy pot.'**
  String get rendangStep1;

  /// No description provided for @rendangStep2.
  ///
  /// In en, this message translates to:
  /// **'Add spice paste and cook until fragrant.'**
  String get rendangStep2;

  /// No description provided for @rendangStep3.
  ///
  /// In en, this message translates to:
  /// **'Pour in coconut milk and add aromatics.'**
  String get rendangStep3;

  /// No description provided for @rendangStep4.
  ///
  /// In en, this message translates to:
  /// **'Simmer on low heat for 2 hours.'**
  String get rendangStep4;

  /// No description provided for @rendangStep5.
  ///
  /// In en, this message translates to:
  /// **'Continue cooking until sauce thickens.'**
  String get rendangStep5;

  /// No description provided for @rendangStep6.
  ///
  /// In en, this message translates to:
  /// **'Stir frequently in final 30 minutes until dark.'**
  String get rendangStep6;

  /// No description provided for @satayName.
  ///
  /// In en, this message translates to:
  /// **'Chicken Satay'**
  String get satayName;

  /// No description provided for @satayDescription.
  ///
  /// In en, this message translates to:
  /// **'Grilled chicken skewers with peanut sauce.'**
  String get satayDescription;

  /// No description provided for @satayIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'600g'**
  String get satayIngredient1Quantity;

  /// No description provided for @satayIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'chicken thigh, cubed'**
  String get satayIngredient1Name;

  /// No description provided for @satayIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'2 tbsp'**
  String get satayIngredient2Quantity;

  /// No description provided for @satayIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'coconut milk'**
  String get satayIngredient2Name;

  /// No description provided for @satayIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'1 tbsp'**
  String get satayIngredient3Quantity;

  /// No description provided for @satayIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'palm sugar'**
  String get satayIngredient3Name;

  /// No description provided for @satayIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'20'**
  String get satayIngredient4Quantity;

  /// No description provided for @satayIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'bamboo skewers'**
  String get satayIngredient4Name;

  /// No description provided for @satayIngredient5Quantity.
  ///
  /// In en, this message translates to:
  /// **'1/2 cup'**
  String get satayIngredient5Quantity;

  /// No description provided for @satayIngredient5Name.
  ///
  /// In en, this message translates to:
  /// **'peanut sauce'**
  String get satayIngredient5Name;

  /// No description provided for @satayStep1.
  ///
  /// In en, this message translates to:
  /// **'Marinate chicken in coconut milk and spices.'**
  String get satayStep1;

  /// No description provided for @satayStep2.
  ///
  /// In en, this message translates to:
  /// **'Thread chicken onto soaked bamboo skewers.'**
  String get satayStep2;

  /// No description provided for @satayStep3.
  ///
  /// In en, this message translates to:
  /// **'Grill over charcoal until golden brown.'**
  String get satayStep3;

  /// No description provided for @satayStep4.
  ///
  /// In en, this message translates to:
  /// **'Baste with remaining marinade while cooking.'**
  String get satayStep4;

  /// No description provided for @satayStep5.
  ///
  /// In en, this message translates to:
  /// **'Prepare peanut sauce with ground peanuts.'**
  String get satayStep5;

  /// No description provided for @satayStep6.
  ///
  /// In en, this message translates to:
  /// **'Serve hot with peanut sauce and cucumber.'**
  String get satayStep6;

  /// No description provided for @kungPaoChickenName.
  ///
  /// In en, this message translates to:
  /// **'Kung Pao Chicken'**
  String get kungPaoChickenName;

  /// No description provided for @kungPaoChickenDescription.
  ///
  /// In en, this message translates to:
  /// **'Spicy Sichuan chicken with peanuts.'**
  String get kungPaoChickenDescription;

  /// No description provided for @kungPaoChickenIngredient1Quantity.
  ///
  /// In en, this message translates to:
  /// **'500g'**
  String get kungPaoChickenIngredient1Quantity;

  /// No description provided for @kungPaoChickenIngredient1Name.
  ///
  /// In en, this message translates to:
  /// **'chicken breast, diced'**
  String get kungPaoChickenIngredient1Name;

  /// No description provided for @kungPaoChickenIngredient2Quantity.
  ///
  /// In en, this message translates to:
  /// **'1/2 cup'**
  String get kungPaoChickenIngredient2Quantity;

  /// No description provided for @kungPaoChickenIngredient2Name.
  ///
  /// In en, this message translates to:
  /// **'roasted peanuts'**
  String get kungPaoChickenIngredient2Name;

  /// No description provided for @kungPaoChickenIngredient3Quantity.
  ///
  /// In en, this message translates to:
  /// **'8-10'**
  String get kungPaoChickenIngredient3Quantity;

  /// No description provided for @kungPaoChickenIngredient3Name.
  ///
  /// In en, this message translates to:
  /// **'dried chilies'**
  String get kungPaoChickenIngredient3Name;

  /// No description provided for @kungPaoChickenIngredient4Quantity.
  ///
  /// In en, this message translates to:
  /// **'1 tsp'**
  String get kungPaoChickenIngredient4Quantity;

  /// No description provided for @kungPaoChickenIngredient4Name.
  ///
  /// In en, this message translates to:
  /// **'Sichuan peppercorns'**
  String get kungPaoChickenIngredient4Name;

  /// No description provided for @kungPaoChickenStep1.
  ///
  /// In en, this message translates to:
  /// **'Marinate chicken pieces in soy sauce and rice wine.'**
  String get kungPaoChickenStep1;

  /// No description provided for @kungPaoChickenStep2.
  ///
  /// In en, this message translates to:
  /// **'Toast peanuts and dried chilies until fragrant.'**
  String get kungPaoChickenStep2;

  /// No description provided for @kungPaoChickenStep3.
  ///
  /// In en, this message translates to:
  /// **'Stir-fry chicken until golden brown.'**
  String get kungPaoChickenStep3;

  /// No description provided for @kungPaoChickenStep4.
  ///
  /// In en, this message translates to:
  /// **'Add aromatics and sauce, toss well.'**
  String get kungPaoChickenStep4;

  /// No description provided for @kungPaoChickenStep5.
  ///
  /// In en, this message translates to:
  /// **'Add peanuts and mix everything together.'**
  String get kungPaoChickenStep5;

  /// No description provided for @kungPaoChickenStep6.
  ///
  /// In en, this message translates to:
  /// **'Serve hot with steamed rice.'**
  String get kungPaoChickenStep6;

  /// Label for estimated recipe cost
  ///
  /// In en, this message translates to:
  /// **'Estimated cost'**
  String get estimatedCost;

  /// Label for cost calculated per serving
  ///
  /// In en, this message translates to:
  /// **'Cost per serving'**
  String get costPerServing;

  /// Label for low-cost recipes
  ///
  /// In en, this message translates to:
  /// **'Budget friendly'**
  String get budgetFriendly;

  /// Label for medium-cost recipes
  ///
  /// In en, this message translates to:
  /// **'Moderate price'**
  String get moderatePrice;

  /// Label for high-cost recipes
  ///
  /// In en, this message translates to:
  /// **'Premium recipe'**
  String get premiumRecipe;

  /// Label when recipe price is unknown
  ///
  /// In en, this message translates to:
  /// **'Price not available'**
  String get priceNotAvailable;

  /// Label for total cost of all ingredients
  ///
  /// In en, this message translates to:
  /// **'Total ingredients price'**
  String get totalIngredientsPrice;

  /// No description provided for @exchangeRateUSD.
  ///
  /// In en, this message translates to:
  /// **'1.0'**
  String get exchangeRateUSD;

  /// No description provided for @exchangeRateEUR.
  ///
  /// In en, this message translates to:
  /// **'0.92'**
  String get exchangeRateEUR;

  /// No description provided for @exchangeRateVND.
  ///
  /// In en, this message translates to:
  /// **'24350.0'**
  String get exchangeRateVND;

  /// No description provided for @exchangeRateIDR.
  ///
  /// In en, this message translates to:
  /// **'15750.0'**
  String get exchangeRateIDR;

  /// No description provided for @currencySymbolUSD.
  ///
  /// In en, this message translates to:
  /// **'\$'**
  String get currencySymbolUSD;

  /// No description provided for @currencySymbolEUR.
  ///
  /// In en, this message translates to:
  /// **'€'**
  String get currencySymbolEUR;

  /// No description provided for @currencySymbolVND.
  ///
  /// In en, this message translates to:
  /// **'₫'**
  String get currencySymbolVND;

  /// No description provided for @currencySymbolIDR.
  ///
  /// In en, this message translates to:
  /// **'Rp'**
  String get currencySymbolIDR;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'id', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
