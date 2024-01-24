import 'package:doctor_app/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  List symptoms=[
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold"
  ];
  List images=["img.png",
  "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello Alex",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/img.png"),
              )
            ],
          ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){

                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 87, 56, 175),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 87, 56, 175),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Clinic Visit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Make an appointment",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4,
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home_filled,
                          color: Color.fromARGB(255, 87, 56, 175),
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Home Visit",
                        style: TextStyle(
                          fontSize: 18,
                          //color: Color.fromARGB(255, 87, 56, 175),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Call the doctor home",
                        style: TextStyle(
                            color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25,),
          Padding(padding: EdgeInsets.only(left: 15),
            child: Text(
              "What are your symptoms?",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),
            ),
          ),
          SizedBox(height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: symptoms.length,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 235, 241),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[
                   BoxShadow(
                     color: Colors.black12,
                     blurRadius: 4,
                     spreadRadius: 2,
                   )
                  ]
                ),
                child: Center(
                  child: Text(
                    symptoms[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                    ),
                  ),
                ),
              );
              }

          ),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            "Popular Doctors",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>AppointmentScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/${images[index]}"),
                        ),
                        Text(
                          "Dr. Doctor name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Therapist",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                color: Colors.black45
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
          )
        ],
      ),
    );
  }

}