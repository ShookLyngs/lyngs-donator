import '../../main.dart';

class LatestAward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Container(
            // height: 100,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              image: const DecorationImage(
                image: AssetImage('assets/home/latest-award-darker.jpg'),
                fit: BoxFit.cover,
              ),
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
                    const Text('05/09(周五)'),
                  ],
                ),

                // const SizedBox(height: 4),

                const Text('单式票 / 1倍 / 2RMB'),

                const SizedBox(height: 12),

                AwardNumberListView(),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '￥',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          fontSize: 50,
                          height: 1,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    '六等奖',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AwardNumberListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        // width: Get.width * 0.55,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AwardNumberListItem('12'),
                AwardNumberListItem('12'),
                AwardNumberListItem('12'),
                AwardNumberListItem('12'),
                AwardNumberListItem('12'),

                const Center(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                )),

                AwardNumberListItem('12'),
                AwardNumberListItem('12'),

                const SizedBox(width: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AwardNumberListItem extends StatelessWidget {
  final String text;

  AwardNumberListItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              shadows: [
                Shadow( // bottomLeft
                  offset: const Offset(-1, -1),
                  color: Theme.of(context).cardColor,
                ),
                Shadow( // bottomRight
                  offset: const Offset(1, -1),
                  color: Theme.of(context).cardColor,
                ),
                Shadow( // topRight
                  offset: const Offset(1, 1),
                  color: Theme.of(context).cardColor,
                ),
                Shadow( // topLeft
                  offset: const Offset(-1, 1),
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
          ),
          /*Positioned(
            left: 2,
            top: 2,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),*/
        ],
      ),
    ));
  }
}

