import 'package:flutter/material.dart';
import 'package:todo_code/app_theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData{
  //light
static final ThemeData lightTheme=ThemeData(
scaffoldBackgroundColor: AppColors.lightBackgroundColor,
  appBarTheme: AppBarTheme(backgroundColor: AppColors.PrimaryColor,elevation: 0,),

bottomNavigationBarTheme: BottomNavigationBarThemeData(
  unselectedItemColor: AppColors.greyColor,
selectedItemColor: AppColors.PrimaryColor,
selectedLabelStyle: TextStyle(color: AppColors.PrimaryColor),
  showUnselectedLabels: false,
  elevation: 0,
  backgroundColor: Colors.transparent,
),

    textTheme: TextTheme(
  //app title
     titleLarge: GoogleFonts.poppins(fontSize:22,fontWeight: FontWeight.w700,color: AppColors.whiteColor),
     bodyLarge: GoogleFonts.aBeeZee(fontSize:20,fontWeight: FontWeight.w500,color: AppColors.blackColor),
     bodyMedium: GoogleFonts.aBeeZee(fontSize:15,fontWeight: FontWeight.w500,color: AppColors.blackColor),

)
);
}