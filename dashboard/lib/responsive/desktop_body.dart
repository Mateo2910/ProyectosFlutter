import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super (key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            myDrawer,

            
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                        itemBuilder: (context, index){
                          return   MyBox(box: index,);
                        },
                        ),
                      ),
                    ),
                    
                    
                    Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index){
                            return MyTile(prod: index,);
                          },
                        )
                    ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                        image: const DecorationImage(image: AssetImage('images/pic5.jpg'),fit: BoxFit.fill),
                      ),
                      child: const Center(
                        child: Text(
                          '30% Discount in shoes',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,

                          ),
                        ),
                      ),

                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children:  [
                            const Center(
                              child: Text(
                                'C O N T A C T O',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30

                                ),
                              ),
                            ),
                            Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                 child: FloatingActionButton(onPressed: () { },
                                  backgroundColor: Colors.black54,
                                  child: const Icon(
                                      Icons.facebook
                                  ),

                                ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: FloatingActionButton(onPressed: () { },
                                    backgroundColor: Colors.black54,
                                    child: const Icon(
                                        Icons.whatsapp
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: FloatingActionButton(onPressed: () { },
                                    backgroundColor: Colors.black54,
                                    child: const Icon(
                                        Icons.telegram
                                    ),

                                  ),
                                ),

                              ],
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

