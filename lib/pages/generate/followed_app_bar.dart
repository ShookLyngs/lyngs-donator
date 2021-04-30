import '../../main.dart';

class FollowedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: FollowedAppBarTitle(),
      pinned: true,
    );
  }
}

class FollowedAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('title');
  }
}
