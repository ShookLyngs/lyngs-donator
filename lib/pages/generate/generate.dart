import '../../main.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text(
            '随机彩票',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            )
          ),
          collapsedHeight: 74,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          // foregroundColor: Colors.black,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            const Text('Generate'),
            const SizedBox(height: 2000),
          ]),
        ),
      ]),
    );
  }
}
