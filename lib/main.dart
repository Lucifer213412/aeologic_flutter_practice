//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
    var _size=20.0;
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //////////////////widget--1//////////////////////////////////////////
        appBar: AppBar(
          backgroundColor: Color.fromARGB(136, 118, 34, 34),
          elevation: 40,
          shadowColor: const Color.fromARGB(137, 162, 110, 110),
          toolbarHeight: 120,
          toolbarOpacity: 0.3,
          //-----leading-------//
          leading: Icon(Icons.insert_emoticon),
          leadingWidth: 100,






          //--------------title-----------------------//
           title: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeldmRc5w2_bqLFOdoWkoPhVlmjZes2Y1sQA&s"),


            centerTitle: true,
           //Text('My App'),


           //----------------actions---------------//
          actions: [Icon(Icons.more_horiz_outlined),],
          actionsIconTheme: IconThemeData(color: Colors.amber,size: 40),
      


           // Add a title for better UI consistency
        ),
        drawer:Drawer(),
        
        body: Center(
          
          // ////////////////////////widget--2/////////////////////////
          // child:TextButton.icon
          // (
          //   icon: Icon(Icons.arrow_back),
          //   onPressed:(){
          //   print('just press');
          // },
          // onLongPress: () {
          //   print('Long press');
          // },
          // label: Text('Text button icon label'),
          // style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 147, 164, 178),iconColor: Colors.white,minimumSize: Size(100, 50),padding: EdgeInsets.all(10),elevation:50
          // ),
          // child: Text('text button press')
          // )
          

          ///////////wiget --3----images--widget//////////////////////
      //  child: Image.asset('images/image1.jpg')





      ////////////////////widget--4--elevated button//////////////////
      // child: ElevatedButton.icon(onPressed: () {
      //   print('button pressed');
      //   },
      //   icon:Icon(Icons.bubble_chart), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,padding: EdgeInsets.all(10),elevation: 50), 
      //   label: Text('press me'),
       
        
          
      /////////////////widget--5--icons/////////////////////////////////

      // child: Icon(
      //   Icons.bubble_chart,
      //   size:400,
      //   semanticLabel: 'bubble,',),

        
/////////////////widget--6--iconbutton button/////////////////////////////////
    //   child: IconButton(onPressed: (){}, 
    //  icon:Icon(Icons.bubble_chart_outlined),
    //  // icon:Text('data'),
    //   //icon:Image.network('data:image/jpeg;base64,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'),
    //   iconSize: 100, color: Colors.blue,
    //   tooltip: 'press me',
    //   disabledColor: Colors.greenAccent,
    //   splashColor: const Color.fromARGB(255, 184, 37, 27),
    //   highlightColor: Colors.purple,
    //   hoverColor: Colors.lightBlueAccent,
    //   splashRadius: 500,
    //   ),

      

      ///////////////////////widget ---8----fluter logo with animantion//////////////
      // child:
      //  Column(
      //   children: [FlutterLogo(
      //     size: _size,
      //     style: FlutterLogoStyle.stacked,
      //     textColor: Colors.black,
      //     curve:Curves.easeIn,
      //     duration:Duration(seconds: 20),
      //        ),
      //    ElevatedButton(
      //     onPressed: ()
      //     {
      //       setState(()
      //      {
      //       _size=_size+100.0;
      //       if(_size>500.0)
      //       {
      //         _size=_size;
              
      //       }
      //      }
      //      );
      //     }, child: Text('data'))
      //   ],
      //  )

    

      












       ),
///////////////////////widget ---7----floating action button//////////////
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      //  floatingActionButton: FloatingActionButton(onPressed: (){
      //   print('button pressed');
      //  },
      //  child: Icon(Icons.add),
      //  hoverColor: Colors.redAccent,
      //  splashColor:Colors.blueGrey,
       
      //  ),

// floatingActionButton: FloatingActionButton.extended(onPressed: (){},
//  label:Icon(Icons.r_mobiledata),
//  icon:Icon(Icons.add),
//  foregroundColor: Colors.red,
//  backgroundColor:Colors.black26,
//  shape:RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.elliptical(20, 30)),
//  )
//  ),



      
        

      ),
    );
    
  }
}
