import '../../main.dart';
import 'generate_state.dart';

class GeneratePanelCollapsed extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: state.wrapBorderRadius,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(
            height: 30,
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  minimumSize: const Size.fromWidth(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('关注')
              ),
            ),
          ]),

        ]),
      ),
    );
  }
}
