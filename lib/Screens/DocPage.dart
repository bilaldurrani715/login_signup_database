import 'package:flutter/material.dart';

class docpage extends StatefulWidget {
  const docpage({Key? key}) : super(key: key);

  @override
  State<docpage> createState() => _docpageState();
}

class _docpageState extends State<docpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select your Doctor'
        ),
      ),
      body: Column(
        children: [

          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/doc.png'),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Dr.Javid MBBS (Islambad)',
                        style: TextStyle(fontSize: 20, ),),

                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                              child: Text('Appoiment')),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.favorite)),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.add))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/doc.png'),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Dr.Javid MBBS (Islambad)',
                        style: TextStyle(fontSize: 20, ),),

                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                              child: Text('Appoiment')),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.favorite)),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.add))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),


          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/doc.png'),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Dr.Javid MBBS (Islambad)',
                        style: TextStyle(fontSize: 20, ),),

                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                              child: Text('Appoiment')),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.favorite)),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.add))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/doc.png'),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Dr.Javid MBBS (Islambad)',
                        style: TextStyle(fontSize: 20, ),),

                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                              child: Text('Appoiment')),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.favorite)),
                          TextButton(onPressed: (){},
                              child: Icon(Icons.add))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )


        ],

      ),




    );
  }
}
