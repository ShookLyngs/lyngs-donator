import '../../../main.dart';

enum ListSectionDirection {
  row,
  column,
}

class ListSection extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final ListSectionDirection direction;
  final EdgeInsetsGeometry? outerPadding;
  final EdgeInsetsGeometry? headerPadding;
  final EdgeInsetsGeometry? contentPadding;

  ListSection({
    required this.title,
    required this.children,
    this.outerPadding,
    this.headerPadding,
    this.contentPadding,
    this.direction = ListSectionDirection.column,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outerPadding ?? const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: headerPadding ?? const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: contentPadding ?? const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: buildChild(children),
          ),
        ],
      ),
    );
  }

  Widget buildChild(List<Widget> children) {
    if (direction == ListSectionDirection.row) {
      return Row(
        children: children,
      );
    } else {
      return Column(
        children: children,
      );
    }
  }
}
