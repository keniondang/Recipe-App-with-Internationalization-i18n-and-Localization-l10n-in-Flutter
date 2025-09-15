import 'package:flutter/material.dart';
import '../l10n/arb/app_localizations.dart';
import '../utils/localization_helper.dart';

class Recipe {
  final String id;
  final String image;
  final int calories;
  final int time;
  final double rating;
  final int servings;
  final String cuisine;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  
  // Price fields
  final double? basePrice; // Price in USD (base currency)
  final String? originalCurrency; // Original currency if different from base
  
  // Localization keys instead of hardcoded strings
  final String nameKey;
  final String descriptionKey;
  final List<RecipeIngredient> ingredients;
  final List<String> stepKeys;

  const Recipe({
    required this.id,
    required this.image,
    required this.calories,
    required this.time,
    required this.rating,
    required this.servings,
    required this.cuisine,
    required this.nameKey,
    required this.descriptionKey,
    required this.ingredients,
    required this.stepKeys,
    this.createdAt,
    this.updatedAt,
    this.basePrice,
    this.originalCurrency,
  });
  
  // Price formatting methods using updated LocalizationHelper
  String getFormattedPrice(BuildContext context) {
    if (basePrice == null) return '';
    return LocalizationHelper.formatPrice(context, basePrice!);
  }
  
  String getFormattedPriceWithCurrency(BuildContext context, String currencyCode) {
    if (basePrice == null) return '';
    final convertedPrice = LocalizationHelper.convertPrice(
      context,
      basePrice!,
      originalCurrency ?? 'USD', // Use originalCurrency if available
      currencyCode,
    );
    return LocalizationHelper.formatPriceWithCurrency(context, convertedPrice, currencyCode);
  }
  
  // Get price per serving in formatted string
  String getFormattedPricePerServing(BuildContext context) {
    if (basePrice == null) return '';
    final pricePerServing = basePrice! / servings;
    return LocalizationHelper.formatPrice(context, pricePerServing);
  }
  
  // Get price per serving with specific currency
  String getFormattedPricePerServingWithCurrency(BuildContext context, String currencyCode) {
    if (basePrice == null) return '';
    final pricePerServing = basePrice! / servings;
    final convertedPrice = LocalizationHelper.convertPrice(
      context,
      pricePerServing,
      originalCurrency ?? 'USD',
      currencyCode,
    );
    return LocalizationHelper.formatPriceWithCurrency(context, convertedPrice, currencyCode);
  }
  
  // Check if recipe has pricing information
  bool get hasPrice => basePrice != null;
  
  // Get price category for filtering
  PriceCategory get priceCategory {
    if (basePrice == null) return PriceCategory.unknown;
    if (basePrice! < 5.0) return PriceCategory.budget;
    if (basePrice! < 15.0) return PriceCategory.moderate;
    return PriceCategory.premium;
  }
  
  // Existing formatted getters that use proper localization
  String getFormattedTime(BuildContext context) {
    return LocalizationHelper.formatCookingTime(context, time);
  }
  
  String getFormattedTimeShort(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final numberFormat = LocalizationHelper.getNumberFormat(locale);
    return l10n.minutesShort(numberFormat.format(time));
  }
  
  String getFormattedRating(BuildContext context) {
    return LocalizationHelper.formatRating(context, rating);
  }
  
  String getFormattedServings(BuildContext context) {
    return LocalizationHelper.formatServings(context, servings);
  }
  
  String getFormattedCalories(BuildContext context) {
    return LocalizationHelper.formatCalories(context, calories);
  }
  
  String getFormattedCreatedDate(BuildContext context) {
    if (createdAt == null) return '';
    return LocalizationHelper.formatRecipeDate(context, createdAt!);
  }
  
  String getFormattedRelativeTime(BuildContext context) {
    if (updatedAt == null) return '';
    return LocalizationHelper.formatRelativeTime(context, updatedAt!);
  }
  
  // Helper methods to get localized content (keeping existing methods)
  String getLocalizedName(AppLocalizations l10n) {
    return _getLocalizedString(l10n, nameKey);
  }
  
  String getLocalizedDescription(AppLocalizations l10n) {
    return _getLocalizedString(l10n, descriptionKey);
  }
  
  List<String> getLocalizedSteps(AppLocalizations l10n) {
    return stepKeys.map((key) => _getLocalizedString(l10n, key)).toList();
  }
  
