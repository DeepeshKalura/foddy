import 'package:foddy/widgets/checout_bottom_sheet.dart';
import 'package:foddy/screens/home.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...demoProducts.sublist(0, 4).map((product) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                SizedBox(
                  // margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(product.images[0]))),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .66,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 1, 32, 2)),
                                  ),
                                  const Icon(
                                    Icons.cancel,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "1kg price",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 146, 146, 146)),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .24,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 216, 216, 216)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 255, 255, 255)
                                                    .withOpacity(
                                                        0.1), // Shadow color with opacity
                                                spreadRadius:
                                                    1, // Spread of the shadow
                                                blurRadius:
                                                    10, // Blurring effect
                                                offset: const Offset(0,
                                                    1), // Horizontal and vertical shadow offset
                                              ),
                                            ],
                                          ),
                                          child: const Icon(Icons.remove),
                                        ),
                                        const Text("2"),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 216, 216, 216)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 255, 255, 255)
                                                    .withOpacity(
                                                        0.1), // Shadow color with opacity
                                                spreadRadius:
                                                    1, // Spread of the shadow
                                                blurRadius:
                                                    10, // Blurring effect
                                                offset: const Offset(0,
                                                    1), // Horizontal and vertical shadow offset
                                              ),
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.green,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "\$23.99",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(204, 50, 62, 32)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (demoProducts.indexOf(product) == demoProducts.length - 1)
                  const Divider(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Text(
              "\$12.22",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 112, 5)),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.all(30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.0)),
                ),
                builder: (context) => const CheckoutBottomSheet(),
              );
            },
            child: const Text(
              "Go to checkout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      )
    ]);
  }
}
