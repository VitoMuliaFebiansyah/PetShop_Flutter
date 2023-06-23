import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:PetShop/pages/checkout.dart';
import 'package:PetShop/pages/keranjang.dart';

class kibblesPage extends StatelessWidget {
  const kibblesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Quantity() {
      Widget petCard(
        String text,
      ) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(text,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffFFFFFF),
                      fontSize: 18,
                    )),
              ),
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
            margin: const EdgeInsets.only(left: 30),
            child: Text("Variasi",
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 25),
                petCard("1 kg"),
                petCard("2 kg"),
                petCard("3 kg"),
              ],
            ),
          ),
        ],
      );
    }

    Widget age() {
      Widget petCard(
        String text,
      ) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(text,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffFFFFFF),
                      fontSize: 18,
                    )),
              ),
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
            margin: const EdgeInsets.only(left: 30),
            child: Text("Age",
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 25),
                petCard("Young"),
                petCard("Teenager"),
                petCard("Adult"),
              ],
            ),
          ),
        ],
      );
    }

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Color(0xFF0BCCFE)),
          onPressed: () {
            Navigator.pop(
                context);      },
        ),
         actions: [
          IconButton(
              icon: Icon(Icons.share_outlined,color: Color(0xFF0BCCFE)),
              onPressed: () {
                },
            ),
           IconButton(
              icon: Icon(Icons.shopping_cart_outlined,color: Color(0xFF0BCCFE)),
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KeranjangPage()));
               },
            ),
             IconButton(
              icon: Icon(Icons.more_vert,color: Color(0xFF0BCCFE)),
              onPressed: () {
                 },
            ),
        ],
    
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/kibbles.png",
                height: 320,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Kibbles nBits Beff Original",
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(Icons.favorite, color: Color(0xFF0BCCFE), size: 16),
                    RichText(
                      text: TextSpan(
                        text: '4.6  ',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: '| 4.3k Sold',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "IDR 70k",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: QuantityCounter(),
              ),
              Quantity(),
              age(),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text("Deskripsi",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                    "Premium dog food for optimal health. Nutritious ingredients, balanced formulas, and delicious flavors. Trusted by pet owners worldwide.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                      fontSize: 16,
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.shopping_cart, size: 30),
              onPressed: () {
                   },
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckOut() ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0BCCFE),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class QuantityCounter extends StatefulWidget {
  @override
  _QuantityCounterState createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF0BCCFE),
                width: 2.0,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.remove, color: Color(0xFF0BCCFE), size: 16),
            ),
          ),
          onPressed: decrement,
        ),
        Text(
          quantity.toString(),
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
          icon: CircleAvatar(
            backgroundColor: Color(0xFF0BCCFE),
            child: Icon(
              Icons.add,
              color: Color(0xffFFFFFF),
              size: 16,
            ),
          ),
          onPressed: increment,
        ),
      ],
    );
  }
}
