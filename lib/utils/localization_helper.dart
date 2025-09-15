import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../l10n/arb/app_localizations.dart';

class LocalizationHelper {
  static NumberFormat getNumberFormat(Locale locale) {
    return NumberFormat.decimalPattern(locale.toString());
  }
  
  static NumberFormat getCurrencyFormat(Locale locale, {String? currencySymbol}) {
    return NumberFormat.currency(
      locale: locale.toString(),
      symbol: currencySymbol ?? '',
    );
  }
  
  static DateFormat getDateFormat(Locale locale, {String? pattern}) {
    return DateFormat(pattern, locale.toString());
  }
  
  static DateFormat getTimeFormat(Locale locale) {
    return DateFormat.jm(locale.toString());
  }
  
  static DateFormat getDateTimeFormat(Locale locale) {
    return DateFormat.yMd(locale.toString()).add_jm();
  }
  
  // Format cooking time based on locale
  static String formatCookingTime(BuildContext context, int minutes) {
    final l10n = AppLocalizations.of(context)!;
    
    if (minutes < 60) {
      return l10n.minutesLong(minutes);
    } else {
      final hours = minutes ~/ 60;
      final remainingMinutes = minutes % 60;
      
      if (remainingMinutes == 0) {
        return l10n.hoursLong(hours);
      } else {
        return l10n.hoursAndMinutes(hours, remainingMinutes);
      }
    }
  }
  
  // Format rating with proper decimal separator
  static String formatRating(BuildContext context, double rating) {
    final locale = Localizations.localeOf(context);
    final numberFormat = NumberFormat('#.#', locale.toString());
    return numberFormat.format(rating);
  }
  
  // Format servings count
  static String formatServings(BuildContext context, int servings) {
    final locale = Localizations.localeOf(context);
    final numberFormat = getNumberFormat(locale);
    return numberFormat.format(servings);
  }
  
  // Format calories
  static String formatCalories(BuildContext context, int calories) {
    final locale = Localizations.localeOf(context);
    final numberFormat = getNumberFormat(locale);
    return numberFormat.format(calories);
  }
  
  // Format recipe creation/update dates
  static String formatRecipeDate(BuildContext context, DateTime date) {
    final locale = Localizations.localeOf(context);
    final dateFormat = DateFormat.yMd(locale.toString());
    return dateFormat.format(date);
  }
  
  // Format relative time (e.g., "2 hours ago")
  static String formatRelativeTime(BuildContext context, DateTime date) {
    final l10n = AppLocalizations.of(context)!;
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays > 0) {
      return l10n.daysAgo(difference.inDays);
    } else if (difference.inHours > 0) {
      return l10n.hoursAgo(difference.inHours);
    } else if (difference.inMinutes > 0) {
      return l10n.minutesAgo(difference.inMinutes);
    } else {
      return l10n.justNow;
    }
  }
  
  // Get currency code based on locale
  static String _getCurrencyCode(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'USD';
      case 'de':
        return 'EUR';
      case 'vi':
        return 'VND';
      case 'id':
        return 'IDR';
      default:
        return 'USD';
    }
  }
  
  // Get currency symbol from localization
  static String _getCurrencySymbol(BuildContext context, String currencyCode) {
    final l10n = AppLocalizations.of(context)!;
    switch (currencyCode) {
      case 'USD':
        return l10n.currencySymbolUSD;
      case 'EUR':
        return l10n.currencySymbolEUR;
      case 'VND':
        return l10n.currencySymbolVND;
      case 'IDR':
        return l10n.currencySymbolIDR;
      default:
        return l10n.currencySymbolUSD;
    }
  }
  
  // Get exchange rate from localization
  static double _getExchangeRate(BuildContext context, String currencyCode) {
    final l10n = AppLocalizations.of(context)!;
    try {
      switch (currencyCode) {
        case 'USD':
          return double.parse(l10n.exchangeRateUSD);
        case 'EUR':
          return double.parse(l10n.exchangeRateEUR);
        case 'VND':
          return double.parse(l10n.exchangeRateVND);
        case 'IDR':
          return double.parse(l10n.exchangeRateIDR);
        default:
          return double.parse(l10n.exchangeRateUSD);
      }
    } catch (e) {
      // Fallback to 1.0 if parsing fails
      debugPrint('Error parsing exchange rate for $currencyCode: $e');
      return 1.0;
    }
  }
  
  // Format price with proper currency for current locale
  static String formatPrice(BuildContext context, double price) {
    final locale = Localizations.localeOf(context);
    final currencyCode = _getCurrencyCode(locale);
    final currencySymbol = _getCurrencySymbol(context, currencyCode);
    
    // Convert price to local currency
    final convertedPrice = convertPrice(context, price, 'USD', currencyCode);
    
    // For currencies with different decimal places
    int decimalDigits = 2;
    if (currencyCode == 'VND' || currencyCode == 'IDR') {
      decimalDigits = 0; // These currencies typically don't use decimal places
    }
    
    final format = NumberFormat.currency(
      locale: locale.toString(),
      symbol: currencySymbol,
      decimalDigits: decimalDigits,
    );
    
    return format.format(convertedPrice);
  }
  
  // Format price with specific currency (useful for comparing prices)
  static String formatPriceWithCurrency(BuildContext context, double price, String currencyCode) {
    final locale = Localizations.localeOf(context);
    final symbol = _getCurrencySymbol(context, currencyCode);
    
    int decimalDigits = 2;
    if (currencyCode == 'VND' || currencyCode == 'IDR') {
      decimalDigits = 0;
    }
    
    final format = NumberFormat.currency(
      locale: locale.toString(),
      symbol: symbol,
      decimalDigits: decimalDigits,
    );
    
    return format.format(price);
  }
  
  // Convert price between currencies using ARB values
  static double convertPrice(BuildContext context, double basePrice, String fromCurrency, String toCurrency) {
    if (fromCurrency == toCurrency) return basePrice;
    
    try {
      // Convert to USD first (base currency)
      final fromRate = _getExchangeRate(context, fromCurrency);
      final baseInUSD = basePrice / fromRate;
      
      // Convert from USD to target currency
      final toRate = _getExchangeRate(context, toCurrency);
      return baseInUSD * toRate;
    } catch (e) {
      // Return original price if conversion fails
      debugPrint('Error converting price from $fromCurrency to $toCurrency: $e');
      return basePrice;
    }
  }
}