  String _getLocalizedString(AppLocalizations l10n, String key) {
    try {
      switch (key) {
        // Beef Steak
        case 'beefSteakName': return l10n.beefSteakName;
        case 'beefSteakDescription': return l10n.beefSteakDescription;
        case 'beefSteakStep1': return l10n.beefSteakStep1;
        case 'beefSteakStep2': return l10n.beefSteakStep2;
        case 'beefSteakStep3': return l10n.beefSteakStep3;
        case 'beefSteakStep4': return l10n.beefSteakStep4;
        case 'beefSteakStep5': return l10n.beefSteakStep5;
        case 'beefSteakStep6': return l10n.beefSteakStep6;
        
        // Pho Bo
        case 'phoBoName': return l10n.phoBoName;
        case 'phoBoDescription': return l10n.phoBoDescription;
        case 'phoBoStep1': return l10n.phoBoStep1;
        case 'phoBoStep2': return l10n.phoBoStep2;
        case 'phoBoStep3': return l10n.phoBoStep3;
        case 'phoBoStep4': return l10n.phoBoStep4;
        case 'phoBoStep5': return l10n.phoBoStep5;
        case 'phoBoStep6': return l10n.phoBoStep6;
        
        // Banh Mi
        case 'banhMiName': return l10n.banhMiName;
        case 'banhMiDescription': return l10n.banhMiDescription;
        case 'banhMiStep1': return l10n.banhMiStep1;
        case 'banhMiStep2': return l10n.banhMiStep2;
        case 'banhMiStep3': return l10n.banhMiStep3;
        case 'banhMiStep4': return l10n.banhMiStep4;
        case 'banhMiStep5': return l10n.banhMiStep5;
        case 'banhMiStep6': return l10n.banhMiStep6;
        
        // Bun Bo Hue
        case 'bunBoHueName': return l10n.bunBoHueName;
        case 'bunBoHueDescription': return l10n.bunBoHueDescription;
        case 'bunBoHueStep1': return l10n.bunBoHueStep1;
        case 'bunBoHueStep2': return l10n.bunBoHueStep2;
        case 'bunBoHueStep3': return l10n.bunBoHueStep3;
        case 'bunBoHueStep4': return l10n.bunBoHueStep4;
        case 'bunBoHueStep5': return l10n.bunBoHueStep5;
        case 'bunBoHueStep6': return l10n.bunBoHueStep6;
        
        // Rendang
        case 'rendangName': return l10n.rendangName;
        case 'rendangDescription': return l10n.rendangDescription;
        case 'rendangStep1': return l10n.rendangStep1;
        case 'rendangStep2': return l10n.rendangStep2;
        case 'rendangStep3': return l10n.rendangStep3;
        case 'rendangStep4': return l10n.rendangStep4;
        case 'rendangStep5': return l10n.rendangStep5;
        case 'rendangStep6': return l10n.rendangStep6;
        
        // Satay
        case 'satayName': return l10n.satayName;
        case 'satayDescription': return l10n.satayDescription;
        case 'satayStep1': return l10n.satayStep1;
        case 'satayStep2': return l10n.satayStep2;
        case 'satayStep3': return l10n.satayStep3;
        case 'satayStep4': return l10n.satayStep4;
        case 'satayStep5': return l10n.satayStep5;
        case 'satayStep6': return l10n.satayStep6;
        
        // Kung Pao Chicken
        case 'kungPaoChickenName': return l10n.kungPaoChickenName;
        case 'kungPaoChickenDescription': return l10n.kungPaoChickenDescription;
        case 'kungPaoChickenStep1': return l10n.kungPaoChickenStep1;
        case 'kungPaoChickenStep2': return l10n.kungPaoChickenStep2;
        case 'kungPaoChickenStep3': return l10n.kungPaoChickenStep3;
        case 'kungPaoChickenStep4': return l10n.kungPaoChickenStep4;
        case 'kungPaoChickenStep5': return l10n.kungPaoChickenStep5;
        case 'kungPaoChickenStep6': return l10n.kungPaoChickenStep6;
        
        default: return key; // Fallback to key name if not found
      }
    } catch (e) {
      return key; // Fallback to key name on any error
    }
  }
}

// Price category enum for filtering
enum PriceCategory {
  budget,   // < $5
  moderate, // $5 - $15
  premium,  // > $15
  unknown,  // No price info
}

class RecipeIngredient {
  final String quantityKey; // ARB key for quantity like "2 pieces"
  final String nameKey;     // ARB key for ingredient name
  
  const RecipeIngredient({
    required this.quantityKey,
    required this.nameKey,
  });
  
  // Helper method to get localized ingredient text
  String getLocalizedText(AppLocalizations l10n) {
    final quantity = _getLocalizedString(l10n, quantityKey);
    final name = _getLocalizedString(l10n, nameKey);
    return '$quantity $name';
  }
  
