import 'main.dart';
import 'layouts/main_layout/main_layout.dart';

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
      home: MainLayout(),
    );
  }

  ThemeData get lightTheme {
    const primary = MaterialColor(0xff3065f9, {
      700: Color(0xff0031b9),
      600: Color(0xff003de6),
      500: Color(0xff3065f9),
    });

    final theme = ThemeData(
      primarySwatch: primary,
      scaffoldBackgroundColor: const Color(0xfff9f9f9),
    );

    return theme.copyWith();
  }
}
