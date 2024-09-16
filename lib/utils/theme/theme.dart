
import 'package:flutter/material.dart';

import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_theme.dart';
import 'custom_theme/textfield_theme.dart';


class CustomTheme{
  CustomTheme._();

  static ThemeData lightTheme=ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme:CustomTextTheme.lightTextTheme,
      chipTheme: CustomChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: CustomElevationButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlineButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme

  );
  static ThemeData darkTheme=ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme:CustomTextTheme.darkTextTheme,
      chipTheme: CustomChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: CustomElevationButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlineButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme
  );
}