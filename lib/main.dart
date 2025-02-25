import 'package:flutter/material.dart';
import 'package:todo_code/Tabs/settings_tab.dart';
import 'package:todo_code/Tabs/task_tab.dart';
import 'package:todo_code/app_theme/app_theme_data.dart';
import 'Tabs/daily_tasks.dart';
import 'home_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: AppThemeData.lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      
      locale: Locale('en'),
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=> HomeScreen(),
        TaskTab.routeName:(context)=> TaskTab(),
        SettingsTab.routeName:(context)=> SettingsTab(),
        DailyTasks.routeName:(context)=> DailyTasks(),
      }    );
  }
}
