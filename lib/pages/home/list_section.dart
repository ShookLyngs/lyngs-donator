import '../../main.dart';

enum ListSectionDirection {
  row,
  column,
}

class ListSection extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final ListSectionDirection direction;

  ListSection({
    required this.title,
    required this.children,
    this.direction = ListSectionDirection.column,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),
          buildChild(children),
        ],
      ),
    );
  }

  Widget buildChild(List<Widget> children) {
    if (direction == ListSectionDirection.row) {
      return Row(children: children);
    } else {
      return Column(children: children);
    }
  }
}
