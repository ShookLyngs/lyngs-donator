import '../../main.dart';
import 'balls_area.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    /*return Container(
      child: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text(
              '随机',
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
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('前区',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BallsArea(35),
            ),

            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('后区',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BallsArea(12),
            ),

            const SizedBox(height: 32),
          ]),
        ),
      ]),
    );*/
    return Stack(
      children: [
        CustomScrollView(slivers: [
          SliverAppBar(
            title: Text(
                '随机',
                style: TextStyle(
                  color: Get.textTheme.headline1!.color,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )
            ),
            collapsedHeight: 74,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('前区',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BallsArea(35),
              ),

              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('后区',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BallsArea(12),
              ),
            ]),
          ),
        ]),
        Positioned(
          bottom: 0,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30+),
            child: Center(
              child: GenerateBottom(),
            ),
          ),
        ),
      ],
    );
  }
}

class GenerateBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 2/4,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          primary: Colors.black87,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          side: BorderSide(
            width: 2,
            color: Get.theme.primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(12),
        ),
        child: const Text('关注号码'),
      ),
    );
  }
}

