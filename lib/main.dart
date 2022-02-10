import 'package:flutter/material.dart';
final myController1 = TextEditingController();
Color light=Color(0xFFF5EEDC);
bool svalue=false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

    ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  void _incrementCounter() {

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      image: new DecorationImage(image: svalue?new AssetImage("images/darkb.jpg"):new AssetImage("images/bgi.jpg"), fit: BoxFit.cover,),
    ),
      child: Scaffold(
        backgroundColor:Colors.transparent,
       appBar:AppBar(
           backgroundColor:svalue?Color(0xFF044343):Color(0xFFBB6464),
         centerTitle: true,
         title:
           Text('Fun Time',
               style:TextStyle(color:svalue?Color(0xFFFFC900):light,
                   fontFamily: "DancingScript",
                   fontWeight: FontWeight.bold,
                   fontSize:45
               ),
           ),
actions: [Switch(value:svalue,activeColor: Color(0xFFFFC900), onChanged:(newV){
         setState(() {
           svalue=newV;
         });
       })],


       ),
body: gui(),
      ),
    );
  }
}

class gui extends StatefulWidget {
  const gui({Key? key}) : super(key: key);


  @override
  _guiState createState() => _guiState();
}

class _guiState extends State<gui> {

  String valueChoose="";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 40,
        child: Container(

          color: svalue?Color(0xFF044343):Color(0xFFBB6464),

          width: MediaQuery.of(context).size.width*.7,
          height:400,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                    child: Text("Play With Fonts",
                    style: TextStyle(color:svalue?Color(0xFfFFC900):Colors.black87,
                        fontSize:20,
                      fontWeight:FontWeight.bold,
                      fontStyle: FontStyle.italic

                    ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: TextField(
                      controller: myController1,
                        keyboardType: TextInputType.text,
                      decoration: InputDecoration(

                        labelText:"ENTER TEXT",labelStyle:TextStyle(
                        color:Colors.black,fontWeight: FontWeight.bold
                         ) ,
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                        ),
                       fillColor: Colors.white.withOpacity(.7),

                        filled: true
                      )),

                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    height: 70,
                    child: OutlineButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                      borderSide: BorderSide(
                        color:svalue?Color(0xFFFFC900):light,
                      ),
                      splashColor:svalue?Color(0xFFFFC900):light,
                      onPressed: () {
                        setState(() {
                          print(myController1.text);

                        });
                      },
                      child:  Text('Confirm',style: TextStyle(color: svalue?Color(0xFFFFC900):light,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  ), //button
                  SizedBox(height: 20),
        Text(myController1.text,style: TextStyle(color:svalue?Color(0xFFFFC900):light ,
              fontStyle: FontStyle.italic,
        fontFamily:"ArchitectsDaughter",fontSize: 30),
        ),
                  SizedBox(height: 20),
                  Text(myController1.text,style: TextStyle(color:svalue?Color(0xFFFFC900):light,
                      fontWeight: FontWeight.bold,
                      fontFamily:"DancingScript",fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Text(myController1.text,style: TextStyle(color:svalue?Color(0xFFFFC900):light,
                      fontWeight: FontWeight.bold,
                      fontFamily:"Pacifico",fontSize: 30),
                  )


                ],
            ),
          ),
        ),
      ),
    );
  }
}
