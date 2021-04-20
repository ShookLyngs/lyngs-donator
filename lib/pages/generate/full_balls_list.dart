import '../../main.dart';
import 'balls_area.dart';
import 'footer.dart';

class GenerateFullBallsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '前区',
          style: TextStyle(
            color: Colors.black45,
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
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '后区',
          style: TextStyle(
            color: Colors.black45,
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
      Expanded(child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(child: GenerateFooter()),
      ))
    ]));
  }
}
