import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakarton/components/sakartone_user_button.dart';

import '../../config/palette.dart';
import '../creat_employe.dart';
import '../info.dart';

class SacartoneList extends StatelessWidget{
  const SacartoneList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Column(
                textDirection: TextDirection.ltr,
                children: [
                  Container(
                    color: Palette.sakartoneOrange,
                    height: 250,
                  ),
                  Container(
                    color: Palette.sakartoneWhite,
                  )
                ],
              ),
              Column(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Container(
                   margin: EdgeInsets.all(20),
                   child:  Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Palette.sakartoneWhite,
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Retour",
                              style: TextStyle(
                                color: Palette.sakartoneWhite,
                                fontSize: 15
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              "SAKARTONE",
                              style: TextStyle(
                                color: Palette.sakartoneWhite,
                                fontSize: 25,
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          ),
                          Container(
                            child: SvgPicture.asset(
                              "img/logo.svg",
                              color: Colors.white,
                              width: 40,
                              height: 40,
                            )
                          ),
                        ],
                      )
                    ],
                  ),
                 ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
                      SakartoneUser(image: 'img/profil.png', nom: 'aze', prenom: 'fgh', team: 'team',),
                      SakartoneUser(image: 'img/profil.png', nom: 'jean', prenom: 'pierr', team: 'team',),
                      SakartoneUser(image: 'img/profil.png', nom: 'truc', prenom: 'bidule', team: 'team',),
                      SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
                      SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
                    ],
                  )
                ],
              )
            ],
          )
        )
      ),
//===============================================================================================================
//===============================================================================================================
//=================================BottomBar : Rechercher et Créer ==============================================
//===============================================================================================================
//===============================================================================================================

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          selectedItemColor: Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.groups_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              label: "Équipes",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SacartoneList()));
                  },
                  icon: const Icon(Icons.account_circle,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              label: "Salariés",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatEmploye()));
                  },
                  icon: const Icon(Icons.group_add,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              label: "Ajouter salarié",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const info()));
                  },
                  icon: const Icon(Icons.info,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              label: "Infos",
            ),

          ],
        ),
    );
  }

}