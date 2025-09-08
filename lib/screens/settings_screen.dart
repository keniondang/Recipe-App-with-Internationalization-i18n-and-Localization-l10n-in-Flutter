import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Settings',
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
                    'Preferences',
                    [
                      _buildSettingsTile(
                        context,
                        icon: Icons.language_rounded,
                        title: 'Language',
                        subtitle: 'English',
                        onTap: () {
                          _showLanguageDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.notifications_rounded,
                        title: 'Notifications',
                        subtitle: 'Manage your notifications',
                        onTap: () {
                          _showNotificationSettings(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.palette_rounded,
                        title: 'Theme',
                        subtitle: 'Light mode',
                        onTap: () {
                          _showThemeOptions(context);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildSettingsSection(
                    context,
                    'About',
                    [
                      _buildSettingsTile(
                        context,
                        icon: Icons.info_rounded,
                        title: 'App Information',
                        subtitle: 'Version 1.0.0',
                        onTap: () {
                          _showAboutDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.help_rounded,
                        title: 'Help & Support',
                        subtitle: 'Get help with the app',
                        onTap: () {
                          _showHelpDialog(context);
                        },
                      ),
                      _buildSettingsTile(
                        context,
                        icon: Icons.star_rounded,
                        title: 'Rate App',
                        subtitle: 'Share your feedback',
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

  Widget _buildSettingsSection(BuildContext context, String title, List<Widget> children) {
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                leading: Radio<String>(
                  value: 'en',
                  groupValue: 'en',
                  onChanged: (value) {},
                ),
              ),
              ListTile(
                title: const Text('Vietnamese'),
                leading: Radio<String>(
                  value: 'vi',
                  groupValue: 'en',
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Language will be implemented with internationalization!')),
                );
              },
              child: const Text('Apply'),
            ),
          ],
        );
      },
    );
  }

  void _showNotificationSettings(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Notification settings will be implemented here!')),
    );
  }

  void _showThemeOptions(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Theme options will be implemented here!')),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'Recipe App',
      applicationVersion: '1.0.0',
      applicationLegalese: '© 2025 Recipe App. All rights reserved.',
      children: [
        const Text('A simple and elegant recipe app built with Flutter.'),
      ],
    );
  }

  void _showHelpDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Help & Support will be implemented here!')),
    );
  }

  void _showRatingDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Thank you! Rating feature will be implemented here!')),
    );
  }
}