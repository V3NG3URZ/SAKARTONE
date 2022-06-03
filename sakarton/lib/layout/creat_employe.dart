import 'package:flutter/material.dart';
import 'package:sakarton/layout/salarie/list.dart';

import 'info.dart';

class CreatEmploye extends StatelessWidget{
  const CreatEmploye({Key? key}) : super(key: key);

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
                    child: const Text("Création salarié", textAlign: TextAlign.left, overflow: 
                    TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(75, 75, 75, 1)),)
                  ), 

                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.026)),
                  Divider(
                  color: Color.fromRGBO(198, 197, 197  , 1)
                  ),
                  
                  Container(
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: <Widget>[
                        TextField(
                            decoration: InputDecoration(
                              labelText: 'Nom',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color.fromRGBO(75, 75, 75, 1)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                            )),
                        TextField(
                            decoration: InputDecoration(
                              labelText: 'Prénom',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color.fromRGBO(75, 75, 75, 1)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                            )),
                        TextField(
                            decoration: InputDecoration(
                              labelText: "Date d'embauche",
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color.fromRGBO(75, 75, 75, 1)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                            )),

                        TextField(
                            decoration: InputDecoration(
                              labelText: 'Equipe',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color.fromRGBO(75, 75, 75, 1)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                            )),
                        TextField(
                            decoration: InputDecoration(
                              labelText: 'Salaire journalier',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color.fromRGBO(75, 75, 75, 1)),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                            )),
                        SizedBox(height: 40.0),
                        Container(
                          width: 350.0,
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Color.fromRGBO(75, 75, 75, 1),
                            color: Color.fromRGBO(75, 75, 75, 1),
                            elevation: 7.0,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 1),)),
                              child: Center(
                                child: const Text("Créer", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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