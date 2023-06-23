import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:PetShop/pages/checkout.dart';
import 'package:PetShop/pages/keranjang.dart';

class RabbitPage extends StatelessWidget {
  const RabbitPage({super.key});

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
                "assets/rabbitfood.jpg",
                height: 320,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Pet Rabbit Food Premium Nutrition",
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
                        text: '4.7  ',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: '| 2.9k Sold',
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
                  "IDR 100k",
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
                  "Premium Nutrition pet rabbit food is a specially formulated diet designed to meet the nutritional needs of rabbits. This high-quality rabbit food is crafted with a variety of wholesome ingredients to provide a balanced and complete meal for your furry friend. It includes a blend of fresh hay, vegetables, fruits, and fortified pellets to ensure optimal nutrition and support your rabbit's overall well-being. The food is rich in fiber, vitamins, and minerals, promoting healthy digestion, strong teeth, and a glossy coat. It is carefully crafted to mimic the natural diet of rabbits, providing them with essential nutrients for energy and vitality. With Premium Nutrition pet rabbit food, you can ensure that your rabbit receives the best nutrition possible to thrive and lead a happy and healthy life.",
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
