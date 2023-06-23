import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:PetShop/pages/checkout.dart';
import 'package:PetShop/pages/keranjang.dart';

class dogHarnessPage extends StatelessWidget {
  const dogHarnessPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                "assets/dog1.png",
                height: 320,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Dog Body Harness",
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
                        text: '4.4  ',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: '| 1.1k Sold',
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
                  "IDR 130k",
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
                    "A Dog Body Harness is a tool designed to control and direct a dog's movements during walks or runs. The harness is specifically designed to be worn on the dog's body, encircling the chest and back, aiming to provide optimal comfort and safety. It is made of strong and durable materials, with soft and padded sections on the inside to offer extra comfort for the dog. By using a Dog Body Harness, pet owners can have better control over their furry companions and prevent them from pulling excessively on the leash. The harness also features attachment points on the back or chest, allowing owners to connect it to a leash, keeping the dog secure and controlled during outdoor activities and walks.",
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
