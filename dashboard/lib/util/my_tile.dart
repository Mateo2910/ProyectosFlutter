import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int prod;
  const MyTile({Key? key, required this.prod}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            height: 78,
            decoration: BoxDecoration(
              image:  DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage ('images/img${prod + 1}.jpg')
              ),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [


                  ElevatedButton(onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ), child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),

                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                      alignment: Alignment.bottomRight,

                    ),
                    onPressed: () {  },
                    child: const Text('Más Información'),

                  ),
                  Center(
                    child: Column(
                      children: [
                    if (prod == 0)...[Text('Nike AB 1 Blanco con negro')]
                        else if (prod == 1)...[Text('Nike AirB Blancas')]
                    else if (prod == 2)...[Text('Nike AB 1 Azul con blanco')]
                      else if (prod == 3)...[Text('Nike AB 1 Morado con blanco')]
                        else if (prod == 4)...[Text('Nike Doble Plataforma Rojas')]
                          else if (prod == 5)...[Text('Nike AirForce Blancas')]
                            else if (prod == 6)...[Text('Nike AB Verde con blanco')]
                              else if (prod == 7)...[Text('Nike AB 1 Rosadas')]
                                else if (prod == 8)...[Text('Nike AirForces Blancas')]
                                  else if (prod == 9)...[Text('Nike Rosadas AB')]
                      ],
                   ),
                  ),
                ],
            )


        ),
      );
  }
}
