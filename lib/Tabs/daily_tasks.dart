import 'package:flutter/material.dart';
import 'package:todo_code/Tabs/settings_tab.dart';
import 'package:todo_code/Tabs/task_tab.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class DailyTasks extends StatefulWidget {
  static const String routeName = 'daily_tasks';

  @override
  State<DailyTasks> createState() => _DailyTasksState();
}

class _DailyTasksState extends State<DailyTasks> {
  int selectesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*.02,  //doing seperator
        backgroundColor: AppColors.PrimaryColor,),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .15),
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                color: AppColors.PrimaryColor,
                child: Text(
                  'To Do List',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * .06,horizontal: MediaQuery.of(context).size.width * .02),
                // color: AppColors.greenColor,
                child: EasyDateTimeLine(timeLineProps: EasyTimeLineProps(vPadding:10,separatorPadding: 12),
                  initialDate: DateTime.now(),
                  dayProps: const EasyDayProps(
                    dayStructure: DayStructure.dayStrDayNum,
                    activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(142, 72, 72, 72),
                            spreadRadius: 2,
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:Colors.orangeAccent,

                      ),
                    ),
                    inactiveDayStyle: DayStyle(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),),
                  ),activeColor: Colors.black,
                ),
              ),
            ],
          ),

            ],
          ),

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
        onPressed: () {},
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
}
