import '../../main.dart';
import 'main_layout_page.dart';

// Record last time user pressed `back` button
DateTime? time;

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: const Scaffold(
        body: MainLayoutPage(),
      ),
      onWillPop: () async {
        final now = DateTime.now();
        if (time != null && now.difference(time!).inSeconds < 2) {
          return true;
        }

        time = now;
        showSnackBar('再按一次退出应用');
        return false;
      },
    );
  }
}

