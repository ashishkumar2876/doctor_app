import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/screens/navbar_roots.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>NavBarRoots()));
                },
                child: Text('SKIP',style: TextStyle(color: Color.fromARGB(
                    255, 87, 16, 175),fontSize: 25),),
              ),
            ),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.jpg"),
            ),
            SizedBox(height: 50,),
            Text('Doctors Appointment',
            style: TextStyle(
              color: Color.fromARGB(255, 121, 51, 206),
              fontSize: 35,
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
              letterSpacing: 1,
            ),
            ),
            SizedBox(height: 10,),
            Text('Appoint your Doctor',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromARGB(255, 118, 25, 229),
                  borderRadius: BorderRadius.circular(5),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> LoginScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text('Log In',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Material(
                  color: Color.fromARGB(255, 118, 25, 229),
                  borderRadius: BorderRadius.circular(5),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>SignUpScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

}