import '../../../main.dart';

class PanelGroupTitle extends StatelessWidget {
  final IconData? icon;
  final String title;
  final bool spaceBetween;
  final Widget? suffix;
  final EdgeInsetsGeometry padding;

  PanelGroupTitle({
    this.icon,
    required this.title,
    this.spaceBetween = false,
    this.suffix,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(children: [
        getPrefix(context),

        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: Theme.of(context).textTheme.bodyText2!.color,
          ),
        ),

        getSpacer(),
        getSuffixWidget(),
      ]),
    );
  }

  Widget getPrefix(BuildContext context) {
    if (icon != null) {
      return Row(children: [
        CircleAvatar(
          radius: 14,
          backgroundColor: Theme.of(context).backgroundColor,
          child: Icon(
            Icons.compare_arrows,
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 10),
      ]);
    } else {
      return const SizedBox(width: 0);
    }
  }

  Widget getSuffixWidget() {
    if (suffix != null) {
      return suffix!;
    } else {
      return const SizedBox(width: 0);
    }
  }

  Widget getSpacer() {
    return spaceBetween ? const Spacer() : const SizedBox(width: 0);
  }
}
