import 'package:flutter/material.dart';

import '../../constants.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 758;
    double width = MediaQuery.of(context).size.width / 360;
    return Column(
      children: [
        // wrapping in row to avoid maximum width for the container
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 8,
                vertical: height * 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(
                  width * 8,
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '170.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 24,
                        ),
                      ),
                      Text(
                        'Income',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      width * 4,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(
                        width * 100,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.currency_rupee,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
