import 'package:flutter/material.dart';
import 'package:sakarton/components/sakartone_user_button.dart';

import 'components/sakartone_bottombar.dart';

class test extends StatelessWidget{
  const test({Key? key}) : super(key: key);
  
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Column(
        children: const[
          SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
          SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
          SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
          SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
        ],
      )
      

    );
  }

}