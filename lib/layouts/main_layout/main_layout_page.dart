import '../../main.dart';
import '../../pages/generate/generate.dart';
import '../../pages/history/history.dart';

class MainLayoutPage extends GetxWidget<MainLayoutState> {
  const MainLayoutPage();

  static const items = [
    NavigationItem(
      title: '生成',
      icon: NavigationIcon('assets/layout/bottom-nav1.png'),
      activeIcon: NavigationIcon('assets/layout/bottom-nav1-active.png'),
    ),
    NavigationItem(
      title: '历史',
      icon: NavigationIcon('assets/layout/bottom-nav2.png'),
      activeIcon: NavigationIcon('assets/layout/bottom-nav2-active.png'),
    )
  ];

  final List<Widget> bodies = const [
    GeneratePage(),
    HistoryPage(),
  ];

  BottomNavigationBarItem mapNavigationBarItem(NavigationItem item) {
    return BottomNavigationBarItem(
      label: item.title,
      icon: state.active.value == items.indexOf(item)
        ? item.activeIcon : item.icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MainLayoutState());

    return ScaffoldMessenger(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            backwardsCompatibility: true,
          ),
        ),
        body: Obx(() => bodies[state.active.value]),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
          items: items.map(mapNavigationBarItem).toList(),
          currentIndex: state.active.value,
          onTap: (i) => state.active.value = i,
        )),
      ),
    );
  }
}

class MainLayoutState extends GetxController {
  final active = 0.obs;
}

class NavigationItem {
  final String title;
  final NavigationIcon icon;
  final NavigationIcon activeIcon;

  const NavigationItem({
    required this.title,
    required this.icon,
    required this.activeIcon,
  });
}

class NavigationIcon extends StatelessWidget {
  final String icon;

  const NavigationIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(icon),
      height: 24,
    );
  }
}
