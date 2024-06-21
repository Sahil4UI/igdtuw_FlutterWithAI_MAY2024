import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/cart_notifer.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var ob = Provider.of<CartNotifer>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.whatshot_outlined,
          size: 50,
          color: Colors.amber,
        ),
        title: Text(
          "MY CART",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: ob.cartList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(ob.cartList[index].product_name),
                  ],
                ),
                Column(
                  children: [
                    Text("\u20B9\t"+ob.cartList[index].product_total_price.toString())
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    Text("Qty : " + ob.cartList[index].product_qty.toString()),
                    IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
