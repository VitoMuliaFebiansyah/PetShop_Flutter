import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:PetShop/pages/dogharness.dart';
import 'package:PetShop/pages/dogitems.dart';
import 'package:PetShop/pages/keranjang.dart';
import 'package:PetShop/pages/kibbles.dart';
import 'package:PetShop/pages/rabbitfood.dart';
import 'package:PetShop/pages/whiskas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: Text(
          "Pet Category",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff000000),
          ),
        ),
      );
    }

    Widget petCategory() {
      Widget petCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(top: 20, right: 15),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(text,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 25),
          GestureDetector(
            onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dogItems()));
              },
            child: petCard("assets/dog.png", "Dog")),
            petCard("assets/cat.png", "Cat"),
            petCard("assets/bird.png", "Bird"),
            petCard("assets/rabbit.png", "Rabbit"),
          ],
        ),
      );
    }

    Widget PopularPack() {
      Widget petCard(String img, String text, String subText) {
        return Container(
       
          margin: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 140,
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
              const SizedBox(
                height: 8,
              ),
              Text(subText,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff6c7072),
                    fontSize: 12,
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
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20 ),
            child: Text("Popular Pack",
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 25),
                GestureDetector(
                   onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  kibblesPage()));
              },
                  child: petCard("assets/kibbles.png", "Kibbels", "IDR 70k")),
                GestureDetector(
                  onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => whiskasPage() ));
              },
                  child: petCard("assets/whiskas.png", "Whiskas", "IDR 35k")),
                GestureDetector(
                   onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RabbitPage() ));
              },
                  child: petCard("assets/rabbitfood.jpg", "Rabbit Food", "IDR 100k")),
                GestureDetector(
                   onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dogHarnessPage() ));
              },
                  child: petCard("assets/dog1.png", "Dog Body Harness", "IDR 130k")),
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
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: 'pet',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0BCCFE),
                  ),
                  children: [
                    TextSpan(
                      text: 'shop.',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF000000),
              ),
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KeranjangPage()));
              },
            )
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: Color(0xFF0BCCFE),
                    ),
                    Text(
                      "Bandung, Indonesia",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      suffixIcon: const Icon(Icons.close),
                      hintText: "Search items for pet",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF0BCCFE)),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              header(),
              petCategory(),
              PopularPack(),
            ],
          )),
        ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0xFF0BCCFE),
          animationDuration: const Duration(milliseconds: 300),
          items:const [
            Icon(Icons.home, color: Colors.grey),
            Icon(Icons.favorite, color: Colors.grey),
            Icon(Icons.person, color: Colors.grey,)
          ],
         
          ),
      ),

    );
  }
}
