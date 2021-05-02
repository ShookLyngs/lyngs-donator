import 'main.dart';

// Primary color
const primary = MaterialColor(0xff3065f9, {
  900: Color(0xff0031b9),
  800: Color(0xff0031b9),

  700: Color(0xff0031b9),
  600: Color(0xff003de6),
  500: Color(0xff3065f9),

  400: Color(0xff3065f9),
  300: Color(0xff3065f9),
  200: Color(0xff3065f9),
  100: Color(0xff3065f9),
  50: Color(0xff3065f9),
});

// Light theme
ThemeData get lightTheme {
  final theme = ThemeData(
    primarySwatch: primary,
    scaffoldBackgroundColor: const Color(0xfff9f9f9),
  );

  return theme.copyWith(
    backgroundColor: const Color(0xfff9f9f9),
  );
}

// Dark theme
ThemeData get darkTheme {
  final theme = ThemeData(
    brightness: Brightness.dark,
  );

  return theme.copyWith();
}