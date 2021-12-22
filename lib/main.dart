import 'package:flutter/material.dart';
import 'package:inherited_flutter_example/home/home_page.dart';
import 'package:inherited_flutter_example/model/user_model.dart';
import 'package:inherited_flutter_example/splash/splash_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /// create inherited object
    return UserModel(
      name: 'Enzo Souza',
      birthDate: '27/05/1999',
      imgAvatar: 'https://i.imgur.com/k0AYd9D.jpg',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/':(_)=> SplashPage(),
          '/home':(_) => HomePage()
        },
      ),
    );
  }
}