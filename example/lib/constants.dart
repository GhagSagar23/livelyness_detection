import 'package:example/index.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.scaffoldBG,
  appBarTheme: _getAppBarTheme(),
  colorScheme: _getCustomColorScheme(),
  textTheme: GoogleFonts.poppinsTextTheme(
    _getTextTheme(),
  ),
);

AppBarTheme _getAppBarTheme() {
  return AppBarTheme(
    backgroundColor: AppColors.appBar,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.appBarTitle,
      fontSize: 20.0,
    ),
    iconTheme: const IconThemeData(color: AppColors.white),
    actionsIconTheme: const IconThemeData(color: AppColors.white),
  );
}

TextTheme _getTextTheme() {
  return TextTheme(
    headlineSmall: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.poppins(
      color: AppColors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.lightBlack,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.poppins(
      color: AppColors.lightBlack,
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: GoogleFonts.poppins(
      color: AppColors.chatOffWhite,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
  );
}

ColorScheme _getCustomColorScheme() {
  return const ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.primary,
    onError: AppColors.onError,
    // ignore: deprecated_member_use
    background: AppColors.primary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
  );
}

class AppColors {
  // App main colors
  static const primary = Color(0xFFFB7F6B);
  static const onPrimary = Colors.white;
  static const secondary = Color(0xFFFB7F6B);
  static const onSecondary = Color(0xFFFFFFFF);
  static const onError = Color(0xFFFF0000);

  // Scaffold colors
  static const scaffoldBG = Colors.white;
  static const scaffoldBGChat = Color.fromARGB(255, 247, 245, 245);

  // AppBar
  static const appBar = Color(0xFFFB7F6B);
  static const appBarTitle = Colors.white;
  static const appBarActionIcon = Colors.white;
  static const chatAppBar = Colors.white;

  // TabBar
  static const tabIndicator = Colors.white;
  static const sTabLabel = Colors.white;
  static const uTabLabel = Colors.white70;

  /// General
  static const white = Colors.white;
  static const grey = Colors.grey;
  static const black = Colors.black;
  static const lightBlack = Color.fromARGB(255, 45, 45, 45);

  // Chat Screen
  static const chatTFFill = Colors.white;
  static const chatScreenGrey = Color(0xFFACACAC);
  static const chatOffWhite = Colors.white70;

  static const green = Colors.green;
  static const red = Colors.red;
}