  String _getLocalizedString(AppLocalizations l10n, String key) {
    try {
      switch (key) {
        // Beef Steak Ingredients
        case 'beefSteakIngredient1Quantity': return l10n.beefSteakIngredient1Quantity;
        case 'beefSteakIngredient1Name': return l10n.beefSteakIngredient1Name;
        case 'beefSteakIngredient2Quantity': return l10n.beefSteakIngredient2Quantity;
        case 'beefSteakIngredient2Name': return l10n.beefSteakIngredient2Name;
        case 'beefSteakIngredient3Quantity': return l10n.beefSteakIngredient3Quantity;
        case 'beefSteakIngredient3Name': return l10n.beefSteakIngredient3Name;
        case 'beefSteakIngredient4Quantity': return l10n.beefSteakIngredient4Quantity;
        case 'beefSteakIngredient4Name': return l10n.beefSteakIngredient4Name;
        
        // Pho Bo Ingredients
        case 'phoBoIngredient1Quantity': return l10n.phoBoIngredient1Quantity;
        case 'phoBoIngredient1Name': return l10n.phoBoIngredient1Name;
        case 'phoBoIngredient2Quantity': return l10n.phoBoIngredient2Quantity;
        case 'phoBoIngredient2Name': return l10n.phoBoIngredient2Name;
        case 'phoBoIngredient3Quantity': return l10n.phoBoIngredient3Quantity;
        case 'phoBoIngredient3Name': return l10n.phoBoIngredient3Name;
        case 'phoBoIngredient4Quantity': return l10n.phoBoIngredient4Quantity;
        case 'phoBoIngredient4Name': return l10n.phoBoIngredient4Name;
        
        // Banh Mi Ingredients
        case 'banhMiIngredient1Quantity': return l10n.banhMiIngredient1Quantity;
        case 'banhMiIngredient1Name': return l10n.banhMiIngredient1Name;
        case 'banhMiIngredient2Quantity': return l10n.banhMiIngredient2Quantity;
        case 'banhMiIngredient2Name': return l10n.banhMiIngredient2Name;
        case 'banhMiIngredient3Quantity': return l10n.banhMiIngredient3Quantity;
        case 'banhMiIngredient3Name': return l10n.banhMiIngredient3Name;
        case 'banhMiIngredient4Quantity': return l10n.banhMiIngredient4Quantity;
        case 'banhMiIngredient4Name': return l10n.banhMiIngredient4Name;
        
        // Bun Bo Hue Ingredients
        case 'bunBoHueIngredient1Quantity': return l10n.bunBoHueIngredient1Quantity;
        case 'bunBoHueIngredient1Name': return l10n.bunBoHueIngredient1Name;
        case 'bunBoHueIngredient2Quantity': return l10n.bunBoHueIngredient2Quantity;
        case 'bunBoHueIngredient2Name': return l10n.bunBoHueIngredient2Name;
        case 'bunBoHueIngredient3Quantity': return l10n.bunBoHueIngredient3Quantity;
        case 'bunBoHueIngredient3Name': return l10n.bunBoHueIngredient3Name;
        case 'bunBoHueIngredient4Quantity': return l10n.bunBoHueIngredient4Quantity;
        case 'bunBoHueIngredient4Name': return l10n.bunBoHueIngredient4Name;
        case 'bunBoHueIngredient5Quantity': return l10n.bunBoHueIngredient5Quantity;
        case 'bunBoHueIngredient5Name': return l10n.bunBoHueIngredient5Name;
        
        // Rendang Ingredients
        case 'rendangIngredient1Quantity': return l10n.rendangIngredient1Quantity;
        case 'rendangIngredient1Name': return l10n.rendangIngredient1Name;
        case 'rendangIngredient2Quantity': return l10n.rendangIngredient2Quantity;
        case 'rendangIngredient2Name': return l10n.rendangIngredient2Name;
        case 'rendangIngredient3Quantity': return l10n.rendangIngredient3Quantity;
        case 'rendangIngredient3Name': return l10n.rendangIngredient3Name;
        case 'rendangIngredient4Quantity': return l10n.rendangIngredient4Quantity;
        case 'rendangIngredient4Name': return l10n.rendangIngredient4Name;
        
        // Satay Ingredients
        case 'satayIngredient1Quantity': return l10n.satayIngredient1Quantity;
        case 'satayIngredient1Name': return l10n.satayIngredient1Name;
        case 'satayIngredient2Quantity': return l10n.satayIngredient2Quantity;
        case 'satayIngredient2Name': return l10n.satayIngredient2Name;
        case 'satayIngredient3Quantity': return l10n.satayIngredient3Quantity;
        case 'satayIngredient3Name': return l10n.satayIngredient3Name;
        case 'satayIngredient4Quantity': return l10n.satayIngredient4Quantity;
        case 'satayIngredient4Name': return l10n.satayIngredient4Name;
        case 'satayIngredient5Quantity': return l10n.satayIngredient5Quantity;
        case 'satayIngredient5Name': return l10n.satayIngredient5Name;
        
        // Kung Pao Chicken Ingredients
        case 'kungPaoChickenIngredient1Quantity': return l10n.kungPaoChickenIngredient1Quantity;
        case 'kungPaoChickenIngredient1Name': return l10n.kungPaoChickenIngredient1Name;
        case 'kungPaoChickenIngredient2Quantity': return l10n.kungPaoChickenIngredient2Quantity;
        case 'kungPaoChickenIngredient2Name': return l10n.kungPaoChickenIngredient2Name;
        case 'kungPaoChickenIngredient3Quantity': return l10n.kungPaoChickenIngredient3Quantity;
        case 'kungPaoChickenIngredient3Name': return l10n.kungPaoChickenIngredient3Name;
        case 'kungPaoChickenIngredient4Quantity': return l10n.kungPaoChickenIngredient4Quantity;
        case 'kungPaoChickenIngredient4Name': return l10n.kungPaoChickenIngredient4Name;
        
        default: return key; // Fallback to key name if not found
      }
    } catch (e) {
      return key; // Fallback to key name on any error
    }
  }
}