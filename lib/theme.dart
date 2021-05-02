import 'main.dart';

// Primary color
const primary = MaterialColor(0xff3065f9, {
  900: Color(0xff0031b9),
  800: Color(0xff0031b9),

  700: Color(0xff0031b9),
  600: Color(0xff003de6),
  500: Color(0xff3065f9),
  400: Color(0xff517eff),

  300: Color(0xff3065f9),
  200: Color(0xff3065f9),
  100: Color(0xff3065f9),
  50: Color(0xff3065f9),
});

// Light theme
ThemeData get lightTheme {
  final theme = ThemeData(
    primarySwatch: primary,
  );

  return theme.copyWith(
    primaryColor: primary[500],
    primaryColorDark: primary[600],
    primaryColorLight: primary[400],

    scaffoldBackgroundColor: const Color(0xfff9f9f9),
    bottomAppBarColor: const Color(0xffffffff),
    backgroundColor: const Color(0xfff6f6f6),
    cardColor: const Color(0xffffffff),

    dividerColor: Colors.grey[300],

    textTheme: theme.textTheme.copyWith(
      headline1: theme.textTheme.headline1!.copyWith(
        color: const Color(0xff222222),
      ),
      caption: theme.textTheme.caption!.copyWith(
        color: const Color(0xff979797),
      ),
      bodyText2: theme.textTheme.bodyText2!.copyWith(
        color: const Color(0xff505050),
      ),
    ),
  );
}

// Dark theme
ThemeData get darkTheme {
  final theme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: primary,
  );

  return theme.copyWith(
    primaryColor: primary[500],
    primaryColorDark: primary[600],
    primaryColorLight: primary[400],

    scaffoldBackgroundColor: const Color(0xff2e2e2e),
    bottomAppBarColor: const Color(0xff424242),
    backgroundColor: const Color(0xff383838),
    cardColor: const Color(0xff424242),

    textTheme: theme.textTheme.copyWith(
      headline1: theme.textTheme.headline1!.copyWith(
        color: const Color(0xffffffff),
      ),
      caption: theme.textTheme.caption!.copyWith(
        color: const Color(0xff6d6d6d),
      ),
      bodyText2: theme.textTheme.bodyText2!.copyWith(
        color: const Color(0xffa1a1a1),
      ),
    ),
  );
}

ThemeData get currentTheme {
  return Theme.of(Get.context!);
}