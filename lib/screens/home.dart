import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasede/screens/time.dart';
import 'package:flutter/material.dart';
// import 'chanal.dart';
//import 'Settingtime.dart';
import 'authen.dart';
import 'login.dart';
import 'time.dart';
//import 'Settingdispen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dispen1 = "";
  String dispen2 = "";
  String dispen3 = "";

  int pill_1 = 1; //จำนวนเม็ด
  int pill_2 = 1;
  int pill_3 = 1;

  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;

  @override
  void initState() {
    super.initState();
    // _controller1 = TextEditingController(text: dispen1);
    // _controller2 = TextEditingController(text: dispen2);
    // _controller3 = TextEditingController(text: dispen3);
    getChannelInfo(chanel: "ch1");
    getChannelInfo(chanel: "ch2");
    getChannelInfo(chanel: "ch3");
  }
  // @override
  // void initState2() {
  //   super.initState();
  //   _controller2 = TextEditingController(text: dispen);
  // }

  // @override
  // void initState3() {
  //   super.initState();
  //   _controller3 = TextEditingController(text: dispen);
  // }
  Future<void> getChannelInfo({String chanel}) async {
    await FirebaseFirestore.instance
        .collection('dispenser')
        .doc(chanel)
        .get()
        .then((value) {
      setState(() {
        if (chanel == "ch1") {
          _controller1 = TextEditingController(text: value.data()['drug_name']);
          pill_1 = value.data()['amount'];
        } else if (chanel == "ch2") {
          _controller2 = TextEditingController(text: value.data()['drug_name']);
          pill_2 = value.data()['amount'];
        } else if (chanel == "ch3") {
          _controller3 = TextEditingController(text: value.data()['drug_name']);
          pill_3 = value.data()['amount'];
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.login,
              color: Colors.white,
            ),
            onPressed: () => googleSignOut().whenComplete(() {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                  (route) => false);
              {
                // do something
              }
            }),
          )
        ],
        title: Text("ตั้งค่าข้อมูลยา"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          color: Colors.blue,
          child: Column(
            children: [
              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.arrow_right),
                        title: Text('ช่อง1'),
                      ),
                      Container(
                        child: TextField(
                          controller: _controller1,
                          // onChanged: (value) {
                          //   setState(() {
                          //     dispen1 = value;
                          //   });
                          // },
                          decoration: InputDecoration(
                            labelText: "ชื่อยา",
                            hintText: "ป้อนชื่อยา",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[200]),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        width: 250,
                        padding: EdgeInsets.all(16),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: DropdownButton(
                            value: pill_1,
                            items: [
                              DropdownMenuItem(
                                child: Text("1 เม็ด"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("2 เม็ด"),
                                value: 2,
                              ),
                              DropdownMenuItem(child: Text("3 เม็ด"), value: 3),
                              DropdownMenuItem(child: Text("4 เม็ด"), value: 4),
                              DropdownMenuItem(child: Text("5 เม็ด"), value: 5),
                            ],
                            onChanged: (value) {
                              setState(() {
                                pill_1 = value;
                              });
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            child: Text("ตั้งเวลา"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Time(channel: "1")),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            child: const Text("บันทึก"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            onPressed: () {
                              // final snackBar = SnackBar(
                              //   content:Text( "บันทึกแล้ว" ),
                              //   );
                              saveButton(channel: "ch1");
                            },
                            
                          ),
                          
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.arrow_right),
                        title: Text('ช่อง2'),
                      ),
                      Container(
                        child: TextField(

                          controller: _controller2,
                          // onChanged: (value) {
                          //   setState(() {
                          //     dispen2 = value;
                          //   });
                          // },
                          decoration: InputDecoration(
                            labelText: "ชื่อยา",
                            hintText: "ป้อนชื่อยา",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[200]),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        width: 250,
                        padding: EdgeInsets.all(16),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: DropdownButton(
                            value: pill_2 ,
                            items: [
                              DropdownMenuItem(child: Text("1 เม็ด"), value: 1),
                              DropdownMenuItem(child: Text("2 เม็ด"), value: 2),
                              DropdownMenuItem(child: Text("3 เม็ด"), value: 3),
                              DropdownMenuItem(child: Text("4 เม็ด"), value: 4),
                              DropdownMenuItem(child: Text("5 เม็ด"), value: 5),
                            ],
                            onChanged: (value) {
                              setState(() {
                               pill_2  = value;
                              });
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            child: const Text("ตั้งเวลา"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Time(channel: "2")),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            child: const Text("บันทึก"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            
                            onPressed: () {
                             
                              saveButton(channel: "ch2");
                              
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.arrow_right),
                        title: Text('ช่อง3'),
                      ),
                      Container(

                        child: TextField(
                           controller: _controller3,
                          // onChanged: (value) {
                          //   setState(() {
                          //     dispen3 = value;
                          //   });
                          // },
                          decoration: InputDecoration(
                            labelText: "ชื่อยา",
                            hintText: "ป้อนชื่อยา",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[200]),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        width: 250,
                        padding: EdgeInsets.all(16),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: DropdownButton(
                            value:pill_3 ,
                            items: [
                              DropdownMenuItem(
                                child: Text("1 เม็ด"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("2 เม็ด"),
                                value: 2,
                              ),
                              DropdownMenuItem(child: Text("3 เม็ด"), value: 3),
                              DropdownMenuItem(child: Text("4 เม็ด"), value: 4),
                              DropdownMenuItem(child: Text("5 เม็ด"), value: 5),
                            ],
                            onChanged: (value) {
                              setState(() {
                                pill_3 = value;
                              });
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            child: const Text("ตั้งเวลา"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Time(channel: "3")),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            child: const Text("บันทึก"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green[200],
                            onPressed: () {
                              saveButton(channel: "ch3");
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveButton({String channel}) async {
    if (channel == 'ch1') {
      await FirebaseFirestore.instance
          .collection('dispenser')
          .doc('ch1')
          .update({
        'drug_name': _controller1.text,
        'amount': pill_1,
      }).then((value) {});
    }

    else if (channel == 'ch2') {
      await FirebaseFirestore.instance
          .collection('dispenser')
          .doc('ch2')
          .update({
        'drug_name': _controller2.text,
        'amount': pill_2,
      }).then((value) {});
    }

    else if (channel == 'ch3') {
      await FirebaseFirestore.instance
          .collection('dispenser')
          .doc('ch3')
          .update({
        'drug_name': _controller3.text,
        'amount': pill_3,
      }).then((value) {});
    }




  }
}

//return Scaffold(
//    appBar: AppBar(
//      actions: <Widget>[
//        IconButton(
//          icon: Icon(
//           Icons.login,
//           color: Colors.white,
//          ),
//           onPressed:(){
//             // do something
//            },
//        ),
//      ],
//     title: Text("หน้าหลัก"),
//   ),
//   body: Center(
//     child: Column(

// children: [
//   Padding(padding: EdgeInsets.only(top:200), //ระยะหน้าจอ
//   child:  Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[

//       RaisedButton.icon(
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

//        onPressed: () {
//          Navigator.push(

//             context,
//             MaterialPageRoute(builder: (context) =>Chanal()),
//           );
//         },
//         icon: Icon(Icons.settings, size: 18),
//         label: Text("ตั้งค่าข้อมูลยา"),color: Colors.green[200],
//         ),

//             // FlatButton(
//             //   onPressed: () {
//             //     //validateTextField(context);
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => Chanal()),
//             //     );
//             //   },
//             //   child: Text("ตั้งค่าข้อมูลยา", style: TextStyle(fontSize: 18)),
//             //   color: Colors.white38,
//             //   textColor: Colors.black,
//             //   // fontSize:20.0,
//             // ),

//           ],
//         ), )

//       ],

//     ),

//   ),
// );
