import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Row(
          children: [
            Image.asset(
              "assets/images/flipkart-logo-icon.png",
              height: 30,
              width: 30,
            ),

            SizedBox(width: 8),

            Text(
              "Flipkart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.white, size: 28),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SEARCH BAR
              Container(
                height: 50,
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),

                  border: Border.all(color: Colors.black, width: 2),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for products, brands and more",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              //------------------ BANNER ---------------------
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 222, 215, 215),
                ),

                child: PageView(
                  children: [
                    Image.asset(
                      "assets/images/Banner-image.png",
                      fit: BoxFit.cover,
                    ),

                    Image.asset(
                      "assets/images/Banner-image2.png",
                      fit: BoxFit.cover,
                    ),

                    Image.asset(
                      "assets/images/Banner-image3.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              //------------------------CATEGORIES-------------------------
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.all(10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.mobile_friendly),
                        ),

                        SizedBox(height: 5),

                        Text("Mobiles"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.laptop)),

                        SizedBox(height: 5),

                        Text("Laptop"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.watch)),

                        SizedBox(height: 5),

                        Text("Watch"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.tv)),

                        SizedBox(height: 5),

                        Text("TV"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.headphones)),

                        SizedBox(height: 5),

                        Text("Audio"),
                      ],
                    ),
                  ],
                ),
              ),

              //--------------------------- PRODUCTS -------------------------
              Container(
                margin: EdgeInsets.all(10),

                child: GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),

                  children: [
                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/iPhone 15.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "iPhone 15",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/ASUS ROG Strix G15.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "ASUS ROG Strix G15",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/Casio Watch.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "Casio Watch",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/Sony Headphone.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "Sony Headphone",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/Samsung Tv.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "Samsung TV",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/washing machine.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8),

                            child: Text(
                              "Washing Machine",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
