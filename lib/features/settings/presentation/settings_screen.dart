import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterinterviewcode/features/home/presentation/home_screen.dart';
import 'package:flutterinterviewcode/features/send_money/presentation/send_money.dart';

class Settings extends StatelessWidget {
  static const String SETTINGS_SCREEN = "settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          SizedBox(height: 50.0,),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Settings",
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
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(8.0),
              children: List.generate(10, (index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff613EEA),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: icons[index],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(settingsList[index]),
                          ),
                        ],
                      ),
                    ),
                  );
                }),

                ),
          ),
        ],
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
    );
  }
}
List<String> settingsList = [
  "Profile Infomation",
  "Password",
  "Email",
  "Phone Number",
  "Notifications",
  "Currency",
  "Language",
  "Account",
  "Private Policy",
  "Terms of Use"
];

List<SvgPicture> icons = [
  SvgPicture.asset("assets/icons/i.svg", ),
  SvgPicture.asset("assets/icons/lock.svg",),
  SvgPicture.asset("assets/icons/email.svg",),
  SvgPicture.asset("assets/icons/call.svg",),
  SvgPicture.asset("assets/icons/notifications.svg", ),
  SvgPicture.asset("assets/icons/\$.svg",),
  SvgPicture.asset("assets/icons/world.svg",),
  SvgPicture.asset("assets/icons/user.svg",),
  SvgPicture.asset("assets/icons/privacy.svg",),
  SvgPicture.asset("assets/icons/question.svg", ),

];