// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get navigationHome => 'Startseite';

  @override
  String get navigationSettings => 'Einstellungen';

  @override
  String get homeTitle => 'Was kochst du\nheute?';

  @override
  String get searchHint => 'Nach Rezepten suchen...';

  @override
  String get categoriesTitle => 'Kategorien';

  @override
  String get viewAllButton => 'Alle anzeigen';

  @override
  String get filterByCuisine => 'Nach Küche filtern';

  @override
  String get noRecipesFound => 'Keine Rezepte gefunden';

  @override
  String get searchDifferentKeywords =>
      'Versuchen Sie es mit anderen Suchbegriffen';

  @override
  String minutesShort(Object minutes) {
    return '${minutes}min';
  }

  @override
  String get cookTime => 'Kochzeit';

  @override
  String get servings => 'Portionen';

  @override
  String get rating => 'Bewertung';

  @override
  String get ingredients => 'Zutaten';

  @override
  String get instructions => 'Anweisungen';

  @override
  String minutesLong(Object minutes) {
    return '$minutes Minuten';
  }

  @override
  String hoursLong(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Stunden',
      one: 'Stunde',
    );
    return '$hours $_temp0';
  }

  @override
  String hoursAndMinutes(int hours, int minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String get calories => 'kcal';

  @override
  String get caloriesLong => 'Kalorien';

  @override
  String daysAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Tagen',
      one: 'Tag',
    );
    return 'vor $days $_temp0';
  }

  @override
  String hoursAgo(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Stunden',
      one: 'Stunde',
    );
    return 'vor $hours $_temp0';
  }

  @override
  String minutesAgo(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Minuten',
      one: 'Minute',
    );
    return 'vor $minutes $_temp0';
  }

  @override
  String get justNow => 'gerade eben';

  @override
  String createdOn(String date) {
    return 'Erstellt am $date';
  }

  @override
  String updatedOn(String time) {
    return 'Aktualisiert $time';
  }

  @override
  String serves(int count) {
    return 'Für $count Personen';
  }

  @override
  String totalTime(String time) {
    return 'Gesamtzeit: $time';
  }

  @override
  String get nutritionPerServing => 'Pro Portion';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get preferencesSection => 'Einstellungen';

  @override
  String get aboutSection => 'Über';

  @override
  String get languageSetting => 'Sprache';

  @override
  String get languageSubtitle => 'Deutsch';

  @override
  String get notificationsSetting => 'Benachrichtigungen';

  @override
  String get notificationsSubtitle => 'Benachrichtigungen verwalten';

  @override
  String get themeSetting => 'Design';

  @override
  String get themeSubtitle => 'Heller Modus';

  @override
  String get appInfoSetting => 'App-Informationen';

  @override
  String get appInfoSubtitle => 'Version 1.0.0';

  @override
  String get helpSetting => 'Hilfe & Support';

  @override
  String get helpSubtitle => 'Hilfe zur App erhalten';

  @override
  String get rateSetting => 'App bewerten';

  @override
  String get rateSubtitle => 'Feedback teilen';

  @override
  String get selectLanguageTitle => 'Sprache auswählen';

  @override
  String get cancelButton => 'Abbrechen';

  @override
  String get applyButton => 'Anwenden';

  @override
  String get englishLanguage => 'Englisch';

  @override
  String get vietnameseLanguage => 'Vietnamesisch';

  @override
  String get germanLanguage => 'Deutsch';

  @override
  String get indonesianLanguage => 'Indonesisch';

  @override
  String get cuisineAll => 'Alle';

  @override
  String get cuisineVietnamese => 'Vietnamesisch';

  @override
  String get cuisineWestern => 'Westlich';

  @override
  String get cuisineIndonesian => 'Indonesisch';

  @override
  String get cuisineChinese => 'Chinesisch';

  @override
  String get notificationSettingsPlaceholder =>
      'Benachrichtigungseinstellungen werden hier implementiert!';

  @override
  String get themeOptionsPlaceholder =>
      'Design-Optionen werden hier implementiert!';

  @override
  String get helpSupportPlaceholder =>
      'Hilfe & Support wird hier implementiert!';

  @override
  String get ratingThankYou =>
      'Danke! Die Bewertungsfunktion wird hier implementiert!';

  @override
  String get appName => 'Rezept-App';

  @override
  String get appVersion => '1.0.0';

  @override
  String get appLegalese => '© 2025 Rezept-App. Alle Rechte vorbehalten.';

  @override
  String get appDescription =>
      'Eine einfache und elegante Rezept-App, entwickelt mit Flutter.';

  @override
  String get promoBanner1 => 'Koche die besten\nRezepte zu Hause';

  @override
  String get promoBanner2 => 'Entdecke jeden Tag\nneue Geschmäcker';

  @override
  String get promoBanner3 => 'Einfache Rezepte für\ndein geschäftiges Leben';

  @override
  String get promoBanner4 => 'Beeindrucke deine Gäste\nmit deinen Fähigkeiten';

  @override
  String get beefSteakName => 'Rindersteak';

  @override
  String get beefSteakDescription =>
      'Perfekt gegrilltes Rindersteak mit Kräutern.';

  @override
  String get beefSteakIngredient1Quantity => '2 Stück';

  @override
  String get beefSteakIngredient1Name => 'Rindersteaks (je 8oz)';

  @override
  String get beefSteakIngredient2Quantity => '2 EL';

  @override
  String get beefSteakIngredient2Name => 'Olivenöl';

  @override
  String get beefSteakIngredient3Quantity => '1 TL';

  @override
  String get beefSteakIngredient3Name => 'Salz';

  @override
  String get beefSteakIngredient4Quantity => '1/2 TL';

  @override
  String get beefSteakIngredient4Name => 'schwarzer Pfeffer';

  @override
  String get beefSteakStep1 => 'Steaks beidseitig mit Salz und Pfeffer würzen.';

  @override
  String get beefSteakStep2 =>
      'Olivenöl in einer Gusseisenpfanne bei hoher Hitze erhitzen.';

  @override
  String get beefSteakStep3 =>
      'Steaks 3-4 Minuten pro Seite für medium-rare braten.';

  @override
  String get beefSteakStep4 =>
      'Butter, Knoblauch und Rosmarin in die Pfanne geben.';

  @override
  String get beefSteakStep5 =>
      'Steaks mit Kräuterbutter begießen für extra Geschmack.';

  @override
  String get beefSteakStep6 => '5 Minuten ruhen lassen vor dem Servieren.';

  @override
  String get phoBoName => 'Pho Bo';

  @override
  String get phoBoDescription =>
      'Traditionelle vietnamesische Rindfleisch-Nudelsuppe.';

  @override
  String get phoBoIngredient1Quantity => '1 kg';

  @override
  String get phoBoIngredient1Name => 'Rinderknochen';

  @override
  String get phoBoIngredient2Quantity => '400g';

  @override
  String get phoBoIngredient2Name => 'Reisnudeln (bánh phở)';

  @override
  String get phoBoIngredient3Quantity => '3 Stück';

  @override
  String get phoBoIngredient3Name => 'Sternanis';

  @override
  String get phoBoIngredient4Quantity => '1 Stange';

  @override
  String get phoBoIngredient4Name => 'Zimt';

  @override
  String get phoBoStep1 =>
      'Zwiebel und Ingwer über offener Flamme rösten bis aromatisch.';

  @override
  String get phoBoStep2 =>
      'Rinderknochen 3 Stunden mit Gewürzen kochen für Brühe.';

  @override
  String get phoBoStep3 => 'Reisnudeln nach Packungsanweisung kochen.';

  @override
  String get phoBoStep4 => 'Rindfleisch dünn schneiden für schnelles Garen.';

  @override
  String get phoBoStep5 =>
      'Schalen mit Nudeln und rohem Rindfleisch zusammenstellen.';

  @override
  String get phoBoStep6 =>
      'Heiße Brühe darüber gießen um Fleisch zu garen und mit Kräutern garnieren.';

  @override
  String get banhMiName => 'Vietnamesisches Banh Mi';

  @override
  String get banhMiDescription =>
      'Knuspriges Baguette mit vietnamesischem eingelegtem Gemüse.';

  @override
  String get banhMiIngredient1Quantity => '2';

  @override
  String get banhMiIngredient1Name => 'französische Baguettes';

  @override
  String get banhMiIngredient2Quantity => '200g';

  @override
  String get banhMiIngredient2Name => 'vietnamesischer Schinken';

  @override
  String get banhMiIngredient3Quantity => '100g';

  @override
  String get banhMiIngredient3Name => 'eingelegte Karotten';

  @override
  String get banhMiIngredient4Quantity => '1/4 Tasse';

  @override
  String get banhMiIngredient4Name => 'Korianderblätter';

  @override
  String get banhMiStep1 => 'Baguettes längs aufschneiden, leicht aushöhlen.';

  @override
  String get banhMiStep2 => 'Mayonnaise und Pastete innen verstreichen.';

  @override
  String get banhMiStep3 => 'Mit vietnamesischem Schinken und Gurke belegen.';

  @override
  String get banhMiStep4 => 'Eingelegtes Gemüse und Koriander hinzufügen.';

  @override
  String get banhMiStep5 => 'Mit Sojasauce und Chili würzen.';

  @override
  String get banhMiStep6 => 'Sandwich leicht pressen und frisch servieren.';

  @override
  String get bunBoHueName => 'Bun Bo Hue';

  @override
  String get bunBoHueDescription => 'Scharfe Rindfleisch-Nudelsuppe aus Hue.';

  @override
  String get bunBoHueIngredient1Quantity => '400g';

  @override
  String get bunBoHueIngredient1Name => 'dicke runde Reisnudeln';

  @override
  String get bunBoHueIngredient2Quantity => '500g';

  @override
  String get bunBoHueIngredient2Name => 'Rinderhaxe';

  @override
  String get bunBoHueIngredient3Quantity => '200g';

  @override
  String get bunBoHueIngredient3Name => 'Schweinshaxe';

  @override
  String get bunBoHueIngredient4Quantity => '3 EL';

  @override
  String get bunBoHueIngredient4Name => 'Garnelenpaste';

  @override
  String get bunBoHueIngredient5Quantity => '2 EL';

  @override
  String get bunBoHueIngredient5Name => 'Chiliöl';

  @override
  String get bunBoHueStep1 =>
      'Rinder- und Schweineknochen für kräftige Brühe kochen.';

  @override
  String get bunBoHueStep2 =>
      'Zitronengras, Zwiebeln und Gewürze zur Brühe geben.';

  @override
  String get bunBoHueStep3 => 'Dicke Reisnudeln weich kochen.';

  @override
  String get bunBoHueStep4 => 'Gekochtes Rind und Schwein dünn schneiden.';

  @override
  String get bunBoHueStep5 => 'Brühe mit Garnelenpaste und Chiliöl würzen.';

  @override
  String get bunBoHueStep6 =>
      'Mit frischen Kräutern und Limettenschnitzen servieren.';

  @override
  String get rendangName => 'Rindfleisch Rendang';

  @override
  String get rendangDescription =>
      'Indonesisches langsam gekochtes scharfes Rindfleisch-Curry.';

  @override
  String get rendangIngredient1Quantity => '800g';

  @override
  String get rendangIngredient1Name => 'Rindfleisch, gewürfelt';

  @override
  String get rendangIngredient2Quantity => '400ml';

  @override
  String get rendangIngredient2Name => 'Kokosmilch';

  @override
  String get rendangIngredient3Quantity => '4 EL';

  @override
  String get rendangIngredient3Name => 'Rendang-Gewürzpaste';

  @override
  String get rendangIngredient4Quantity => '3';

  @override
  String get rendangIngredient4Name => 'Zitronengras-Stängel';

  @override
  String get rendangStep1 =>
      'Rindfleischwürfel in einem schweren Topf anbraten.';

  @override
  String get rendangStep2 =>
      'Gewürzpaste hinzufügen und kochen bis aromatisch.';

  @override
  String get rendangStep3 => 'Kokosmilch eingießen und Aromaten hinzufügen.';

  @override
  String get rendangStep4 => '2 Stunden bei niedriger Hitze köcheln lassen.';

  @override
  String get rendangStep5 => 'Weiterkochen bis die Sauce eindickt.';

  @override
  String get rendangStep6 =>
      'In den letzten 30 Minuten häufig rühren bis dunkel.';

  @override
  String get satayName => 'Hähnchen-Satay';

  @override
  String get satayDescription => 'Gegrillte Hähnchen-Spieße mit Erdnusssauce.';

  @override
  String get satayIngredient1Quantity => '600g';

  @override
  String get satayIngredient1Name => 'Hähnchenschenkel, gewürfelt';

  @override
  String get satayIngredient2Quantity => '2 EL';

  @override
  String get satayIngredient2Name => 'Kokosmilch';

  @override
  String get satayIngredient3Quantity => '1 EL';

  @override
  String get satayIngredient3Name => 'Palmzucker';

  @override
  String get satayIngredient4Quantity => '20';

  @override
  String get satayIngredient4Name => 'Bambusspieße';

  @override
  String get satayIngredient5Quantity => '1/2 Tasse';

  @override
  String get satayIngredient5Name => 'Erdnusssauce';

  @override
  String get satayStep1 => 'Hähnchen in Kokosmilch und Gewürzen marinieren.';

  @override
  String get satayStep2 => 'Hähnchen auf eingeweichte Bambusspieße stecken.';

  @override
  String get satayStep3 => 'Über Holzkohle grillen bis goldbraun.';

  @override
  String get satayStep4 => 'Mit restlicher Marinade beim Grillen bestreichen.';

  @override
  String get satayStep5 => 'Erdnusssauce mit gemahlenen Erdnüssen zubereiten.';

  @override
  String get satayStep6 => 'Heiß mit Erdnusssauce und Gurke servieren.';

  @override
  String get kungPaoChickenName => 'Kung Pao Hähnchen';

  @override
  String get kungPaoChickenDescription =>
      'Scharfes Sichuan-Hähnchen mit Erdnüssen.';

  @override
  String get kungPaoChickenIngredient1Quantity => '500g';

  @override
  String get kungPaoChickenIngredient1Name => 'Hähnchenbrust, gewürfelt';

  @override
  String get kungPaoChickenIngredient2Quantity => '1/2 Tasse';

  @override
  String get kungPaoChickenIngredient2Name => 'geröstete Erdnüsse';

  @override
  String get kungPaoChickenIngredient3Quantity => '8-10';

  @override
  String get kungPaoChickenIngredient3Name => 'getrocknete Chilischoten';

  @override
  String get kungPaoChickenIngredient4Quantity => '1 TL';

  @override
  String get kungPaoChickenIngredient4Name => 'Sichuan-Pfefferkörner';

  @override
  String get kungPaoChickenStep1 =>
      'Hähnchenstücke in Sojasauce und Reiswein marinieren.';

  @override
  String get kungPaoChickenStep2 =>
      'Erdnüsse und getrocknete Chilischoten rösten bis aromatisch.';

  @override
  String get kungPaoChickenStep3 => 'Hähnchen anbraten bis goldbraun.';

  @override
  String get kungPaoChickenStep4 =>
      'Aromaten und Sauce hinzufügen, gut vermischen.';

  @override
  String get kungPaoChickenStep5 =>
      'Erdnüsse hinzufügen und alles zusammenmischen.';

  @override
  String get kungPaoChickenStep6 => 'Heiß mit gedämpftem Reis servieren.';

  @override
  String get estimatedCost => 'Geschätzte Kosten';

  @override
  String get costPerServing => 'Kosten pro Portion';

  @override
  String get budgetFriendly => 'Budgetfreundlich';

  @override
  String get moderatePrice => 'Moderater Preis';

  @override
  String get premiumRecipe => 'Premium-Rezept';

  @override
  String get priceNotAvailable => 'Preis nicht verfügbar';

  @override
  String get totalIngredientsPrice => 'Gesamtpreis der Zutaten';

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
