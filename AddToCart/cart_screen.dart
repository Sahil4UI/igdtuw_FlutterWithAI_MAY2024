import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_notifier.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CartNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
        ),
        backgroundColor: Color.fromARGB(255, 118, 255, 180),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: ListView.builder(
        itemCount: obj.items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(obj.items[index].name),
                      SizedBox(height: 8,),
                      Text("Qty:${obj.items[index].qty}"),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        obj.plusMinus(index,"+");
                      }, icon:Icon(Icons.add)),
                      Text("\u{20B9}${obj.items[index].amt} "),
                      IconButton(onPressed: (){
                        obj.plusMinus(index,"-");
                      }, icon:Icon(Icons.remove)),
                      ElevatedButton(onPressed: (){
                        obj.removeItem(index);
                      }, child: Icon(Icons.delete))
                    ],
                  ),
                ],
              ),
            ),
            // title: Text(obj.items[index].name+"\t|\tQty:${obj.items[index].qty}\t| total : \t\u{20B9}${obj.items[index].amt} "),
          );
        },
      ),
    );
  }
}
