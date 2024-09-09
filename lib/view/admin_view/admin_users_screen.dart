import 'package:flutter/material.dart';

import '../../components/my_textfield.dart';
import '../../components/order_by_component.dart';
import '../../constants.dart';

class AdminUsersScreen extends StatefulWidget {
  AdminUsersScreen({super.key});

  @override
  State<AdminUsersScreen> createState() => _AdminUsersScreenState();
}

class _AdminUsersScreenState extends State<AdminUsersScreen> {
  bool showTable = true;

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
          child: OrderByComponent(
              text1: 'User', text2: showTable ? 'List' : 'Add Edit'),
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
                  horizontal: width * 12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          showTable ? 'User' : 'Add User',
                          style: TextStyle(
                            fontSize: width * 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showTable = !showTable;
                            });
                          },
                          child: Container(
                            width: width * 72,
                            padding: EdgeInsets.symmetric(
                              vertical: height * 4,
                            ),

                            // width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(
                                width * 4,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                showTable ? 'Add User' : 'Back',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: height * 12,
                    ),
                    SizedBox(
                      height: height * 420,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            child: showTable
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: height * 330,
                                        child: SingleChildScrollView(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: DataTable(
                                              horizontalMargin: 0,
                                              columnSpacing: width * 28,
                                              headingRowHeight: height * 36,
                                              dataTextStyle: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: width * 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              headingTextStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: width * 15,
                                                color: Colors.black,
                                              ),
                                              columns: [
                                                DataColumn(
                                                  label: Text(
                                                    'Vendor Name',
                                                  ),
                                                ),
                                                DataColumn(
                                                  label: Text(
                                                    'Name',
                                                  ),
                                                ),
                                                DataColumn(
                                                  label: Text(
                                                    'Mobile Number.',
                                                  ),
                                                ),
                                              ],
                                              rows: [
                                                for (var i = 0; i < 7; i++)
                                                  DataRow(
                                                    cells: [
                                                      DataCell(Center(
                                                        child: Text('Test'),
                                                      )),
                                                      DataCell(Center(
                                                        child: Text('User 1'),
                                                      )),
                                                      DataCell(Center(
                                                        child:
                                                            Text('1232465895'),
                                                      )),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 4.0),
                                    child: SizedBox(
                                      height: height * 330,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            MyTextField(
                                              title: 'Name',
                                              bottomMargin: 6,
                                            ),
                                            MyTextField(
                                              title: 'Mobile Number',
                                              textInputType:
                                                  TextInputType.phone,
                                              bottomMargin: 6,
                                            ),
                                            MyTextField(
                                              title: 'User Name',
                                              bottomMargin: 6,
                                            ),
                                            MyTextField(
                                              title: 'Password',
                                              obscureText: true,
                                              bottomMargin: 6,
                                            ),
                                            SizedBox(
                                              height: height * 16,
                                            ),
                                            Center(
                                              child: Container(
                                                width: width * 100,
                                                padding: EdgeInsets.symmetric(
                                                  vertical: height * 4,
                                                ),

                                                // width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    width * 4,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Save',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: width * 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                          SizedBox(
                            height: height * 28,
                          ),
                          Text(
                            'Showing 1 of 1 of 1 entries',
                            style: TextStyle(
                              fontSize: width * 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: height * 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: width * 72,
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 8,
                                ),

                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(
                                    width * 4,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Previous',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: width * 72,
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 8,
                                ),

                                // width: double.infinity,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(
                                    width * 4,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
