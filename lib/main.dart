import 'package:flutter/material.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/send_money.dart';

import 'features/home/presentation/home_screen.dart';
import 'features/settings/presentation/settings_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      initialRoute: Home.HOME_SCREEN,
      routes: {
        Home.HOME_SCREEN : (context) => Home(),
        Settings.SETTINGS_SCREEN: (context) => Settings(),
        SendMoney.SEND_MONEY_SCREEN: (context) => SendMoney(),
      },
    );
  }
}


