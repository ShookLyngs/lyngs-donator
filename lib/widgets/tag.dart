import '../main.dart';

class Tag extends StatelessWidget {
  final List<Widget>? children;
  final Widget? child;
  final Icon? icon;
  final Axis direction;

  const Tag({
    this.child,
    this.children,
    this.icon,
    this.direction = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: context.theme.canvasColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: _buildChild(),
    );
  }

  Widget _buildChild() {
    if (child != null) {
      return child!;
    }

    if (children != null) {
      return _buildChildren(children!);
    }
    if (icon != null) {
      return _buildChildren();
    }

    return const SizedBox();
  }

  Widget _buildChildren([List<Widget>? content]) {
    var result = <Widget>[];

    if (icon != null) {
      result.add(icon!);
    }
    if (content != null) {
      result.addAll(content);
    }

    if (direction == Axis.horizontal) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: result,
      );
    } else {
      return Column(children: result);
    }
  }
}
