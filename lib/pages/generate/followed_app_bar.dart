import '../../main.dart';

class FollowedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const SliverAppBar(
      title: Text('title'),
      pinned: true,
    );
  }
}
