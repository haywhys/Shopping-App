import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Walk in style with our new footwear",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Added item count to avoid infinite list
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      color: Colors.brown,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Brand",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.library_add,
                                    size: 45,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                            const Text(
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                            Center(child: Image.asset("assets/images/s4.png")),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Hot Deals🔥 ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Added item count to avoid infinite list
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      color: Colors.brown,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset("assets/images/s2.png")),
                            const Text(
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                            const Text(
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                            const Text(
                              "Brand",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: MainPage()));
}
