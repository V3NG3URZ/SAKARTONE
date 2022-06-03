import 'package:flutter/material.dart';
import 'package:sakarton/config/palette.dart';

class SakartoneUser extends StatelessWidget {
  final String image;
  final String nom;
  final String prenom;
  final String team;

  const SakartoneUser(
    {Key? key, required this.image, required this.nom, required this.prenom, required this.team}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: () => {
        
        },
        style: ElevatedButton.styleFrom(
          shape:  RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
          primary: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(image),  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(nom, style:const TextStyle(color: Palette.sakartoneBlack),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(prenom, style:const TextStyle(color: Palette.sakartoneBlack)),
                            ),
                          ],
                        ),
                        Text(team, style:const TextStyle(color: Palette.sakartoneBlack)),
                      ],
                    ),
                  )
                  
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(Icons.edit, color: Palette.sakartoneOrange,)
                  ),
                  IconButton(
                    onPressed: () {
                    
                    },
                    icon: const Icon(Icons.delete, color: Colors.red,)
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