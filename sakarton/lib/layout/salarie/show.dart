import 'package:flutter/cupertino.dart';
import 'package:sakarton/components/sakartone_layout.dart';



class ShowSalarie extends StatelessWidget{
  const ShowSalarie({Key? key}) : super(key: key);
  
  @override
  Widget build(Object context) {
    return SakartoneLayout(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Text('data'),
        )
      ]
    );
  }

}