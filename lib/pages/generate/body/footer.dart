import '../../../main.dart';

class GenerateFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.52,
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Get.theme.backgroundColor,
          border: Border.all(
            width: 2,
            color: Get.theme.primaryColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(children: [
          SizedBox(
            height: 50,
            width: 50,
            child: TextButton(
              onPressed: () {},
              child: const Icon(Icons.refresh),
              style: TextButton.styleFrom(
                primary: Get.theme.primaryColor,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: SizedBox(
              width: 1,
              height: 20,
              child: Container(
                color: Colors.black12,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Get.theme.primaryColor,
                  padding: const EdgeInsets.all(0),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  '添加关注',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}