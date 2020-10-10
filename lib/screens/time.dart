import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  final String channel;

  const Time({Key key, this.channel}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  var _time;
  TextEditingController _controller4;

  @override
  void initState() {
    super.initState();

    getTimeInfo(chanel: "ch1");
  }

  void getTimeInfo({String chanel}) {}

  _showTimePicker() async {
    var picker =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _time = picker.toString();
      _controller4 = _time;
      print(_time);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ตั้งค่าข้อมูลยา"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                  ),
                  Text("ช่อง ${widget.channel}"), //เรียกช่องยาแต่ละช่อง

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 100),
                        ),
                        Text(
                          ("เวลา"),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_alarm_sharp),
                          onPressed: () {
                            _showTimePicker();
                          },
                        ),
                      ]),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          child: TextField(
                            controller: _controller4,
                            decoration: InputDecoration(
                              //border: InputBorder.none,
                              // icon: Icon(Icons.access_time),
                              labelText: "เวลา",
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[

//       Text(
//     ("เวลา"),
//       style: TextStyle(

//       fontWeight: FontWeight.bold,
//       color: Colors.lightBlue,

//       ),

//       ),
//        IconButton(
//   icon: Icon(Icons.add_alarm_sharp),
//   onPressed: () {
//     _showTimePicker();
//   },
// ),

// Padding(
//   padding: EdgeInsets.only(top: 100),
// ),
// Text("ช่อง ${widget.channel}"), //เรียกช่องยาแต่ละช่อง

// Padding(
//   padding: EdgeInsets.only(top: 100),
// ),
// Text("เวลา", style: TextStyle(fontSize: 20)),
// IconButton(
//   icon: Icon(Icons.add),
//   onPressed: () {
//     _showTimePicker();
//   },
// ),

// StreamBuilder
//Text("เวลา"),
// RaisedButton(child: Text('+'),

//onPressed: () =>

// ),
//   ],
// ),

//   );
// }

// _showDataPicker() async {
//   Locale myLocale = Localizations.localeOf(context);
//   var picker = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2016),
//       lastDate: DateTime(2019),
//       locale: myLocale);
//   setState(() {
//     _time = picker.toString();
//   });
// }

// import 'package:flutter/material.dart';
// import "package:date_time_picker/date_time_picker.dart";
// import 'Settingtime.dart';
// import 'Settingdispen.dart';
// class Time extends StatefulWidget {
//   @override
//   _TimeState createState() => _TimeState();
// }

// class _TimeState extends State<Time> {

//   TextEditingController _controller4;

//   String _valueChanged4 = '';

//   String _valueToValidate4 = '';

//   String _valueSaved4 = '';

//    _showDataPicker() async {
//     Locale myLocale = Localizations.localeOf(context);
//     var picker = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2016),
//         lastDate: DateTime(2019),
//         locale: myLocale);
//     setState(() {
//       _time = picker.toString();
//     });
//   }

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

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ตั้งค่าข้อมูลยา"),
//       ),
//       body: Center(

//         child:Column(
//           children: [

// Center(

//              child: Column(

//                children: [
//                  Padding(padding: EdgeInsets.only(top:100),),
//                  Text("เวลา", style: TextStyle(fontSize: 20)),

//                  RaisedButton(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                     onPressed: () {

//                          Navigator.push(
//                            context,

//                            MaterialPageRoute(builder: (context) => Settingdispen()),

//                          );

//                     },

//                     child: Icon(Icons.access_time, size: 18,),

//               color: Colors.green[200],
//               textColor: Colors.white,

//                   ),
//                   // RaisedButton(

//                   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                   //   onPressed: () {

//                   //        Navigator.push(
//                   //          context,

//                   //          MaterialPageRoute(builder: (context) => Settingtime()),

//                   //        );

//                   //   },

//                   //   child: Icon(Icons.add, size: 18,),
//                   //     color: Colors.green[200],
//                   //     textColor: Colors.white,

//                   // ),

//                   FloatingActionButton (

//                     onPressed: () {

//                       Navigator.push(
//                            context,

//                            MaterialPageRoute(builder: (context) => Settingtime()),

//                          );
//                     },
//                     child: Icon (Icons.add ,size: 18,),

//                   ),

//                   // Column(
//                   //   mainAxisAlignment: MainAxisAlignment.end,
//                   // children: <Widget>[
//                   //   RaisedButton(

//                   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

//                   //   onPressed: () {

//                   //        Navigator.push(
//                   //          context,

//                   //          MaterialPageRoute(builder: (context) => Time()),

//                   //        );

//                   //   },

//                   //   child: Icon(Icons.add, size: 18,),
//                   //     color: Colors.green[200],
//                   //     textColor: Colors.white,

//                   // )
//                   // ],
//                   // ),
//                   // Text("เวลา", style: TextStyle(fontSize: 18)),
//                   // Icon(Icons.settings, size: 18),

//               //    Container(width: 200,
//               //      child: DateTimePicker(  //เลือกเวลา

//               //   type: DateTimePickerType.time,
//               //   controller: _controller4,
//               //   //initialValue: _initialValue,
//               //   icon: Icon(Icons.access_time),
//               //   timeLabelText: "Time",

//               //   //use24HourFormat: false,
//               //   onChanged: (val) => setState(() => _valueChanged4 = val),
//               //   validator: (val) {
//               //     setState(() => _valueToValidate4 = val);
//               //     return null;
//               //   },

//               //   onSaved: (val) => setState(() => _valueSaved4 = val),

//               // ),

//               // ),

//           ],

//         ),

//       ),

//           ],
//       ),
//     ),
//     );

//   }
// }
//}
