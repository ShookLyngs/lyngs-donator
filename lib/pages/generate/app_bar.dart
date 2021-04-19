import 'dart:ui';
import '../../main.dart';

class GenerateAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(16),
            title: Row(children: [
              const Text(
                '一张彩票',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox(
                height: 30,
                width: 30,
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(Icons.swap_horiz),
                  style: TextButton.styleFrom(
                    primary: Get.theme.primaryColor,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      pinned: true,
      expandedHeight: 100,
      shadowColor: Colors.transparent,
      backgroundColor: Get.theme.backgroundColor.withAlpha(20),
    );
  }
}
