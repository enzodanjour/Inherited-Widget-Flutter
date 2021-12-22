import 'package:flutter/widgets.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDate;

  UserModel(
      {Key? key, required this.name,
      required this.imgAvatar,
      required this.birthDate,
      required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthDate != oldWidget.birthDate;
  }

  static UserModel of(BuildContext context){
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    /// verify in execution time
    assert(userModel != null, 'UserModel not exists in BuildContext');
    return userModel!;
  }
}
