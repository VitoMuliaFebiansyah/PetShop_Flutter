import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:PetShop/pages/checkout.dart';
import 'package:PetShop/pages/keranjang.dart';

class whiskasPage extends StatelessWidget {
  const whiskasPage({super.key});

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
                petCard("500 g"),
                petCard("1 kg"),
                petCard("2 kg"),
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
                context); 
          },
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
                "assets/whiskas.png",
                height: 320,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Whiskas Cat Food",
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
                        text: '4.9  ',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: '| 10k+ Sold',
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
                  "IDR 35k",
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
                    "Whiskas is a popular brand of cat food that offers a range of nutritious and flavorful options for feline companions. With a focus on providing balanced meals that meet the dietary needs of cats, Whiskas cat food is formulated with high-quality ingredients to support their overall health and well-being. The brand offers a variety of wet and dry cat food products, including different flavors and textures to cater to various preferences. Whiskas takes pride in creating tasty meals that are not only delicious but also packed with essential nutrients, vitamins, and minerals to support a cat's immune system, digestion, and coat health. Whether it's kitten food, adult cat food, or specialized formulas, Whiskas strives to provide cats with a satisfying and wholesome dining experience that keeps them happy and healthy.",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CheckOut()));
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
