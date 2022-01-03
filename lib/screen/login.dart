import 'package:flutter/material.dart';
import 'package:singup_with_firebase/helper/customButton.dart';
import 'package:singup_with_firebase/helper/custom_text_field.dart';
import 'package:singup_with_firebase/screen/home_page.dart';
import 'package:singup_with_firebase/screen/signup.dart';
import 'package:singup_with_firebase/utils/all_colour.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
TextEditingController _emailController=TextEditingController();
TextEditingController _passController=TextEditingController();
AllColour allColour=AllColour();
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),

              Icon(Icons.star, size: 80,color: allColour.appColor,),

              SizedBox(
                height: 20,
              ),
              CustomTextField(
                obscureValue: false,
                emailController: _emailController,
                labelText: "Email",
                hintText: "Enter your email",),

              SizedBox(
                height: 20,
              ),
              CustomTextField(
                obscureValue: true,
                emailController: _passController,
                labelText: "Password",
                hintText: "Enter your password",),
              SizedBox(
                height: 20,
              ),


              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: CustomButton(
                  height: 50,
                  width: 300,
                  btnText: "Log in",
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account ?", style: TextStyle(
                    fontSize: 18,),),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: Text("Sign Up", style: TextStyle(
                      fontSize: 18,color: allColour.appColor),),
                  ),
                ],
              ),


            ],
          )),
    );
  }
}
