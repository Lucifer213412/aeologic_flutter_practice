import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());  
  }

  class MyApp extends StatefulWidget{
    @override
   State<StatefulWidget> createState() => MyAppstate();

  
  }
  class MyAppstate extends State<MyApp>{
    String imgUrl='';
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        home:Scaffold( 
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 480,
                  width: 320,
                  color: Colors.amber,
                  child: FutureBuilder(future: getdata(), builder: (context,snapshot)
                  {
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }else{
                      return
                      Center( 
                        child: Image.network(imgUrl, width: 300, height: 300)
                      );
                    }
                  }),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    imgUrl='https://picsum.photos/200/300';
                  });
                }, child: Text('relaod'))
              ],
            ),),
       
        


          
        
      
    
          
       

                 
        ),
      );
   }
  
  
  Future<String>getdata() async{
    await Future.delayed(const Duration(seconds: 3));

    imgUrl='https://cdn.pixabay.com/photo/2024/12/05/21/28/candles-9247498_1280.jpg';
    return imgUrl;
  }
  }

//--------------------interactive wiget----------------------------------// 
    // body: Center(
          //   child:Container(
          //     color: Colors.red,
          //   child: ClipRect(
          //     child: InteractiveViewer(
          //       scaleEnabled: true,
          //       maxScale: 10,
          //       minScale: 0.1,
          //       boundaryMargin:EdgeInsets.all(30) ,
          //       constrained: false,
                 
          //       child: Image.network(
          //         'https://cdn.pixabay.com/photo/2024/12/05/21/28/candles-9247498_1280.jpg')),
          //   ),
          // ),
          // ),
          
            
//--------------------snackbar er----------------------------------//   

  // body: Builder(builder: (context) {
  //           return Center(
  //               child: ElevatedButton(onPressed: (){
  //                 final message = SnackBar(
  //                   content: Text("this is snack bar"),
  //                   backgroundColor: Colors.red,
  //                   padding: EdgeInsets.all(10),
  //                   shape: StadiumBorder(),
  //                   duration: Duration(seconds: 3),
  //                   action:SnackBarAction(
  //                     label: 'done',
  //                   onPressed: (){},)
  //                 );
  //                 Scaffold.of(context).showSnackBAr(message);
                 
  //                 ),
  //               }, child: Text('click me')),
  //           );
  //         }),


  //       ),
  //     );
  //   }
  // }

//--------------------vertical Divider----------------------------//
  //  body: Row(
  //         children: [
  //           Container(
  //             width: 200,
  //             color: Colors.black,
  //           ),
  //            const VerticalDivider(
  //             thickness: 10,
  //             color: Colors.red,
  //             width: 20,
  //             indent: 15,
  //             endIndent: 15,
  //            ),
  //           Container(
  //              width: 200,
  //             color: Colors.black,
  //           ),
  //           const Divider(
  //             thickness: 10,
  //             color: Colors.red,
  //             height: 20,
  //             indent: 15,
  //             endIndent: 15,
  //            ),
  //           Container(
  //           width: 200,
  //             color: Colors.black,
  //           ),
  //         ],
  //        ),

     

//--------------------Divider----------------------------//

  //  body: Column(
        //   children: [
        //     Container(
        //       height: 200,
        //       color: Colors.black,
        //     ),
        //      const Divider(
        //       thickness: 10,
        //       color: Colors.red,
        //       height: 20,
        //       indent: 15,
        //       endIndent: 15,
        //      ),
        //     Container(
        //       height: 200,
        //       color: Colors.black,
        //     ),
        //     const Divider(
        //       thickness: 10,
        //       color: Colors.red,
        //       height: 20,
        //       indent: 15,
        //       endIndent: 15,
        //      ),
        //     Container(
        //       height: 200,
        //       color: Colors.black,
        //     ),
        //   ],
        //  ),


//--------------------inkwell----------------------------//

  // body:Center(
  //           child:InkWell(
  //             onTap: () {
  //             print('Button pressed');
  //           },
  //           // onTapDown:(){
  //           //   print('Button pressed');
  //           // },
  //          splashColor: const Color.fromARGB(255, 46, 205, 168),
  //          highlightColor:Colors.blueGrey,
  //          borderRadius: BorderRadius.all(Radius.circular(100)),
  //             child: Container(
                
  //               height: 200,
  //               width: 200,
  //               color: Colors.lightGreen,
  //               child: Center(
  //                 child: Text('Hello, World!',
  //                 style: TextStyle(fontSize: 30),),
  //               ),
  //             ),
  //           )
  //         )
//--------------------textfield----------------------------//

//  body: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText:'kuch to daal isme bhai',
//                 border: OutlineInputBorder(), 
//                // prefix: Icon(Icons.person,color: Colors.amberAccent),
//                 suffixText: 'users',
//                 prefix: CircularProgressIndicator(),
//               ),
//                 cursorColor:Colors.green,
//                 cursorWidth:20,
//                 showCursor: false,
//                 maxLines: 3,//null
//                 maxLength: 4,
//                 obscureText: true,//passwrd
//                 obscuringCharacter: 's',
//                 toolbarOptions: true,
//                 keyboardType: TextInputType.number

