import '../../main.dart';

class RadiusCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? innerPadding;
  final void Function()? onTap;

  RadiusCard({
    required this.child,
    this.innerPadding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Ink(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: InkWell(
          onTap: onTap,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: innerPadding ?? const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
