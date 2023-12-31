import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.brown.shade400,
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(50))),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            title: const Text(
              " products",
              style: TextStyle(color: Color.fromARGB(255, 237, 215, 18)),
            ),
            trailing: const CircleAvatar(
              radius: 30,
              child: Icon(Icons.shopping_bag),
            ),
          ),
        ]),
      ),
    );
  }
}
