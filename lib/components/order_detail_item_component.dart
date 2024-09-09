import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class OrderDetailItemComponent extends StatefulWidget {
  OrderDetailItemComponent(
      {super.key,
      required this.quantity,
      required this.onDecrement,
      required this.onIncrement});

  int quantity;
  VoidCallback onIncrement;
  VoidCallback onDecrement;

  @override
  State<OrderDetailItemComponent> createState() =>
      _OrderDetailItemComponentState();
}

class _OrderDetailItemComponentState extends State<OrderDetailItemComponent> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 758;
    double width = MediaQuery.of(context).size.width / 360;
    return Container(
      // margin: EdgeInsets.only(
      //   bottom: height * 20,
      // ),
      // padding: EdgeInsets.symmetric(
      //   vertical: height * 12,
      //   horizontal: width * 12,
      // ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: width * 4,
            spreadRadius: width * 0.1,
          ),
        ],
        borderRadius: BorderRadius.circular(
          width * 8,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 6,
          vertical: height * 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Office No: 512',
              style: TextStyle(
                color: Color(0xff0082CB),
                fontSize: width * 14,
              ),
            ),
            SizedBox(
              height: height * 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tea',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 14,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    if (widget.quantity <= 0) {
                    } else {
                      setState(() {
                        widget.quantity -= 1;
                      });
                    }
                  },
                  child: Container(
                    height: width * 18,
                    width: width * 18,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(
                        width * 5,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                        size: width * 15,
                      ),
                    ),
                  ),
                  // child: Container(
                  //   height: width * 14,
                  //   width: width * 14,
                  //   decoration: BoxDecoration(
                  //     color: primaryColor,
                  //     borderRadius: BorderRadius.circular(
                  //       width * 5,
                  //     ),
                  //   ),
                  //   child: Center(
                  //     child: Icon(
                  //       CupertinoIcons.minus,
                  //       color: Colors.white,
                  //       size: width * 14,
                  //     ),
                  //   ),
                  // ),
                ),
                SizedBox(width: width * 8),
                Text(
                  widget.quantity.toString(),
                ),
                SizedBox(width: width * 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.quantity += 1;
                    });
                  },
                  child: Container(
                    height: width * 18,
                    width: width * 18,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(
                        width * 5,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: width * 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 8,
            ),
            Divider(),
            Center(
              child: PopupMenuButton(
                  color: Colors.white,
                  child: Container(
                    width: width * 64,
                    padding: EdgeInsets.symmetric(
                      vertical: height * 4,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(
                        width * 4,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Action',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: width * 12,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: width * 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Text(
                          'Accept Order',
                          style: TextStyle(
                            fontSize: width * 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00C22B),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          'Cancel Order',
                          style: TextStyle(
                            fontSize: width * 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffC20000),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          'Assign To',
                          style: TextStyle(
                            fontSize: width * 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0082CB),
                          ),
                        ),
                      ),
                    ];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
