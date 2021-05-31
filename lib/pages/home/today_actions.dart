import '../../main.dart';
import 'widgets/radius_card.dart';

class TodayActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadiusCard(
          outerPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          innerPadding: const EdgeInsets.all(0),
          child: Column(children: [
            SizedBox(
              height: 140,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const Positioned(child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/home/latest-award.jpg'),
                    ),
                  )),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.topCenter,
                            colors: [
                              context.theme.cardColor,
                              context.theme.cardColor.withOpacity(0),
                            ],
                            stops: [0, 0.5],
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: -24,
                    left: 16,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundColor: context.theme.highlightColor,
                          backgroundImage: const AssetImage('assets/common/avatar.jpg'),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '欢迎',
                              style: context.textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '保存您的彩票记录',
                              style: context.textTheme.caption!.copyWith(
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(height: 6),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '5月18日',
                          style: context.textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '周二',
                          style: TextStyle(
                            color: context.textTheme.caption!.color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Dot(),
                        const SizedBox(width: 8),
                        const Text('即将开奖'),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: context.theme.canvasColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Text(
                            '#21049',
                            style: TextStyle(
                              color: context.textTheme.bodyText1!.color,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text('ROLL ONE'),
                ),
              ]),
            ),
          ]),
        ),
        /*RadiusCard(
          color: context.theme.canvasColor,
          outerPadding: const EdgeInsets.symmetric(horizontal: 16),
          outerBorderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
          child: Row(children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: context.theme.highlightColor,
              backgroundImage: const AssetImage('assets/common/avatar.jpg'),
            ),
            const SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '登录',
                  style: context.textTheme.bodyText1,
                ),
                Text(
                  '保存您的彩票记录',
                  style: context.textTheme.caption!.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.chevron_right,
                  color: context.theme.backgroundColor,
                )),
          ]),
        ),*/
      ],
    );
  }
}
