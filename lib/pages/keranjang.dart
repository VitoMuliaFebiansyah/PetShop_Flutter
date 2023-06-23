import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Container(
          child: Text("Cart Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}