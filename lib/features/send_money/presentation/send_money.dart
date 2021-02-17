import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterinterviewcode/features/home/presentation/home_screen.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/widgets/bank_page.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/widgets/custom_textfield.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/widgets/mini_card.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/widgets/new_card.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/widgets/recipient_card.dart';
import 'package:flutterinterviewcode/features/settings/presentation/settings_screen.dart';


class SendMoney extends StatelessWidget {
  static const SEND_MONEY_SCREEN = "send_money";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50.0,),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Send money",
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
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TabBar(tabs:[
                    Tab(child: Container(
                        height: 28.0,
                        width: 170.0,
                        child: Text(
                          'Card',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18.0),)),),
                    Tab(child: Container(
                        height: 28.0,
                        width: 170.0,
                        child: Text(
                          'Bank',
                          style: TextStyle(color: Colors.black54,
                              fontSize: 18.0),)),),
                  ],
                    indicatorColor: Color(0xffFF7D00),

                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CardPage(),
                      BankPage(),
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
              IconButton(icon: SvgPicture.asset("assets/icons/home-active.svg"),onPressed: (){
                Navigator.pushNamed(context, Home.HOME_SCREEN);
              },),
              IconButton(icon: SvgPicture.asset("assets/icons/wallets.svg"), onPressed: null,),
              IconButton(icon: SvgPicture.asset("assets/icons/reports.svg"),onPressed: null,),
              IconButton(icon: SvgPicture.asset("assets/icons/settings.svg"),onPressed: (){
                Navigator.pushNamed(context, Settings.SETTINGS_SCREEN);
              },),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: SvgPicture.asset("assets/icons/send.svg"),
          backgroundColor: Color(0xff613EEA),

        ),
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Select your card", style: TextStyle(fontSize: 13.0),),
            ),
            Container(
              height: 125.0,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MiniCard(color: Color(0xffF0F1F4), text: "****  8014",),
                  MiniCard(color: Color(0xff613EEA), text: "****  3849",),
                  NewCard(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Recipient", style: TextStyle(fontSize: 13.0),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Show All", style: TextStyle(fontSize: 13.0, color: Color(0xff613EEA)),),
                ),
              ],
            ),
            Container(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecipientCard(color: Color(0xffF0F1F4), image: "assets/images/image3.jpg", name: "James \nBond" ,),
                  RecipientCard(color: Color(0xff613EEA), image: "assets/images/image2.jpg", name: "Franz \nFerdinand" ,),
                  RecipientCard(color: Color(0xffF0F1F4), image: "assets/images/image.jpg", name: "John \nDoe" ,),
                ],
              ),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Transaction details", style: TextStyle(fontSize: 13.0),),
            ),
            CustomTextField(labelText: "Amount",labelColor: Color(0xff613EEA), suffixText: "change currency", prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/icons/\$.svg"),

            ),
            ),
            SizedBox(height: 24.0,),
            CustomTextField(labelText: "Description (optional)"),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left:16.0, right: 16.0),
              child: Container(
                height: 56,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(0xff613EEA),
                ),
                child: Center(child: Text("Confirm", textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








