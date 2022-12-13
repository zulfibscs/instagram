import 'package:flutter/material.dart';

class AccontTab2 extends StatelessWidget {
  const AccontTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: 70,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(color: Colors.deepPurple.shade200,),
      );

    },);
  }
}
