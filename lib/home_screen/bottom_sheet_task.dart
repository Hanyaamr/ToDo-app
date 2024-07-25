import 'package:flutter/material.dart';
import 'package:todo_code/app_theme/app_colors.dart';

class BottomSheetTask extends StatelessWidget {
var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add new Task',
              textAlign: TextAlign.center,
            ),
            TextFormField(
              validator: (text){
                if(text==null || text.isEmpty){
                  return 'Please Enter task title !!';
                }return null;

              },
              decoration: InputDecoration(hintText: 'Enter task title'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 20),
              child: TextFormField(
                validator: (text){
                  if(text==null || text.isEmpty){
                    return 'Please Enter task description !!';
                  }return null;
                },
                maxLines: 4,
                decoration: InputDecoration(hintText: 'Enter task description'),
              ),
            ),
            Text('Select Time'),
            Text(
              '12:00 AM',
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.PrimaryColor),
                onPressed: (){
                  addTask();
                }, child: Text('Add Task',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }

  void addTask() {
    if (formKey.currentState?.validate()== true){
      //add task
    }
  }
}
