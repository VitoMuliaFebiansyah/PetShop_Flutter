import 'package:PetShop/pages/dogharness.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kibbles.dart';

class dogItems extends StatelessWidget {
  const dogItems({super.key});

  @override
  Widget build(BuildContext context) {

     Widget dog() {
      Widget petCard(String img, String text) {
        return Container(
          
          margin: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(text,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
             
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
         
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  kibblesPage()));
              },
                      child: petCard("assets/kibbles.png", "Kibbels nBits")),
                    GestureDetector(
                        onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  dogHarnessPage() ));
              },
                      child: petCard("assets/dog1.png", "Dog Body Harness")),
                
                  ],
                ),
                 Row(
                  children: [
                    petCard("assets/dogear.png", "Dog Ear Wipes"),
                    petCard("assets/grainzero.png", "Grain Zero"),
                
                  ],
                ),
                 Row(
                  children: [
                    petCard("assets/pedigree.png", "Pedigree Chicken"),
                    petCard("assets/erina.png", "Anti-tick Powder"),
                
                  ],
                ),
                 Row(
                  children: [
                    petCard("assets/kibbles.png", "Kibbels nBits"),
                    petCard("assets/dog1.png", "Dog Body Harness"),
                
                  ],
                ),
             ],
            ),
          ),
        ],
      );
    }


    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff000000)),
          title: Text("Dog Items",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000)
          ),),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.filter_list_alt),
              onPressed: () {},
            ),
            

          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context); // Fungsi untuk kembali ke halaman sebelumnya
            },
          ),
        ),
         body: Container(
          child: SingleChildScrollView(
              child: Center(
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [dog()],
                        ),
              )),
        ),
      ));
  }
}