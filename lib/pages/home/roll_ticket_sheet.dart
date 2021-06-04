import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../main.dart';
import 'history_list.dart';

void showRollTicketSheet([BuildContext? context]) {
  showMaterialModalBottomSheet(
    context: context ?? Get.context!,
    bounce: true,
    backgroundColor: Colors.transparent,
    builder: (_) => const RollTicketSheet(),
  );
}

class RollTicketSheet extends StatelessWidget {
  const RollTicketSheet();

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const RollTicketHeader(
                title: '摇一张',
                description: '随机生成一张大乐透',
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    child: Ink(
                      height: 62,
                      decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: context.theme.canvasColor,
                        ),
                      ),
                      child: Center(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 16,
                          ),
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.antiAlias,
                          shrinkWrap: true,
                          children: [
                            Row(
                                children: List.generate(
                              5,
                              (index) => NumberBall(
                                text: '$index',
                                size: 30,
                                textColor:
                                  context.theme.primaryTextTheme.button!.color,
                                color: context.theme.primaryColorLight,
                              ),
                            )),
                            const NumberBall(
                              text: '+',
                              size: 30,
                              format: false,
                              textSize: 16,
                              color: Colors.transparent,
                            ),
                            Row(
                                children: List.generate(
                              2,
                              (index) => NumberBall(
                                text: '$index',
                                size: 30,
                                textColor:
                                  context.theme.primaryTextTheme.button!.color,
                                color: context.theme.primaryColorLight,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  const SizedBox(width: 16),
                  const Spacer(),
                  SizedBox(
                    height: 44,
                    child: TextButton(
                      onPressed: () {  },
                      child: const Text('取消'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 140,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '就这张了',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.25,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const SizedBox(
                            height: 16,
                            child: Icon(Icons.check, size: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class RollTicketHeader extends StatelessWidget {
  final String title;
  final String? description;

  const RollTicketHeader({
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              description != null
                  ? Text(
                      description!,
                      style: context.textTheme.caption!.copyWith(fontSize: 14),
                    )
                  : const SizedBox(),
            ],
          ),

          const Spacer(),

          IconButton(
            onPressed: () {},
            splashRadius: 24,
            iconSize: 30,
            icon: const Icon(Icons.expand_less),
          ),
        ],
      ),
    );
  }
}
