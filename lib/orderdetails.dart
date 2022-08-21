import 'package:exam2/model/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key? key, this.model}) : super(key: key);
  final UserModel? model;
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Order Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Cart"),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.network(
                  "${widget.model!.img}",
                  height: 100,
                  width: 150,
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text("${widget.model!.name}"),
                    Text("${widget.model!.details}"),
                    Text("${widget.model!.price}"),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              value++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("${value}"),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              value--;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Text("Delivery Location"),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
