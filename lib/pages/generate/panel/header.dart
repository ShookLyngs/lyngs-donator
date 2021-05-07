import 'dart:ui';

import '../../../main.dart';
import '../generate_state.dart';

class PanelHeader extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: -10.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor.withAlpha(160),
          ),
          child: Row(
            children: [
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {
                  state.panelController.close();
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(state.innerBorderRadius),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.expand_more,
                      size: 30,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '我的',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
              ),

              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}