import 'package:flutter/material.dart';
import 'package:sakarton/layout/salarie/show.dart';
import 'package:sakarton/test.dart';

import 'config/palette.dart';
import 'layout/salarie/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //dataProvider.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Smily',
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyText2: TextStyle(
                fontFamily: "Roboto",
                fontSize: 18,
                color: Palette.sakartoneBlack,
              ),
              button: TextStyle(
                fontFamily: "Roboto",
                fontSize: 18,
              ),
            )),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        home: SacartoneList(),
        // routes: {
        //   '/': (context) => const ShowSalarie(),
        // }
    );
  }
}