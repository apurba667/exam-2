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
  var subtotal = 0;
  int total = 0;
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
                              subtotal = widget.model!.price! * value;
                              total = subtotal + 10;
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
                              if (value > 0) {
                                value--;
                                subtotal = widget.model!.price! * value;
                                total = subtotal + 10;
                              }
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("2 Place Mohakhali St"),
                    Text("10162,tb&isi")
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.arrow_right,
                  size: 36,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Payment Method"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.payment,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [Text("Visa Classic"), Text("10162,tb&isi")],
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.arrow_right,
                  size: 36,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Order Info",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal"),
                Text(
                  "\$${subtotal}",
                  style: TextStyle(fontSize: 26),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping Cost"),
                Text(
                  "\$10",
                  style: TextStyle(fontSize: 26),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total"),
                Text(
                  "\$${total}",
                  style: TextStyle(fontSize: 26),
                )
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        "Check Out",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$${total}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
