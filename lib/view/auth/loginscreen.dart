import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_common.dart';
import '../../utils/app_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =
      TextEditingController(text: 'test@gmail.com');
  TextEditingController passwordController =
      TextEditingController(text: '123456');
  bool obscure = true;
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Let\'s Sign You In',
                  style: hsBoldTextStyle(
                      size: headingFontSize, weight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('Welcome back, you\'ve \nbeen missed!',
                  style: hsSecondaryTextStyle(size: subHeadingFontSize)),
              SizedBox(height: 30),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                style: hsPrimaryTextStyle(),
                decoration: commonInputDecoration(hintText: 'Email Address'),
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                style: hsPrimaryTextStyle(),
                obscureText: obscure,
                decoration: commonInputDecoration(
                    hintText: 'Password',
                    suffix: GestureDetector(
                      child: Icon(
                        obscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        obscure = !obscure;
                        setState(() {});
                      },
                    )),
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        activeColor: secondaryColor,
                        onChanged: (value) {
                          rememberMe = value!;
                          setState(() {});
                        },
                      ),
                      Text('Remember Me', style: hsBoldTextStyle()),
                    ],
                  ),
                  GestureDetector(
                    child: Text('Forgot Password?',
                        style: hsBoldTextStyle(color: secondaryColor)),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return HSForgotPasswordScreen();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    //dashboard
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return DashboardScreen();
                    //   },
                    // ),);
                  },
                  child: Text('Login',
                      style: hsPrimaryTextStyle(color: Colors.white)),
                  style: primaryButtonStyle(),
                ),
              ),
              SizedBox(height: 16),
              Align(
                  alignment: Alignment.center,
                  child: Text('OR',
                      style: hsSecondaryTextStyle(
                          color: Colors.grey, weight: FontWeight.bold))),
              SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(ic_google, height: 30, width: 30),
                      SizedBox(width: 16),
                      Text('Continue with Google', style: hsBoldTextStyle()),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    elevation: 0,
                    textStyle: hsBoldTextStyle(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                      style: hsSecondaryTextStyle(size: 16)),
                  SizedBox(width: 4),
                  GestureDetector(
                    child: Text('Sign Up',
                        style: hsBoldTextStyle(color: secondaryColor)),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return RegisterScreen();
                      //   },
                      // ),);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
