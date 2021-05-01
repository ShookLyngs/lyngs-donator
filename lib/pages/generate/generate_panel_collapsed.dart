import '../../main.dart';

class GeneratePanelCollapsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: const Center(child: Text('------')),
    );
  }
}
