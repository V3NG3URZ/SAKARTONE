import 'package:flutter/material.dart';

class SakartoneBottomBar extends StatelessWidget {
  final int selectedIndex;
  const SakartoneBottomBar(
    {Key? key, required this.selectedIndex}
  ) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), 
            label: 'compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_rounded),
            label: 'compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: 'compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'info',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: ,
      )
    );
  }
}