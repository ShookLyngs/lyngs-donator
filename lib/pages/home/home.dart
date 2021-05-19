import 'dart:ui';

import '../../main.dart';
import 'checked_list.dart';
import 'history_list.dart';
import 'latest_award.dart';
import 'watching_list.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        HomeAppBar(),
        HomeBody(children: [
          LatestAward(),
          WatchingList(),
          CheckedList(),
          HistoryList(),
        ]),
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(16),
            title: Row(children: [
              Text(
                '一张彩票',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox(
                height: 30,
                width: 30,
                child: TextButton(
                  onPressed: () {  },
                  child: const Icon(Icons.swap_horiz),
                  style: TextButton.styleFrom(
                    primary: Get.theme.primaryColor,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      pinned: true,
      expandedHeight: 100,
      shadowColor: Colors.transparent,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor.withAlpha(20),
    );
  }
}

class HomeBody extends StatelessWidget {
  final List<Widget> children;

  HomeBody({ required this.children });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(children),
    );
  }
}


