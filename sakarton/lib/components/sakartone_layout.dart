import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakarton/config/palette.dart'; 

class SakartoneLayout extends StatelessWidget{

  const SakartoneLayout({Key? key, required this.children,
  }) : super(key: key);

  final List<Widget> children;


  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color:Palette.sakartoneOrange,
                    width: 300,
                  ),
                  Container(
                    color: Palette.sakartoneWhite,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white,),
                        //icon
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Text('retour'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: const Text('SAKARTONE',
                                style: TextStyle(
                                  color: Palette.sakartoneWhite,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800
                                ),
                          ),                          
                        ),
                        SvgPicture.asset(
                          'img/logo.svg',
                        ),
                      ],
                    )
                  ],
                ),
                ListView(
                  children: children,
                )
                ],
              ),
            )
            ],
          ),
        )
      ),
    );
  }
}