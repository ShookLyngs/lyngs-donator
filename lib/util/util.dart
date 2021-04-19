import '../main.dart';

void showSnackBar(String content, {
  String? label,
  void Function()? onPressed
}) async {
  if (Get.context == null) {
    return print('showSnackBar: $content');
  }

  ScaffoldMessenger.of(Get.context!)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(content),
      duration: const Duration(seconds: 2),
      action: label == null
          ? null
          : SnackBarAction(label: label, onPressed: onPressed ?? () {}),
    ));
}