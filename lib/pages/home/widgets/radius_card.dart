import '../../../main.dart';

class RadiusCard extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? outerBorderRadius;
  final ShapeBorder? innerBorderRadius;
  final EdgeInsetsGeometry? outerPadding;
  final EdgeInsetsGeometry? innerPadding;
  final Color? color;
  final void Function()? onTap;

  RadiusCard({
    required this.child,
    this.outerBorderRadius,
    this.innerBorderRadius,
    this.outerPadding,
    this.innerPadding,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outerPadding ?? const EdgeInsets.symmetric(vertical: 6),
      child: Ink(
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).cardColor,
          borderRadius: outerBorderRadius ?? const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: InkWell(
          onTap: onTap,
          customBorder: innerBorderRadius ?? RoundedRectangleBorder(
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
