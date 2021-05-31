import '../../main.dart';
import 'widgets/radius_card.dart';

class TodayActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        Row(children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 48,
              ),
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: AssetImage('assets/home/banner-3.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ]),
        RadiusCard(
          outerPadding: const EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 16,
          ),
          innerPadding: const EdgeInsets.all(0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '5月18日',
                      style: context.textTheme.headline5!.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(children:[
                      Icon(
                        Icons.today,
                        size: 16,
                        color: context.textTheme.caption!.color,
                      ),
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: context.theme.canvasColor,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Text(
                          '周二 / 1 张今日开奖',
                          style: TextStyle(
                            color: context.textTheme.bodyText2!.color,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.confirmation_number_outlined,
                          size: 16,
                          color: context.textTheme.caption!.color,
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
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
                              fontSize: 14,
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
                  },
                  child: const Text('摇一张'),
                ),
              ]),
            ),
            const SizedBox(
              height: 1,
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: context.theme.highlightColor,
                    backgroundImage: const AssetImage('assets/common/avatar.jpg'),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '登录',
                        style: context.textTheme.headline6!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '并保存您的记录',
                        style: context.textTheme.caption!.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: context.theme.primaryColor,
                  ),
                ],
              ),
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