//               )),


//--------------------textfield----------------------------//
// body: Padding(padding: 
//           EdgeInsets.symmetric(horizontal: 30),
//           child: Center(
//             child: TextField(

//               //readOnly: true,
//               //enabled: false,
//               autofocus: true,
//               keyboardType: TextInputType.numberWithOptions(),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.cyanAccent,
//                 //border:InputBorder.none,
//                 //label: Text('textfield'),
//                 border:OutlineInputBorder(
//                   borderSide:BorderSide(color:Colors.red,width: 25)
//                 //  borderRadius: BorderRadius.circular(30),
//                   ),
//                   hintText: 'Enter your number',
//                   hintStyle: TextStyle(color:Colors.cyanAccent,fontSize: 40),
//                   helperText: 'username and paswwrf',

//                   focusedBorder: OutlineInputBorder(
//                     borderSide:BorderSide(color:Colors.green))
                 
//               ),
//             ),
//           ),
//         ), 


//--------------  circle avtar  ------------------------//

  // body: Center(
  //         child: CircleAvatar(
  //           backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2025/04/28/19/59/female-model-9565629_1280.jpg'),
  //       // radius: 100,
  //        backgroundColor:Colors.amberAccent ,
  //         child: Text('data'),
  //         minRadius: 20,
  //         maxRadius: ,
  //         foregroundColor: const Color.fromARGB(255, 17, 167, 50),),
  //        ) ,
          

//--------------  safearea  ------------------------//

//  body: SafeArea(
//             top: false,
//             minimum: EdgeInsets.all(20),// for padding purpose
//             child: Text('data',
//             style:TextStyle(
//               color: Colors.orange,
//               fontSize: 50),),
//           ),

//-------------------    buttonbar  -------------//

// appBar: AppBar(title: Text('Antriskh'),
// backgroundColor: Colors.amberAccent,
// ),
// body:OverflowBar(
//   //alignment: MainAxisAlignment.center,
//  // mainAxisSize:MainAxisSize.max,
//  overflowDirection:VerticalDirection.down ,
//  overflowSpacing: 40,
//   children: [

//     ElevatedButton(onPressed: () {},child: Text('ok')),
//     ElevatedButton(onPressed: () {}, child:Text('cancel')),
//     ElevatedButton(onPressed: () {}, child:Text('done this')),
//     ElevatedButton(onPressed: () {}, child:Text('done that')), 
//   ]
// )



    

          //--------------------------------------draweer-------------------------//
          // appBar: AppBar(
          //   title: Text('Antriksh Gautam'),
          // ),
          // drawer:Drawer(
          //   child: ListView(
          //     children:[
          //      DrawerHeader(
          //       decoration: BoxDecoration(
          //         color: Colors.blue
          //      ),
          //     child:Column(
          //       children:[
          //      ClipRRect(
               
          //      borderRadius:  BorderRadius.circular(60),
          //      child:Image.network('https://ik.imagekit.io/demo/img/beach_photo_wuC6hiv0Uy.jpeg?tr=w-600,f-png:l-text,i-This%20is%20a%20beautiful%20beach,pa-10_20,bg-00000080,co-FFFFFF,fs-24,ly-N10,l-end',
          //      height:100,
          //      width: 100,
          //      ),),])),
          //      Column(
          //       children: [
          //     ListTile(
          //       title: Text('Antriksh Gautam'),
          //       leading: Icon(Icons.access_alarm_rounded),
          //     ),
          //     ListTile(
          //       title: Text('account'),
          //       leading: Icon(Icons.access_alarm_outlined),
          //     ),
          //     ListTile(
          //       title: Text('cart'),
          //       leading: Icon(Icons.access_time_filled_sharp)
          //     ),
          //     ListTile(
          //       title: Text('log out'),
          //       leading: Icon(Icons.access_alarm_rounded),
          //     ),
          //     ]
          //      ),

          //     ]
          //   ),
          // )
          
      
      
          //------------------------clipperRRect-------------------------------------//
          // body: Center(
            
            
          //   child: ClipRRect(
            
          //     borderRadius: BorderRadius.all(Radius.circular(50)),
          //     child: Align(
          //     child: Image.network("https://imagekit.io/blog/content/images/2020/06/"),
          //       heightFactor: 0.3,  
          //       widthFactor: 0.3,
          //   )    
          //   ),
          // ),


//-----------------------cllipoval------------//////////
// body:Center(

//   child: ClipOval(
//     child:Container(
//     child: Image.network("https://imagekit.io/blog/content/images/2020/06/Server_User.png"),
//     ),
//     clipper: myClipper(),
//   ),
// )



//-------------custom class for cliperoval-------------------//

//   class myClipper extends CustomClipper<Rect>{
//     @override
//     Rect getClip(Size size) {
//       return Rect.fromCircle(center: Offset(50, 20), radius:90);
//   }
//   bool shouldReclip(Objectclipper)
// {
//   return false;
// }
//   }
  