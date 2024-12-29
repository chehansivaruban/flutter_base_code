// this file contains all the string extensions used in the project to convert
//string to bool, string to amount, etc.
extension StringX on String {
  bool toBool() {
    return this == 'true';
  }

  String toAmount() {
    return replaceAll(r'/\B(?=(\d{3})+(?!\d))/g', ",");
  }

  int toInt() {
    try {
      return int.parse(this);
    } catch (e) {
      return -1;
    }
  }
}
