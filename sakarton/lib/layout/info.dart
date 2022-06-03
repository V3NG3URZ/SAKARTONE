import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sakarton/layout/salarie/list.dart';

import 'creat_employe.dart';

class info extends StatelessWidget{
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(

      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0), // here the desired height
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: const Color.fromRGBO(254, 183, 1, 1),
          centerTitle: true,
          title: const Text(
            'sakartone',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 233, 233, 233)),
          ),

        ),
      ),

      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  color: const Color.fromRGBO(254, 183, 1, 1),
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                color: const Color.fromARGB(255, 233, 233, 233),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(201, 201, 201 , 1),
                    blurRadius: 1.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                  )
                ],
              ),
              height: 485,
              width: MediaQuery.of(context).size.width * 0.90,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.75,
                  ), 
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text('Informations relatives à Sakartone', textAlign: TextAlign.left, overflow: 
                    TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ), 

                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.026)),
                  Divider(
                  color: Color.fromRGBO(198, 197, 197  , 1)
                  ),
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03)),
                  
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text("Sakartone, start-up créee en 2021 par Rick Astley et Yan Amar aspire à developper le commerce du cartons sous un oeil nouveau ! Sakartone propose à ses clients des cartons et matériels d'emballage sur mesure, renforcé aux emplacements stratégiques et offre la possibilité d'être réutilisés de nombreuses fois. Présent sur de nombreux réseaux sociaux, Sakartone souhaite instruire aux jeunes les belles valeures de l'environnement et embaucher de nouveaux salariés",  
                    textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ), 
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text('CA en 2021 : 306 800 Є', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ),
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text("Chaque salarié rapporte 236 Є par jour de CA à l'entreprise", textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ),
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),
                  Container(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text("Coût mensuel en salaire de l'entreprise : ", textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ),
                ],
              ),
            ),
          ],
        ),
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