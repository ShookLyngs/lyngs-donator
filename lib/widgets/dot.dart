import '../main.dart';

class Dot extends StatelessWidget {
  final double size;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  Dot({
    this.size = 8,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    var defaultRadius = BorderRadius.all(Radius.circular(size));

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).primaryColor,
        borderRadius: borderRadius ?? defaultRadius,
      ),
    );
  }
}
