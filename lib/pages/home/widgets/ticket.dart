import '../../../main.dart';

class Ticket extends StatelessWidget {
  final Widget top;
  final Widget bottom;
  final double radius;
  final double splitterRadius;
  final double borderRadius;
  final Color? backgroundColor;
  final List<BoxShadow>? shadow;

  const Ticket({
    required this.top,
    required this.bottom,
    this.radius = 12,
    this.splitterRadius = 20,
    this.borderRadius = 0,
    this.backgroundColor,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        boxShadow: shadow ?? const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipPath(
            clipper: TicketPath(
              innerRadius: splitterRadius,
              outerRadius: borderRadius,
              position: TicketPosition.bottom,
            ),
            child: Material(
              child: Ink(
                color: backgroundColor ?? context.theme.cardColor,
                child: top,
              ),
            ),
          ),
          ClipPath(
            clipper: TicketPath(
              innerRadius: splitterRadius,
              outerRadius: borderRadius,
              position: TicketPosition.top,
            ),
            child: Material(
              child: Ink(
                color: backgroundColor ?? context.theme.cardColor,
                child: bottom,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TicketPath extends CustomClipper<Path> {
  final double innerRadius;
  final double outerRadius;
  final TicketPosition position;

  const TicketPath({
    this.innerRadius = 10,
    this.outerRadius = 0,
    this.position = TicketPosition.top,
  });

  @override
  Path getClip(Size size) {
    var path = Path();

    if (position == TicketPosition.top) {
      path.moveTo(0, 0 + outerRadius);
      path.lineTo(0, size.height - outerRadius);
      path.cubicTo(
        0, size.height - outerRadius,
        0, size.height,
        outerRadius, size.height,
      );

      path.lineTo(size.width - outerRadius, size.height);
      path.cubicTo(
        size.width - outerRadius, size.height,
        size.width, size.height,
        size.width, size.height - outerRadius,
      );

      path.lineTo(size.width, 0 + innerRadius);
      path.cubicTo(
        size.width, innerRadius,
        size.width - innerRadius, innerRadius,
        size.width - innerRadius, 0,
      );

      path.lineTo(0 + innerRadius, 0);
      path.cubicTo(
        innerRadius, 0,
        innerRadius, innerRadius,
        0, innerRadius,
      );
    }

    if (position == TicketPosition.bottom) {
      path.moveTo(outerRadius, 0);
      path.cubicTo(
        outerRadius, 0,
        0, 0,
        0, outerRadius,
      );

      path.lineTo(0, size.height - innerRadius);
      path.cubicTo(
        0, size.height - innerRadius,
        innerRadius, size.height - innerRadius,
        innerRadius, size.height,
      );

      path.lineTo(size.width - innerRadius, size.height);
      path.cubicTo(
        size.width - innerRadius, size.height,
        size.width - innerRadius, size.height - innerRadius,
        size.width, size.height - innerRadius,
      );

      path.lineTo(size.width, outerRadius);
      path.cubicTo(
        size.width, outerRadius,
        size.width, 0,
        size.width - outerRadius, 0,
      );
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

enum TicketPosition {
  top,
  bottom,
}


