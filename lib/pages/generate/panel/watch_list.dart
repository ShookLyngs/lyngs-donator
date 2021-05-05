import '../../../main.dart';
import '../generate_state.dart';
import 'group_title.dart';

class PanelWatchList extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PanelGroupTitle(
            title: '待开奖',
            icon: Icons.compare_arrows,
          ),
        ),

        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(width: 8),
              WatchListCard(),
              WatchListCard(),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ],
    );
  }
}

class WatchListCard extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(state.innerBorderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '21048 期',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w700,
                    // color: Theme.of(context).textTheme.bodyText2!.color,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  '周五',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '12 12 12 12 12 12 / 12 12',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

