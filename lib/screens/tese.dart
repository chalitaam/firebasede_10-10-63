import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ตั้งค่าข้อมูลยา"),
      ),
      body: realTime(),
            
          );
        }
      
      Widget  realTime() {
        return StreamBuilder(
          stream : FirebaseFirestore.instance.collection('dispenser').snapshots(),
          builder: (context, snapshot){
            switch (snapshot.connectionState){
              case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
              default:
              return ListView(
                children: makeListWidget(snapshot),
                                );
                
                
                            }
                          }
                          );
                      }
                
                List<Widget>  makeListWidget(AsyncSnapshot snapshot) {
                  return snapshot.data.docs.map<Widget>((document){
                    return ListTile(
                      title: Text(document['drug_name']),
                        subtitle: Text(document['amount'].toString()),
                    );

                  }).toList();
                }
}