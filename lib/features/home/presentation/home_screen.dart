import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterinterviewcode/features/home/presentation/widgets/credit_card.dart';
import 'package:flutterinterviewcode/features/home/presentation/widgets/search_box.dart';
import 'package:flutterinterviewcode/features/home/presentation/widgets/sent_tab.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/send_money.dart';
import 'package:flutterinterviewcode/features/settings/presentation/settings_screen.dart';

class Home extends StatelessWidget {
  static const HOME_SCREEN = "home_screen";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Padding(padding: EdgeInsets.only(left: 16.0, top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Balance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 4.0,),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$926.21",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32.0,
                          letterSpacing: 0.5,
                        ),),
                      Stack(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/profile.jpg")
                              ),
                            ),
                          ),
                          Positioned(
                            right: 3.0,
                            child: Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: Color(0xff54D3AD),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  height: 165,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                     children: [
                       CreditCard(colors: [Color(0xff54D3AD),Color(0xff63E2BC),],),
                       CreditCard(colors: [Color(0xff8676FB),Color(0xffAB7BFF),],),
                       CreditCard(colors: [Color(0xffF5A25F),Color(0xffFAA865),],),
                     ]

                  ),
                ),
                SizedBox(height: 5.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TabBar(tabs:[
                    Tab(child: Container(
                        height: 28.0,
                        width: 170.0,
                        child: Text(
                          'Sent',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18.0),)),),
                    Tab(child: Container(
                        height: 28.0,
                        width: 170.0,
                        child: Text(
                          'Received',
                          style: TextStyle(color: Colors.black54,
                              fontSize: 18.0),)),),
                  ],
                    indicatorColor: Color(0xffFF7D00),

                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SentTab(),
                      ReceivedTab(),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar:BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: SvgPicture.asset("assets/icons/home-active.svg"),),
              IconButton(icon: SvgPicture.asset("assets/icons/wallets.svg"),),
              IconButton(icon: SvgPicture.asset("assets/icons/reports.svg"),),
              IconButton(icon: SvgPicture.asset("assets/icons/settings.svg"),onPressed: (){
                Navigator.pushNamed(context, Settings.SETTINGS_SCREEN);
              },),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, SendMoney.SEND_MONEY_SCREEN);
            },
            child: SvgPicture.asset("assets/icons/send.svg"),
            backgroundColor: Color(0xff613EEA),

        ),
      ),
    );
  }
}






class ReceivedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


