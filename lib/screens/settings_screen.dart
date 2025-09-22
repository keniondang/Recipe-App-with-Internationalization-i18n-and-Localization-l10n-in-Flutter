import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/arb/app_localizations.dart';
import '../providers/locale_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFB),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Text(
                    l10n.settingsTitle,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                  ),
                ],
              ),
            ),

            // Settings List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildSettingsSection(
                    context,
                    l10n.preferencesSection,
                    [
                      _buildSettingsTile(
                        context,
                        icon: Icons.language_rounded,
                        title: l10n.languageSetting,
                        subtitle: _getCurrentLanguageDisplay(context),
                        onTap: () {
                          _showLanguageDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.notifications_rounded,
                        title: l10n.notificationsSetting,
                        subtitle: l10n.notificationsSubtitle,
                        onTap: () {
                          _showNotificationSettings(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.palette_rounded,
                        title: l10n.themeSetting,
                        subtitle: l10n.themeSubtitle,
                        onTap: () {
                          _showThemeOptions(context);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildSettingsSection(
                    context,
                    l10n.aboutSection,
                    [
                      _buildSettingsTile(
                        context,
                        icon: Icons.info_rounded,
                        title: l10n.appInfoSetting,
                        subtitle: l10n.appInfoSubtitle,
                        onTap: () {
                          _showAboutDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.help_rounded,
                        title: l10n.helpSetting,
                        subtitle: l10n.helpSubtitle,
                        onTap: () {
                          _showHelpDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.star_rounded,
                        title: l10n.rateSetting,
                        subtitle: l10n.rateSubtitle,
                        onTap: () {
                          _showRatingDialog(context);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getCurrentLanguageDisplay(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);

    switch (locale.languageCode) {
      case 'en':
        return "English";
      case 'vi':
        return "Tiếng Việt";
      case 'de':
        return "Deutsch";
      case 'id':
        return "Bahasa Indonesia";
      case 'ar':
        return "اَلْعَرَبِيَّةُ";
      default:
        return "English";
    }
  }

  Widget _buildSettingsSection(
      BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildSettingsTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 22,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Colors.grey.shade400,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    String? selectedLanguageCode = localeProvider.currentLocale.languageCode;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              title: Text(l10n.selectLanguageTitle),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildLanguageOption(
                    context,
                    'en',
                    'English',
                    selectedLanguageCode == 'en',
                    (value) => setState(() => selectedLanguageCode = value),
                  ),
                  _buildLanguageOption(
                    context,
                    'vi',
                    'Tiếng Việt',
                    selectedLanguageCode == 'vi',
                    (value) => setState(() => selectedLanguageCode = value),
                  ),
                  _buildLanguageOption(
                    context,
                    'de',
                    'Deutsch',
                    selectedLanguageCode == 'de',
                    (value) => setState(() => selectedLanguageCode = value),
                  ),
                  _buildLanguageOption(
                    context,
                    'id',
                    'Bahasa Indonesia',
                    selectedLanguageCode == 'id',
                    (value) => setState(() => selectedLanguageCode = value),
                  ),
                  _buildLanguageOption(
                    context,
                    'ar',
                    'اَلْعَرَبِيَّةُ',
                    selectedLanguageCode == 'ar',
                    (value) => setState(() => selectedLanguageCode = value),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: Text(l10n.cancelButton),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (selectedLanguageCode != null) {
                      localeProvider.setLocale(Locale(selectedLanguageCode!));
                    }
                    Navigator.of(dialogContext).pop();
                  },
                  child: Text(l10n.applyButton),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    String languageCode,
    String languageName,
    bool isSelected,
    Function(String?) onChanged,
  ) {
    return ListTile(
      title: Text(languageName),
      leading: Radio<String>(
        value: languageCode,
        groupValue: isSelected ? languageCode : null,
        onChanged: onChanged,
      ),
      onTap: () => onChanged(languageCode),
    );
  }

  void _showNotificationSettings(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.notificationSettingsPlaceholder)),
    );
  }

  void _showThemeOptions(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.themeOptionsPlaceholder)),
    );
  }

  void _showAboutDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showAboutDialog(
      context: context,
      applicationName: l10n.appName,
      applicationVersion: l10n.appVersion,
      applicationLegalese: l10n.appLegalese,
      children: [
        Text(l10n.appDescription),
      ],
    );
  }

  void _showHelpDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.helpSupportPlaceholder)),
    );
  }

  void _showRatingDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.ratingThankYou)),
    );
  }
}
