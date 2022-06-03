import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakarton/components/sakartone_user_button.dart';
import 'package:sakarton/config/palette.dart'; 

class SakartoneLayout extends StatelessWidget{

  const SakartoneLayout({Key? key, required this.children,
  }) : super(key: key);

  final List<Widget> children;


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
                    width: 350,
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
                  Row(
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
                              color: Colors.white,
                              size: 3
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
                            )
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SakartoneUser(image: 'img/profil.png', nom: 'thomas', prenom: 'esquieu', team: 'team',),
                    ]
                  )
                ],
              )
            ],
          )
        )
      ),
    );
  }
}