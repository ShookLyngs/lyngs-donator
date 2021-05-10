import 'dart:ui';

import '../../main.dart';

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

          /*Flexible(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (_context, _index) {
                return const ListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                );
              },
            ),
          ),*/
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


class LatestAward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        // height: 100,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '#21048',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(width: 8),
                const Text('05/09 周五'),
              ],
            ),

            // const SizedBox(height: 8),

            const Text('单式票 / 1倍'),

            const SizedBox(height: 8),

            SizedBox(
              height: 40,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 12),

                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),
                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),
                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),
                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),
                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),

                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '/',
                                style: TextStyle(
                                  color: Theme.of(context).dividerColor,
                                ),
                              ),
                            )),

                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),
                            Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: Text('12',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )),

                            const SizedBox(width: 12),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


