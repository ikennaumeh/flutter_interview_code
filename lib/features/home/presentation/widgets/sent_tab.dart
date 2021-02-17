import 'package:flutter/material.dart';
import 'package:flutterinterviewcode/features/home/presentation/widgets/search_box.dart';
import 'package:flutterinterviewcode/features/home/presentation/widgets/transcation_tile.dart';
import '../home_screen.dart';

// view for the Sent Tab
class SentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0,),
            SearchBox(),
            SizedBox(height:5.0),
            Text("Today", style: TextStyle(fontSize: 14.0, letterSpacing: 0.2),),
            SizedBox(height:5.0),
            TransactionTile(name: "Rebecca Moore",amount: "\$972.00", date: "20th January, 2019",),

            SizedBox(height: 10.0,),
            Text("Yesterday", style: TextStyle(fontSize: 14.0, letterSpacing: 0.2),),
            SizedBox(height:5.0),
            TransactionTile(name: "Franz Ferdinand",amount: "\$502.00", date: "19th January, 2019",),
            SizedBox(height:5.0),
            TransactionTile(name: "Jane Doe",amount: "\$650.00", date: "19th January, 2019",),



          ],
        ),
      ),
    );
  }
}