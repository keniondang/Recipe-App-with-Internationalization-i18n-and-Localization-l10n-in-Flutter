import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/providers/exchange_rates_provider.dart';
import '../l10n/arb/app_localizations.dart';

class LocalizationHelper {
  static NumberFormat getNumberFormat(Locale locale) {
    return NumberFormat.decimalPattern(locale.toString());
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

  // Format price with proper currency for current locale
  static String formatPrice(BuildContext context, double price) {
    final locale = Localizations.localeOf(context);
    final exchangeRates =
        Provider.of<ExchangeRatesProvider>(context).exchangeRates;

    final numberFormat = NumberFormat.simpleCurrency(locale: locale.toString());

    double localPrice =
        price * exchangeRates[numberFormat.currencyName!.toLowerCase()];

    return numberFormat.format(localPrice);
  }
}
