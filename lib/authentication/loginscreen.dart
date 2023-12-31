import 'package:flutter/material.dart';
import 'package:home_app/pages/home/home.dart';
import 'package:home_app/widgets/styledButton.dart';
import 'package:home_app/widgets/styledTextField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4, // Adjust the opacity as needed
            child: Image.asset(
              'lib/images/bg3.png', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.1), // Shadow color
                            blurRadius: 15, // Spread of the shadow
                            spreadRadius: -8,
                            offset: Offset(0, 0), // Offset in x and y direction
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'lib/images/logo.png',
                        scale: 2,
                      ),
                    ),
                    // TITLE
                    const SizedBox(
                      height: 10,
                    ),

                    Text(
                      "WELCOME TO",
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                            const TextStyle(fontWeight: FontWeight.w600),
                          ),
                      // TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "AT-HOME CONVENIENCE!",
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                            const TextStyle(fontWeight: FontWeight.w600),
                          ),
                      // TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                    // Username textfield
                    ,
                    const SizedBox(
                      height: 55,
                    ),
                    StyledTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    // Password textfield
                    const SizedBox(
                      height: 10,
                    ),
                    StyledTextField(
                        controller: passwordController,
                        hintText: "Password",
                        obscureText: true),
                    const SizedBox(
                      height: 15,
                    ),

                    // Sign in button
                    StyledButton(
                      btnText: "LOG IN",
                      onClick: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()),
                            (route) => false);
                      },
                      btnIcon: const Icon(Icons.login),
                      btnWidth: 250,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              letterSpacing: 1, fontFamily: "Poppins"),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("OR"),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    StyledButton(
                      btnText: "SIGN WITH GOOGLE",
                      onClick: () {},
                      btnWidth: 250,
                    ),

                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account yet?"),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Floating loading indicator
          // if (isLoading)
          //   Center(
          //     child: CircularProgressIndicator(
          //       color: Color(0xFFE2B563),
          //     ),
          //   )
        ],
      ),
    );
  }
}
