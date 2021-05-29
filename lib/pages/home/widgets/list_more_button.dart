import '../../../main.dart';
import 'radius_card.dart';

class ListMoreButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  ListMoreButton({
    required this.text,
    this.icon = Icons.chevron_right,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadiusCard(
          onTap: onTap,
          color: Colors.transparent,
          outerPadding: const EdgeInsets.symmetric(vertical: 6),
          innerPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              const SizedBox(width: 2),
              Icon(
                icon,
                size: 18,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
