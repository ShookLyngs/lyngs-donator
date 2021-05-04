import 'package:lyngs_donator/pages/generate/panel/group_title.dart';

import '../../../main.dart';
import '../generate_state.dart';

class PanelRecentStatus extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        // Title
        PanelGroupTitle(
          title: '支出/收入',
          icon: Icons.compare_arrows,
          /*spaceBetween: true,
          suffix: TextButton(
            onPressed: () {
              print('clicked');
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(state.innerBorderRadius),
              ),
            ),
            child: Row(children: [
              Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).textTheme.caption!.color,
              ),
            ]),
          ),*/
        ),

        // Card content
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(state.innerBorderRadius),
          ),
          child: Center(
            child: Wrap(children: [
              FractionallySizedBox(
                widthFactor: 1/3,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '120/0',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.headline1!.color,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '本月',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1/3,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '828/25',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.headline1!.color,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '今年',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1/3,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '4386/40',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.headline1!.color,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '总体',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
