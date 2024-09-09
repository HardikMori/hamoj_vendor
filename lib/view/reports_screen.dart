import 'package:flutter/material.dart';

import '../components/order_by_component.dart';
import '../constants.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 758;
    double width = MediaQuery.of(context).size.width / 360;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: height * 20,
          ),
          padding: EdgeInsets.symmetric(
            vertical: height * 12,
            horizontal: width * 12,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: width * 3,
                spreadRadius: width * 1,
              ),
            ],
            borderRadius: BorderRadius.circular(
              width * 8,
            ),
          ),
          child: OrderByComponent(text1: 'View', text2: 'Report'),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: height * 20,
          ),
          padding: EdgeInsets.symmetric(
            vertical: height * 12,
            // horizontal: width * 12,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: width * 3,
                spreadRadius: width * 1,
              ),
            ],
            borderRadius: BorderRadius.circular(
              width * 8,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 9,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From Date',
                      style: TextStyle(
                        fontSize: width * 14,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now());
                            },
                            child: Container(
                              height: height * 36,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff878787),
                                    width: width * 0.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(width * 5)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 24,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now());
                            },
                            child: Container(
                              height: height * 36,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff878787),
                                    width: width * 0.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(width * 5)),
                            ),
                          ),
                        ),

                        // Expanded(
                        //   child: TextField(
                        //     decoration: InputDecoration(
                        //       contentPadding: EdgeInsets.only(
                        //         left: width * 8,
                        //       ),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(
                        //           width * 5,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: height * 24,
                    ),
                    Center(
                      child: SizedBox(
                        width: width * 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: height * 6,
                                horizontal: width * 20,
                              ),
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                border: Border.all(
                                  color: Color(0xff878787).withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(
                                  width * 4,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 16,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: height * 6,
                                horizontal: width * 20,
                              ),
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                border: Border.all(
                                  color: Color(0xff878787).withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(
                                  width * 4,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Refresh',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 20,
                    ),
                    // table
                    SizedBox(
                      height: height * 300,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff878787),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              // columnSpacing: width * 36,
                              headingTextStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 14,
                                color: Colors.black,
                              ),
                              dataTextStyle: TextStyle(
                                color: Color(0xff878787),
                                fontSize: width * 14,
                                fontWeight: FontWeight.w400,
                              ),
                              columns: [
                                DataColumn(
                                  label: Text(
                                    'Date',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Grand Total',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Confirm',
                                  ),
                                ),
                              ],
                              rows: [
                                for (var i = 0; i < 7; i++)
                                  DataRow(
                                    cells: [
                                      DataCell(Text('2024-08-01')),
                                      DataCell(Text('\$100.00')),
                                      DataCell(Text('Yes')),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
