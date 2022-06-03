import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sakarton/layout/salarie/show.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final UserProvider userProvider = UserProvider();
  // final TripProvider tripProvider = TripProvider();

  @override
  void initState() {
    //dataProvider.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider<UserProvider>(
        //     create: (context) => UserProvider()),
        // ChangeNotifierProvider<TripProvider>(
        //     create: (context) => TripProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Forms',
        home: ShowSalarie(),
        // routes: {
        //   '/': (context) => const (),
        //   // AddUserView.routename: (_) => const AddUserView(),
        // },
        theme: ThemeData(
          
        ),
      ),
    );
  }
}