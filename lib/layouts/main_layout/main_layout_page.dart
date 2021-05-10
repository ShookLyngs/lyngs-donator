import '../../main.dart';
import '../../pages/generate/generate.dart';
import '../../pages/history/history.dart';
import '../../pages/home/home.dart';

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
    HomePage(),
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
        body: bodies[state.active.value],
        /*body: PageView(
          children: bodies,
          physics: const BouncingScrollPhysics(),
          controller: state.pageController,
          onPageChanged: (newValue) {
            state.active.value = newValue;
          },
        ),*/
        /*bottomNavigationBar: Obx(() => BottomNavigationBar(
          items: items.map(mapNavigationBarItem).toList(),
          currentIndex: state.active.value,
          onTap: (newValue) {
            state.active.value = newValue;
            state.pageController.animateToPage(newValue,
              duration: const Duration(milliseconds: 250),
              curve: Curves.ease,
            );
          },
        )),*/
      ),
    );
  }
}

class MainLayoutState extends GetxController {
  final active = 0.obs;
  final PageController pageController = PageController();
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
