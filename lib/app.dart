import 'layouts/main_layout/main_layout.dart';
import 'main.dart';
import 'theme.dart';

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
      darkTheme: darkTheme,
      home: MainLayout(),
    );
  }
}
