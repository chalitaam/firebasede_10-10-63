// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// class Settingdispen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _Settingdispen();
// }

// class _Settingdispen extends State<Settingdispen> {
//   // _showDataPicker() async {
//   //   Locale myLocale = Localizations.localeOf(context);
//   //   var picker = await showDatePicker(
//   //       context: context,
//   //       initialDate: DateTime.now(),
//   //       firstDate: DateTime(2016),
//   //       lastDate: DateTime(2019),
//   //       locale: myLocale);
//   //   setState(() {
//   //     _time = picker.toString();
//   //   });
//   // }

//   _showTimePicker() async {
//     var picker =
//         await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     setState(() {
//       _time = picker.toString();
//     });
//   }

//   var _time;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ตั้งค่าข้อมูลยา"),
//       ),
//        body: Center(
//          child: Column(
           
//            children: <Widget> [
//             Padding(padding: EdgeInsets.only(top:100),),Text('ช่อง1'),
             
             
//              Padding(padding: EdgeInsets.only(top:100),),
//               Text("เวลา", style: TextStyle(fontSize: 20)),
//               IconButton(
                
//            icon: Icon(Icons.add),
           
//            onPressed: () {
//           _showTimePicker(); 
//             },
            
//               ),
//                 Text
//                (_time),
//             // RaisedButton(child: Text('+'),
               
              

//                //onPressed: () => 
               
               
//               // ),
              
               
                      

//            ],
//          ),
//        ),

//     );
//   }
// }
// // return Column(
// //       children: <Widget>[
// //         RaisedButton(
// //           child: Text(_time == null ? 'Select date': _time),
// //           onPressed: () => _showDataPicker(),
// //         ),
// //         RaisedButton(
// //                      child: Text(_time == null ? 'select time' : _time),
// //           onPressed: () => _showTimePicker(),
// //         ),

// //       ],
// //     );