import '../main.dart';

abstract class GetxWidget<T> extends StatelessWidget {
  const GetxWidget({Key? key}) : super(key: key);

  final String? tag = null;

  T get state => GetInstance().find<T>(tag: tag)!;

  @override
  Widget build(BuildContext context);
}