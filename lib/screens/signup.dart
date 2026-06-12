import 'package:flutter/material.dart';
import 'navigation.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  void register(BuildContext context, String email) {

    if (email.isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter email"),
        ),
      );

      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Navigation(username: email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController =
        TextEditingController();

    final TextEditingController passwordController =
        TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFF2874F0),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: EdgeInsets.all(20),

            child: Column(
              children: [

                SizedBox(height: 30),

                Image.asset(
                  "assets/images/flipkart-logo-icon.png",
                  height: 80,
                ),

                SizedBox(height: 10),

                Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 25),

                Container(
                  padding: EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),

                  child: Column(
                    children: [

                      TextField(
                        controller: emailController,

                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email Address",
                        ),
                      ),

                      SizedBox(height: 15),

                      TextField(
                        controller: passwordController,
                        obscureText: true,

                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                        ),
                      ),

                      SizedBox(height: 25),

                      SizedBox(
                        width: double.infinity,
                        height: 50,

                        child: ElevatedButton(
                          onPressed: () {
                            register(
                              context,
                              emailController.text.trim(),
                            );
                          },

                          child: const Text(
                            "CREATE ACCOUNT",
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        child: Text(
                          "Already have an account? Login",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}