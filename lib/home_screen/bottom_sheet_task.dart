import 'package:flutter/material.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              AppLocalizations.of(context)!.add_task,
              textAlign: TextAlign.center,
            ),
            TextFormField(
              validator: (text){
                if(text==null || text.isEmpty){
                  return AppLocalizations.of(context)!.please_enter_task_title;
                }return null;

              },
              decoration: InputDecoration(hintText: AppLocalizations.of(context)!.enter_task_title),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 20),
              child: TextFormField(
                validator: (text){
                  if(text==null || text.isEmpty){
                    return AppLocalizations.of(context)!.please_enter_task_description;
                  }return null;
                },
                maxLines: 4,
                decoration: InputDecoration(hintText: AppLocalizations.of(context)!.enter_task_description),
              ),
            ),
            Text(AppLocalizations.of(context)!.select_time),
            Text(
              '12:00 AM',
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.PrimaryColor),
                onPressed: (){
                  addTask();
                }, child: Text(AppLocalizations.of(context)!.add_task,style: TextStyle(color: Colors.white),))
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
