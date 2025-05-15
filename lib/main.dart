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
  var num=0;
  final person= List<String>.generate(50,(i)=>'Personppppp $i');
  int index =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
//-------------------scafold---------------//
       home: Scaffold(


        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //   BottomNavigationBarItem(icon: Icon(Icons.add_chart),label:'add')
        // ]),
        // drawer: Drawer(child:Text('data')),


        //---------------listview.custom

// body: ListView.custom(
//   childrenDelegate: SliverChildBuilderDelegate(BuildContext context, int index){
//   return ListTile(title: Text(person[index]),);
// }),

//------------------cliprect----------------------//
body:Center(
   child:ClipRect(
  child:Align(
    alignment: Alignment.center,
    heightFactor: 0.8,
    widthFactor: 0.9,

    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeldmRc5w2_bqLFOdoWkoPhVlmjZes2Y1sQA&s"),
),
),
     )




//-----------------------indexed stack------------------///////////


// body:Center(
//   child: IndexedStack(
//     index: index,
//     children: [
//       Container(
//       child:Text('1',style: TextStyle(fontSize:40),),
//       padding: EdgeInsets.all(80),
//       color:Colors.blue
//       ),
       
      
//       Container(
//       child:Text('2',style: TextStyle(fontSize:40),),
//       color:Colors.black87,
//        padding: EdgeInsets.all(80),
//       ),
//       Container(
//       child:Text('3',style: TextStyle(fontSize:40),),
//       color:Colors.red,
//        padding: EdgeInsets.all(80),
//       ),
//       Container(
//       child:Text('4',style: TextStyle(fontSize:40),),
//       color:Colors.greenAccent,
//        padding: EdgeInsets.all(80),
//       ),

//     ],
//   ),
// ),
// floatingActionButton: FloatingActionButton(child: Icon(Icons.abc_rounded),
//   onPressed: (){
//   setState(() {
//     if(index==3){
//       index=0;
//     }else{
//       index++;
//     }
    
//   });

// }),


  //--------------------STACK-------------///
  // child: Container(
  //   child: Stack(
  //    //alignment:Alignment.bottomRight,
  //    clipBehavior: Clip.none ,
  //    textDirection: TextDirection.ltr,
  //     children: [
  //       Container(
  //         height: 300,
  //         width: 300,
  //         color: Colors.blue,
  //       ),
  //       Positioned(
  //         top:- 100,
  //        right: 50,
  //         child: 
  //         Container(
  //         height: 200,
  //         width: 100,
  //         color: Colors.redAccent,
  //       ),),
  //       Container(
  //         height: 100,
  //         width: 120,
  //         color: Colors.teal,
  //       ),
  //       Text('data')

  //     ],
  //   ),
  // ),





//--------------------itembuiler seperated builder----------------//
// body: ListView.separated(
//  itemCount: person.length,
// itemBuilder: (BuildContext  context,  int index) {
//   return Card(
//     child:Padding(
//     child:Text(person[index]),
//     padding:EdgeInsetsGeometry.all(90),
//   )
//   );
//   // ListTile(title: Text(person[index]),);
//   },
//   separatorBuilder: (BuildContext context, int index){
//     return Card(
//       child: Padding(child: Text('data'),
//         padding: EdgeInsetsGeometry.all(40)),
//          color: Colors.amber,
//     );
//   }
  

 //---------------------list view item buider--------//
//   itemBuilder: (BuildContext context, int index){
//     return ListTile(
//       leading: Icon(Icons.person_2),
//       trailing: Icon(Icons.call),
//       title: Text(person[index]),);
//       }
// seperatorbuilder:
//   ),
    
  //-----------listview------------///
//ListView(
  //padding: EdgeInsets.all(20),
   //physics:NeverScrollableScrollPhysics() ,
   //reverse: true,
  //children:
//   ListTile.divideTiles
//   (context: context,
//     tiles: [

   
  
  
//   // [
//     ListTile(
//       title: Text("title of lsittile"),
//       subtitle: Text('subbtitle'),
//       leading: Icon(Icons.access_alarm_sharp),
//       trailing: Icon(Icons.stadium),
//       contentPadding: EdgeInsets.all(20),
//     ),
//     ListTile(
//       title: Text("title of lsittile"),
//       subtitle: Text('subbtitle'),
//       leading: Icon(Icons.access_alarm_sharp),
//       trailing: Icon(Icons.stadium),
//       contentPadding: EdgeInsets.all(20),
//     ),
//     ListTile(
//       title: Text("title of lsittile"),
//       subtitle: Text('subbtitle'),
//       leading: Icon(Icons.access_alarm_sharp),
//       trailing: Icon(Icons.stadium),
//       contentPadding: EdgeInsets.all(20),
//     ),
//     ListTile(
//       title: Text("title of 2"),
//       subtitle: Text('subbtitle2'),
//       leading: Icon(Icons.access_alarm_sharp),
//       trailing: Icon(Icons.stadium),
//       contentPadding: EdgeInsets.all(20),
//       selected: true,
//       selectedTileColor: Colors.blue,
//       onTap: (){},
//       onLongPress: (){},
//       enabled: false,
//       dense: true,
//       tileColor: Colors.blue,)

//     ]).toList()
 
// )
  
      
  //   ),
  //   ElevatedButton(onPressed: () {}, child:Text("data")),
  //   Container(
  //     height: 100,
  //     child:Text('first'),
  //     color: Colors.redAccent,
  //   ),
  //   Container(
  //     height: 100,
  //     child:Text('first2'),
  //     color: Colors.green,
  //   ),
  //   Container(
  //     height: 100,
  //     child:Text('first3'),
  //     color: Colors.amber,
  //   ),  
  //   Container(
  //     height: 100,
  //     child:Text('first'),
  //     color: Colors.redAccent,
  //   ),
  //   Container(
  //     height: 100,
  //     child:Text('first'),
  //     color: Colors.green,
  //   ),
  //   Container(
  //     height: 100,
  //     child:Text('first'),
  //     color: Colors.amber,
  //   )
    
    
  // ],







        ////////---------material app------------//////
      //   appBar: AppBar(
      //     title: Text('antrikh'), 
      //     shadowColor: Colors.blue,
      //     backgroundColor: Colors.red,
      //     ),
      //  ),
      //     theme:ThemeData(
      //       brightness:Brightness.light,
      //       primaryColor: Colors.blue,  
      //     ),
      //     darkTheme: ThemeData(
      //       brightness: Brightness.dark,
      //     ),
      //     themeMode: ThemeMode.light,




        



          ////-------------------first-----------///////
        //   child: ElevatedButton(
        //      child:Text('$num'),
        //     onPressed: () {
        //       setState(() {
        //         num++;
        //       });
        //     }
        //   ,

        // ),
       )
      
    );
  }
}
