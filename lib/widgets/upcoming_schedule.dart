import 'package:flutter/material.dart';
class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text(
              "About Doctor",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 4,
                  )
                ],
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                          "Dr. Doctor's Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text("Therapist",),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/doctor2.jpg'),
                      ),

                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('12/01/2023',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('10:30',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Confirmed",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            )
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 87, 56, 175),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(100, 218, 214, 214),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 4,
                  )
                ],
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Dr. Doctor's Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text("Therapist",),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/doctor2.jpg'),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('12/01/2023',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('10:30',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Confirmed",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 87, 56, 175),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(100, 218, 214, 214),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 4,
                  )
                ],
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Dr. Doctor's Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text("Therapist",),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/doctor2.jpg'),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('12/01/2023',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('10:30',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Confirmed",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 87, 56, 175),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(100, 218, 214, 214),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 4,
                  )
                ],
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Dr. Doctor's Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text("Therapist",),
                      trailing: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/doctor2.jpg'),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('12/01/2023',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_filled,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            Text('10:30',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Confirmed",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 87, 56, 175),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(100, 218, 214, 214),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Reschedule",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
