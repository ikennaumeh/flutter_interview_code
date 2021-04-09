import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
          children: [
            Home(),
            Container(color: Colors.red,),
            SendMoney(),
            Container(color: Colors.yellowAccent,),
            Settings(),
          ],
         ),
         bottomNavigationBar: TabBar(
           tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.wallet_membership),),
            Tab(icon: Icon(Icons.send),),
            Tab(icon: Icon(Icons.report),),
            Tab(icon: Icon(Icons.settings),),
         ],
          labelColor: Colors.yellow,
          unselectedLabelColor: Color(0xff613EEA),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.red,

    ),
    backgroundColor: Colors.grey,
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//        floatingActionButton: FloatingActionButton(
//        onPressed: (){
//        Navigator.pushNamed(context, SendMoney.SEND_MONEY_SCREEN);
//        },
//        child: SvgPicture.asset("assets/icons/send.svg"),
//        backgroundColor: Color(0xff613EEA),
//
//        ),
    ),
    ),

    );
  }
}


