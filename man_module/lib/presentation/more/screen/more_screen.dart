import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:man_module/di/di.dart';
import 'package:man_module/l10n/gen_file/app_localizations.dart';
import 'package:man_module/main.dart' show MyAppExtension;
import 'package:man_module/presentation/more/cubit/more_cubit.dart';
import 'package:ui_design_system/screen_util/ds_screen_util.dart';

class MoreScreen extends StatefulWidget {
  @Preview(name: 'More Screen', size: DSScreenUtil.screenSize, brightness: Brightness.light)
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return BlocProvider<MoreCubit>(
      create: (_) => getIt<MoreCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(localizations?.more ?? 'More'),
        ),
        body: BlocConsumer<MoreCubit, MoreState>(
          listener: (context, state) {
            state.maybeWhen(
              loggedOut: (_) {
                // Handle logout - could navigate to login screen
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(localizations?.logout ?? ''),
                  ),
                );
              },
              error: (_, exception) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(exception.message),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => _buildContent(context),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final cubit = context.read<MoreCubit>();
    final currentLocale = Localizations.localeOf(context);

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [ 
        _buildLanguageSection(context, localizations, cubit, currentLocale),
        const SizedBox(height: 24),
        _buildLogoutSection(context, localizations, cubit),
      ],
    );
  }

  Widget _buildLanguageSection(
    BuildContext context,
    AppLocalizations localizations,
    MoreCubit cubit,
    Locale currentLocale,
  ) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              localizations.changeLanguage,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(localizations.changeLanguage),
            subtitle: Text(_getLanguageName(currentLocale, localizations)),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _showLanguageDialog(context, cubit, localizations),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutSection(
    BuildContext context,
    AppLocalizations localizations,
    MoreCubit cubit,
  ) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: const Icon(Icons.logout, color: Colors.red),
        title: Text(
          localizations.logout,
          style: const TextStyle(color: Colors.red),
        ),
        onTap: () => _showLogoutConfirmation(context, cubit, localizations),
      ),
    );
  }

  void _showLanguageDialog(
    BuildContext context,
    MoreCubit cubit,
    AppLocalizations localizations,
  ) {
    final supportedLocales = AppLocalizations.supportedLocales;
    final currentLocale = Localizations.localeOf(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(localizations.selectLanguage),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: supportedLocales.map((locale) {
            final isSelected = locale.languageCode == currentLocale.languageCode;
            return RadioListTile<Locale>(
              title: Text(_getLanguageName(locale, localizations)),
              value: locale,
              groupValue: isSelected ? locale : null,
              onChanged: (selectedLocale) {
                if (selectedLocale != null) {
                  cubit.changeLanguage(selectedLocale);
                  Navigator.of(context).pop();
                  // Find the root MyApp state and update locale
                  final appState = context.myAppState;
                  if (appState != null && context.mounted) {
                    appState.changeLocale(selectedLocale);
                  }
                }
              },
            );
          }).toList(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmation(
    BuildContext context,
    MoreCubit cubit,
    AppLocalizations localizations,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(localizations.logout),
        content: Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              cubit.logOut();
            },
            child: Text(
              MaterialLocalizations.of(context).okButtonLabel,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  String _getLanguageName(Locale locale, AppLocalizations localizations) {
    switch (locale.languageCode) {
      case 'en':
        return localizations.english;
      case 'vi':
        return localizations.vietnamese;
      case 'ja':
        return localizations.japanese;
      default:
        return locale.languageCode;
    }
  }
}

extension NullableExtension<T> on T? {
  R? let<R>(R Function(T) function) {
    final self = this;
    return self == null ? null : function(self);
  }
}
