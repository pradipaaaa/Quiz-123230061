import 'package:flutter/material.dart';
import 'package:kuis_123230061/models/food_list.dart';

class FoodDetailPage extends StatelessWidget {
  final Food food;

  const FoodDetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          food.name,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF455A64),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  food.image,
                  fit: BoxFit.fitWidth,
                  height: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Kategori : ${food.category}',
                    style: const TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Harga    : Rp ${food.price}',
                    style: const TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Kalori   : ${food.calories} kkal',
                    style: const TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    food.ingredients.join(', '),
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFF455A64),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    food.description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF455A64),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      SizedBox(
                      width:  60,
                      height: 40, 
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF455A64),
                            foregroundColor: Colors.white,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          onPressed: () {},

                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 40),

                          Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                      const SizedBox(width: 40),

                      SizedBox(
                        width:  60,
                        height: 40, 

                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF455A64),
                            foregroundColor: Colors.white,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          onPressed: () {},

                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 140),

                            Text(
                              "Total Harga",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,

                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF455A64),
                        foregroundColor: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),

                      onPressed: () {},

                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Checkout",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
