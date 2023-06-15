import 'package:fluttertoast/fluttertoast.dart';

void longPressToast() {
  Fluttertoast.showToast(
    msg: 'Please Long Press!!',
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    fontSize: 16,
  );
}
