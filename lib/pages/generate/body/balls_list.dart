import '../../../main.dart';
import '../ball/balls_area.dart';
import '../generate_state.dart';

class GenerateFullBallsList extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([
      const SizedBox(height: 16),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '前区',
          style: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(height: 16),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: BallsArea(
          width: 1 / 8,
          length: 35,
          maxActiveLength: 5,
        ),
      ),
      const SizedBox(height: 32),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '后区',
          style: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(height: 16),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: BallsArea(
          width: 1 / 8,
          length: 12,
          maxActiveLength: 2,
        ),
      ),

      // Fixed padding bottom, for cover the positioned panel.
      SizedBox(height: state.panelMinHeight),

    ]));
  }
}
