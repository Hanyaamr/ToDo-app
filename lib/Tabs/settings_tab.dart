import 'package:flutter/material.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toggle_switch/toggle_switch.dart';
class SettingsTab extends StatefulWidget {
  static const String routeName='settings_tab';

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    bool isDark = false;
    Map<String,String> languages={
      'ar':AppLocalizations.of(context)!.arabic,
      'en':AppLocalizations.of(context)!.english,
      'de':AppLocalizations.of(context)!.german
    };
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
borderRadius: BorderRadius.circular(20)
      ),
      margin:  EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.settings,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,),
          Divider(height: 40,color:AppColors.whiteColor,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyMedium,),
              ToggleSwitch(
                initialLabelIndex: 0,
                totalSwitches: 3,
                minWidth: 80,
                inactiveBgColor: AppColors.greyColor ,
                activeBgColor: [AppColors.PrimaryColor],
                labels: [AppLocalizations.of(context)!.arabic,
                  AppLocalizations.of(context)!.english,
                  AppLocalizations.of(context)!.german
                ],
                onToggle: (index) {
                },
              )
            ],
          ),
          Divider(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.dark_mode,style: Theme.of(context).textTheme.bodyMedium,),
    ToggleSwitch(
    initialLabelIndex: 0,
    totalSwitches: 2,
inactiveBgColor: AppColors.greyColor ,
      activeBgColor: [AppColors.PrimaryColor],
    labels: ['Light', 'Dark'],
    onToggle: (index) {
    },
    )
              ,],
          ),
        ],
      ),
    );
  }


}
