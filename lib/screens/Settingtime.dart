// import 'package:flutter/material.dart';
// import 'timedispen.dart';
// import "package:date_time_picker/date_time_picker.dart";


// class Settingtime extends StatefulWidget {
//   @override
//   _SettingtimeState createState() => _SettingtimeState();
// }

// class _SettingtimeState extends State<Settingtime> {
//   bool checkboxValue1 = false;
//   bool checkboxValue2 = false;
//   bool checkboxValue3= false;
//   bool checkboxValue4= false;
//   bool checkboxValue5= false;
//   bool checkboxValue6= false;
//   bool checkboxValue7= false;
  
  
//   int id = 1;

//   int _value = 1;

//   String dispen;

//   String dropdownValue = '1';

//   // TextEditingController _controller4;

//   // String _valueChanged4 = '';

//   // String _valueToValidate4 = '';
  
//   // String _valueSaved4 = '';




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ตั้งค่าข้อมูลยา"),
//       ), 
//       body: Center(
//         child:Column( 
          
//             children: [
          //      Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
               
          //       FlatButton(
          //         onPressed: () {
          //           //validateTextField(context);
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) =>Timedispen()),
          //           );
          //         },
          //         child: Text("ช่องที่1",),
          //         textColor: Colors.black,
          //         // fontSize:20.0,
                  
          //       ),

                
          //     ],
          //   ),
          //     Container(
          //   child: TextField(
          //     onChanged: (value) {
          //       setState(() {
          //         dispen = value;
                  
          //       });
          //     },
              
          //     decoration: InputDecoration(
                
          //       labelText: "ชื่อยา",
          //       hintText: "ป้อนชื่อยา",
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.green[200]),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ),
          //   ),
          //   width: 250,
          //   padding: EdgeInsets.all(16),
                  
          // ),
            
  // Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [ 
  //                FlatButton(
  //                 onPressed: () {
  //                   //validateTextField(context);
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(builder: (context) => Fivepage()),
  //                   );
  //                 },

  //                 child: Text("วันที่", style: TextStyle(fontSize: 18)),
  //                 textColor: Colors.black,
                   
  //                 // fontSize:20.0,
  //               ),
         
              
      
  //             ],
  //           ),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //        Text("อาทิตย์"),
                  
          //        Checkbox(
                   
          //             value: checkboxValue1,
                      
                      
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue1 = value;
          //     });
          //   },
          // ),
          // Text("จันทร์"),
          //   Checkbox(
          //   value: checkboxValue2,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue2 = value;
          //     });
            
          //   },
            
          // ),
          // Text("อังคาร"),
          //   Checkbox(
          //   value: checkboxValue3,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue3 = value;
          //     });
          //   },
          // ),
          //   Text("พุธ"),
          //   Checkbox(
          //   value: checkboxValue4,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue4 = value;
          //     });
          //   },
          // ),
          // Text("พฤหัสบดี"),
          // Checkbox(
          //   value: checkboxValue5,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue5 = value;
          //     });
          //   },
          // ),
          // Text("ศุกร์"),
          // Checkbox(
          //   value: checkboxValue6,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue6 = value;
          //     });
          //   },
          // ),
          // Text("เสาร์"),
          // Checkbox(
          //   value: checkboxValue7,
          //   onChanged: (value) {
          //     setState(() {
          //       checkboxValue7 = value;
               
          //     });
          //   },
          // ),
          //     ] 
          // ),


//  Container(
            
//              padding:  EdgeInsets.all(20.0), 
//           child: DropdownButton(
//              value: _value,
//               items: [
//                 DropdownMenuItem(
//                   child: Text("1 เม็ด"),
//                   value: 1,
//                 ),
//                 DropdownMenuItem(
//                   child: Text("2 เม็ด"),
//                   value: 2,
//                 ),
//                 DropdownMenuItem(
//                   child: Text("3 เม็ด"),
//                   value: 3
//                 ),
//                 DropdownMenuItem(
//                     child: Text("4 เม็ด"),
//                     value: 4
//                 ),
//                 DropdownMenuItem(
//                     child: Text("5 เม็ด"),
//                     value: 5
//                 ),
                
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   _value = value;
//                 });
//               }
//           ),

// ),
   
// Center(
//              child: Column(
               
//                children: [
//                  Container(width: 200,
//                    child: DateTimePicker(  //เลือกเวลา

//                 type: DateTimePickerType.time,
//                 controller: _controller4,
//                 //initialValue: _initialValue,
//                 icon: Icon(Icons.access_time),
//                 timeLabelText: "Time",
                
//                 //use24HourFormat: false,
//                 onChanged: (val) => setState(() => _valueChanged4 = val),
//                 validator: (val) {
//                   setState(() => _valueToValidate4 = val);
//                   return null;
//                 },

//                 onSaved: (val) => setState(() => _valueSaved4 = val),
//               ), 
//               ),
                
               
            

//                ], 
//              ),

//            ),
    


//             RaisedButton(
              
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              
//                 onPressed:  () {
//                   // call firebase add data
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) =>Timedispen()),
//                   );
//                 },
//                 child: Text("บันทึก"),
//                 color: Colors.green[200],
//                 textColor: Colors.black,
                
//               ),
              

              
  



//             ],  
              
//         ),
        
//       ),



//     );
//   }
// }