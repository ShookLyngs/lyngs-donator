import '../../main.dart';
import 'balls_area.dart';

class GenerateFollowedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const SizedBox(height: 32),
      Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '待开奖',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                  child: BallsArea(
                width: 1 / 8,
                length: 8,
                maxActiveLength: 1,
              )),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                  child: BallsArea(
                width: 1 / 8,
                length: 8,
                maxActiveLength: 1,
              )),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                  child: BallsArea(
                width: 1 / 8,
                length: 8,
                maxActiveLength: 1,
              )),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    ]));
  }
}
