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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: state.wrapBorderRadius,
          ),
          child: Column(children: [
            // Indicator
            const SizedBox(height: 8),
            SizedBox(
              height: 6,
              child: Center(child: SizedBox(
                width: 60,
                height: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ))
            ),
            const SizedBox(height: 16),

            // Balls, and Times button
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ClipRRect(
                    borderRadius: state.innerBorderRadius,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: state.innerBorderRadius,
                        border: Border.all(
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
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

                          Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '/',
                              style: TextStyle(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
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
                width: 120,
                child: ClipRRect(
                  borderRadius: state.innerBorderRadius,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: state.innerBorderRadius,
                      border: Border.all(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Material(
                          color: Colors.transparent,
                          borderRadius: state.innerBorderRadius,
                          child: SizedBox(
                            width: 34,
                            child: IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                Icons.remove,
                                size: 18,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),

                        const Spacer(),

                        const Center(child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Text('1 倍'),
                        )),

                        const Spacer(),

                        Material(
                          color: Colors.transparent,
                          borderRadius: state.innerBorderRadius,
                          child: SizedBox(
                            width: 34,
                            child: IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                Icons.add,
                                size: 18,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),

            const SizedBox(height: 20),

            // Information display
            Row(children: [
              const Text('21048 期'),
              const SizedBox(width: 6),
              Text(
                '/',
                style: TextStyle(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              const SizedBox(width: 6),
              const Text('单式票'),

              const Spacer(),


            ]),

            const SizedBox(height: 6),

            SizedBox(
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
                  print('change theme type, ${Get.isDarkMode}');
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  minimumSize: const Size.fromWidth(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: state.innerBorderRadius,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.done, size: 22),
                    const SizedBox(width: 6),
                    const Text(
                      '添加关注',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const Spacer(),

                    const Text('1倍'),
                    const SizedBox(width: 6),
                    Text(
                      '/',
                      style: TextStyle(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      '2 RMB',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),


            const Spacer(),
            const SizedBox(height: 6),

            // Bottom indicator
            Center(child: SizedBox(
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).backgroundColor,
                child: IconButton(
                  icon: const Icon(Icons.expand_less),
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    state.panelController.open();
                  },
                ),
              ),
            )),

            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
