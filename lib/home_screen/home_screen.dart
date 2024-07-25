import 'package:flutter/material.dart';
import 'package:todo_code/Tabs/settings_tab.dart';
import 'package:todo_code/Tabs/task_tab.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:todo_code/home_screen/bottom_sheet_task.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*.155,
        backgroundColor: AppColors.PrimaryColor,
        titleSpacing: 50,
         title:  Text(
            'To Do List',
            style: Theme.of(context).textTheme.titleLarge,
          )
      ),
      body:

      // Column(
      //   children: [
          // Container(
          //     padding: EdgeInsets.only(
          //         left: MediaQuery.of(context).size.width * .09),
          //     alignment: AlignmentDirectional.topStart,
          //     height: MediaQuery.of(context).size.height * .1,
          //     width: MediaQuery.of(context).size.width,
          //     color: AppColors.PrimaryColor,
          //     child: ),

Expanded(child: tabs[selectesIndex]),
          //   ],
          // ),

      bottomNavigationBar:
      BottomAppBar(
        padding: EdgeInsets.all(5),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child:BottomNavigationBar(
            currentIndex: selectesIndex,
            onTap: (index) {
              selectesIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list,size: 35,), label: 'Task list'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,size: 35), label: 'settings',),

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
