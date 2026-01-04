import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../widgets/custom_button.dart';


class LoginScreen extends StatelessWidget{
    const LoginScreen({super.key});
    @override 
    State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text('login'),
                centerTitle: true,
            ),
            body: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                            TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                ),
                                validator: (value){
                                    if(value == null || value.isEmpty){
                                        return 'Please enter your email';
                                    }
                                    return null;
                                },

                            ),
                            const SizedBox(height: 15),

                            // password Field
                               TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password cannot be empty";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),
              //Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),

              const SizedBox(height: 10),
              //Login Button
              CustomButton(
                text: "Login",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
              ),

              const SizedBox(height: 10),
              //Dont have an account? Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Sign Up"),
                  ),
                ],
              ),
                        ]
                    )
                )
            )
        )
    }
}