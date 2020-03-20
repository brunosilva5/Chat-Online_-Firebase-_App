import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(MyApp());
  Firestore.instance.collection("mensagens").document("msg2").setData({
    "texto": "Tudo bem?",
    "from" : "Carolina",
    "read" : false
    });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}

