import '../../main.dart';
import 'body/balls_list.dart';
import 'body/header.dart';

class GenerateBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        GenerateAppBar(),
        GenerateFullBallsList(),
      ],
    );
  }
}
