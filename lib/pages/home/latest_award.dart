import '../../main.dart';

class LatestAward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: const DecorationImage(
            image: AssetImage('assets/home/latest-award.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#21048',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  height: 1,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                '5月9日 周五',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).cardColor,
                ),
              ),
              Text(
                '单式票 / 1倍 / 2RMB',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '￥',
                style: TextStyle(
                  fontSize: 26,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
              Text(
                '4',
                style: TextStyle(
                  fontSize: 72,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
            ],
          ),
        ]),
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).cardColor,
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

