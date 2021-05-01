import '../../main.dart';
import 'generate_state.dart';

class GeneratePanel extends GetxWidget<GeneratePageState> {
  final ScrollController scrollController;

  GeneratePanel({
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: state.wrapBorderRadius,
      child: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: [
              const SizedBox(height: 80),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
              const ListTile(
                title: Text('ListTile Title'),
                subtitle: Text('ListTile SubTitle'),
              ),
            ],
          ),
          Positioned(
            top: 0,
            width: Get.width,
            child: SizedBox(
              height: 80,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: Row(children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(children: [
                      const Icon(Icons.arrow_back),
                      const SizedBox(width: 10),
                      const Text(
                          '我的关注',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )
                      ),
                    ]),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
