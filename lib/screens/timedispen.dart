// import 'package:firebasede/screens/home.dart';
// import 'package:flutter/material.dart';
// import 'Settingtime.dart';


// class Timedispen extends StatefulWidget { 
  
//   @override
//   _TimedispenState createState() => _TimedispenState();
// }

// class _TimedispenState extends State<Timedispen> {
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ตั้งค่าข้อมูลยา"),
//       ),
//       body:Container(
//          child: Column(
//           children: [ 
//         Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 //Icon(Icons.access_time_sharp, color: Colors.black),
//                 RaisedButton(
//                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                  child: Text("แก้ไข") ,color: Colors.green[200], 
                 
//                  onPressed: () { 
//                    Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) =>Settingtime()),
//                     );
//                   }, 
//                   ),




//                 // FlatButton(
//                 //   onPressed: () {
//                 //     //validateTextField(context);
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(builder: (context) =>Settingtime()),
//                 //     );
//                 //   },
//                 //   child: Text("แก้ไข", style: TextStyle(fontSize: 18)),
//                 //   color: Colors.white,
//                 //   textColor: Colors.black,
//                 //   // fontSize:20.0,
//                 // ),

                
//               ],
              
//             ),
       
//         Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                  //Icon(Icons.access_time_sharp, color: Colors.black),
                 

//                RaisedButton(
//                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 
//                  child:  Text("กลับหน้าหลัก") ,color: Colors.green[200], 
                 
//                  onPressed: () { 
                   
//                    Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) =>HomePage()),
                      
//                     );
//                   }, ),



                 
//                 // FlatButton(
                  
//                 //   onPressed: () {
//                 //     //validateTextField(context);
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(builder: (context) =>HomePage()),
//                 //     );
//                 //   },
//                 //   child: Text("กลับหน้าหลัก", style: TextStyle(fontSize: 18)),
//                 //   color: Colors.white,
//                 //   textColor: Colors.black,
//                 //   // fontSize:20.0,
//                 // ),

                
//               ],
              
//             ),
       



//         ],
        
//       ),

//       ),


//     );
//   }
// }