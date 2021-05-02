import '../../main.dart';
import '../../theme.dart';
import 'generate_state.dart';

class GeneratePanelCollapsed extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: state.wrapBorderRadius,
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            // Indicator
            const SizedBox(height: 8),
            SizedBox(
              height: 6,
              child: Center(child: SizedBox(
                width: 60,
                height: 6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ))
            ),
            const SizedBox(height: 16),

            // Balls, and subscribe button
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Container(
                      color: Colors.black12,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(width: 12),
                          const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text('12'),
                          )),
                          const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text('12'),
                          )),
                          const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text('12'),
                          )),
                          const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text('12'),
                          )),
                          const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text('12'),
                          )),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
                    print('change theme type, ${Get.isDarkMode}');
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    minimumSize: const Size.fromWidth(100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.check_circle, size: 22),
                    ],
                  ),
                ),
              ),
            ]),

            const SizedBox(height: 6),

            // Information display
            Row(children: [
              const Text('21048 期'),
              const SizedBox(width: 6),
              const Text('/'),
              const SizedBox(width: 6),
              const Text('单式'),

              const Spacer(),

              const Text('1倍'),
              const SizedBox(width: 6),
              const Text('/'),
              const SizedBox(width: 6),
              const Text('2 RMB'),
            ]),


            const Spacer(),
            const SizedBox(height: 6),

            // Bottom indicator
            const Center(child: SizedBox(
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.expand_more),
              ),
            )),

            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
