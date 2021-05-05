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
          height: 100,
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
            Text(
              '21048 期',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '12 12 12 12 12 12 / 12 12',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

