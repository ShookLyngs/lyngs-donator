import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../main.dart';
import 'history_list.dart';
import 'widgets/ticket.dart';

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
    return SafeArea(
      child: Ink(
        decoration: BoxDecoration(
          color: context.theme.cardColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const RollTicketHeader(
              title: '摇一张',
              description: '随机生成一张大乐透',
            ),
            const SizedBox(height: 16),
            RollTicketBody(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Ticket(
                  borderRadius: 10,
                  splitterRadius: 6,
                  top: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Tag(children: [
                          Text(
                            '#',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.theme.primaryColor,
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '21051',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              // fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),

                      const RollTicketNumberBox(),
                    ],
                  ),
                  bottom: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tag(children: [
                          Text(
                            '#',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.theme.primaryColor,
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '21051',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              // fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 24),
            const RollTicketFooter(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class RollTicketNumberBox extends StatelessWidget {
  const RollTicketNumberBox();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
                textColor: context.theme.primaryTextTheme.button!.color,
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
              6,
              (index) => NumberBall(
                text: '$index',
                size: 30,
                textColor: context.theme.primaryTextTheme.button!.color,
                color: context.theme.primaryColorLight,
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class RollTicketBody extends StatelessWidget {
  final List<Widget> children;

  const RollTicketBody({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: children,
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
      padding: const EdgeInsets.only(left: 16, right: 8),
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
              SizedBox(height: description != null ? 2 : 0),
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
            onPressed: () {
              Navigator.of(context).pop();
            },
            splashRadius: 24,
            iconSize: 24,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class RollTicketFooter extends StatelessWidget {
  const RollTicketFooter();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Spacer(),
        SizedBox(
          height: 44,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: context.textTheme.caption!.color,
            ),
            child: Row(
              children: [
                const Icon(Icons.expand_less),
                const SizedBox(width: 4),
                const Text('详细'),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        SizedBox(
          width: 140,
          height: 44,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: context.theme.primaryTextTheme.button!.color,
              backgroundColor: context.theme.primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '确认关注',
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
    );
  }
}