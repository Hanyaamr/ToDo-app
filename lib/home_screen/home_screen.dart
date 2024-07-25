import 'package:flutter/material.dart';
import 'package:todo_code/Tabs/settings_tab.dart';
import 'package:todo_code/Tabs/task_tab.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:todo_code/home_screen/bottom_sheet_task.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.lightBackgroundColor,
      appBar:AppBar(
        // toolbarHeight: MediaQuery.of(context).size.height*.03,
        backgroundColor: AppColors.PrimaryColor,),
      body:

      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .09),
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            color: AppColors.PrimaryColor,
            child: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

Expanded(child: tabs[selectedIndex]),
            ],
          ),

      bottomNavigationBar:
      BottomAppBar(
        padding: EdgeInsets.all(4),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child:BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list,size: 35,), label: AppLocalizations.of(context)!.task_list),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,size: 35), label: AppLocalizations.of(context)!.settings,),

            ],
      ),),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskBottomSheet();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: AppColors.PrimaryColor,
        splashColor: AppColors.PrimaryColor,
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 3)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  List<Widget> tabs=[TaskTab(),SettingsTab()];

  void addTaskBottomSheet() {
    showModalBottomSheet(context: context, builder: (context)=> BottomSheetTask());
  }
}
