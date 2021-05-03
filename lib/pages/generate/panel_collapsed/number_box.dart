import '../../../main.dart';
import '../generate_state.dart';

enum NumberBoxStatus {
  normal,
  smallest,
  biggest,
}

class NumberBox extends GetxWidget<GeneratePageState> {
  final int minValue;
  final int maxValue;

  NumberBox({
    this.minValue = 1,
    this.maxValue = 20,
  });

  // TextField Controller
  final TextEditingController controller = TextEditingController(text: '1');
  // Value status
  final Rx<NumberBoxStatus> status = (NumberBoxStatus.smallest).obs;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(state.innerBorderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(state.innerBorderRadius),
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(
                left: state.innerBorderRadius,
              ),
              child: Material(
                color: Colors.transparent,
                child: SizedBox(
                  width: 34,
                  child: Obx(() => IconButton(
                    onPressed: status.value != NumberBoxStatus.smallest
                        ? () => onClickStep(context, -1)
                        : null,
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      Icons.remove,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  )),
                ),
              ),
            ),

            const SizedBox(width: 4),
            Expanded(child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                isDense: true,
                border: InputBorder.none,
                suffix: Text('倍'),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                signed: false,
                decimal: false,
              ),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
            )),
            const SizedBox(width: 4),

            ClipRRect(
              borderRadius: BorderRadius.horizontal(
                right: state.innerBorderRadius,
              ),
              child: Material(
                color: Colors.transparent,
                child: SizedBox(
                  width: 34,
                  child: Obx(() => IconButton(
                    onPressed: status.value != NumberBoxStatus.biggest
                        ? () => onClickStep(context, 1)
                        : null,
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      Icons.add,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void change(int newValue, { bool relative = true }) {
    if (relative) {
      var computed = int.parse(controller.text) + newValue;
      controller.text = max(min(computed, maxValue), minValue).toString();
    } else {
      if (newValue >= minValue && newValue <= maxValue) {
        controller.text = newValue.toString();
      }
    }
    updateStatus();
  }

  void onClickStep(BuildContext context, int newValue) {
    FocusScope.of(context).requestFocus(FocusNode());
    change(newValue);
  }

  void updateStatus() {
    var transferred = int.parse(controller.text);
    if (transferred == minValue) {
      status.value = NumberBoxStatus.smallest;
    } else if (transferred == maxValue) {
      status.value = NumberBoxStatus.biggest;
    } else {
      status.value = NumberBoxStatus.normal;
    }
  }
}
