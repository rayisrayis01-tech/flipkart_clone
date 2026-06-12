import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final double rating;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
  });
}

final List<Product> products = [
  Product(
    name: "iPhone 15",
    description: "Apple smartphone with A16 chip",
    price: 75000,
    rating: 4.8,
    image: "assets/images/iPhone 15.jpg",
  ),
  Product(
    name: "Asus ROG Strix G15",
    description: "Gaming laptop with RTX 3060",
    price: 85000,
    rating: 4.5,
    image: "assets/images/ASUS ROG Strix G15.jpg",
  ),
  Product(
    name: "Gaming Mouse",
    description: "RGB gaming mouse",
    price: 1500,
    rating: 4.2,
    image: "assets/images/Gaming Mouse.jpg",
  ),
  Product(
    name: "Samsung TV",
    description: "55-inch 4K Smart TV",
    price: 50000,
    rating: 4.5,
    image: "assets/images/Samsung Tv.jpg",
  ),
  Product(
    name: "Sony Headphones",
    description: "Noise cancelling headphones",
    price: 1990,
    rating: 4.4,
    image: "assets/images/Sony Headphone.jpg",
  ),
  Product(
    name: "Casio Watch",
    description: "Smart wearable device",
    price: 35000,
    rating: 4.7,
    image: "assets/images/Casio Watch.jpg",
  ),
  Product(
    name: "Samsung Galaxy S24",
    description: "Flagship Android smartphone",
    price: 70000,
    rating: 4.6,
    image: "assets/images/Samsung Galaxy S24.jpg",
  ),
  Product(
    name: "Canon Camera",
    description: "Professional DSLR camera",
    price: 65000,
    rating: 4.6,
    image: "assets/images/Canon Camera.jpg",
  ),
  Product(
    name: "MacBook Air",
    description: "Lightweight Apple laptop",
    price: 120000,
    rating: 4.9,
    image: "assets/images/MacBook Air.jpg",
  ),
  Product(
    name: "LG Washing Machine",
    description: "High-efficiency washing machine",
    price: 25000,
    rating: 4.4,
    image: "assets/images/washing machine.jpg",
  ),
];

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Products",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 28),
          ),
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

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  //---------------- LEFT IMAGE ----------------
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 10),

                  //---------------- RIGHT CONTENT ----------------
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(product.description),

                        SizedBox(height: 5),

                        Text(
                          "₹ ${product.price}",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Row(
                          children: [
                            Icon(Icons.star, size: 16, color: Colors.orange),
                            SizedBox(width: 3),
                            Text(product.rating.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
