import 'package:flutter/material.dart';
import 'package:hamoj_vendor/components/my_radio_button.dart';
import 'package:hamoj_vendor/view/admin_view/admin_main_screen.dart';
import 'package:hamoj_vendor/view/user_view/user_main_screen.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedType = 'Admin';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 758;
    double width = MediaQuery.of(context).size.width / 360;
    return Scaffold(
        body: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * screenHorizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: height * 24,
              horizontal: width * 16,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: width * 3,
                  spreadRadius: width * 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(pinkLogo),
                  width: width * 140,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Sign in to your account',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 24,
                  ),
                ),
                SizedBox(
                  height: height * 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Type',
                      style: TextStyle(
                        color: Color(0xff878787),
                        fontSize: width * 15,
                      ),
                    ),
                    // SizedBox(
                    //   width: width * 8,
                    // ),
                    MyRadioButton(
                      title: 'Admin',
                      value: 'Admin',
                      groupValue: _selectedType,
                      onTap: (value) {
                        setState(() {
                          _selectedType = value;
                        });
                      },
                    ),
                    MyRadioButton(
                      title: 'User',
                      value: 'User',
                      groupValue: _selectedType,
                      onTap: (value) {
                        setState(() {
                          _selectedType = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 48,
                ),
                MyTextField(
                  title: 'Mobile Number',
                  textInputType: TextInputType.phone,
                ),
                MyTextField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: height * 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MyButton(
                        title: 'Login',
                        onTap: () {
                          if (_selectedType == 'User') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserMainScreen(),
                              ),
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AdminMainScreen(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
