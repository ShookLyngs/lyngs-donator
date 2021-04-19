import 'layouts/main_layout/main_layout.dart';
import 'main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Changes the background color of status-bar should be transparent
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return GetMaterialApp(
      theme: lightTheme,
      home: MainLayout(),
    );
  }

  ThemeData get lightTheme {
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

    final theme = ThemeData(
      primarySwatch: primary,
      scaffoldBackgroundColor: const Color(0xfff9f9f9),
    );

    return theme.copyWith();
  }
}
