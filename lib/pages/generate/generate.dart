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
            title: Text('随机',
                style: TextStyle(
                  color: Get.textTheme.headline1!.color,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
            collapsedHeight: 74,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '前区',
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
                child: Text(
                  '后区',
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
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
    return SizedBox(
      width: Get.width / 2,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Get.theme.primaryColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(children: [
          SizedBox(
            height: 40,
            width: 40,
            child: TextButton(
              onPressed: () {},
              child: const Icon(Icons.refresh),
              style: TextButton.styleFrom(
                primary: Colors.black54,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: SizedBox(
              width: 1,
              height: 20,
              child: Container(
                color: Colors.black12,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black87,
                  padding: const EdgeInsets.all(0),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  shape: const StadiumBorder(),
                ),
                child: const Text('关注号码'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
