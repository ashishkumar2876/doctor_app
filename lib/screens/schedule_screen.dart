import 'package:flutter/material.dart';
import 'package:doctor_app/widgets/upcoming_schedule.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int buttonIndex=0;
  final _scheduleWidgets=[
    UpcomingSchedule(),
    Center(
      child: Text(
        "Completed"
      ),
    ),
    Center(
      child: Text(
        "Cancelled"
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonIndex=0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: buttonIndex==0? Color.fromARGB(255, 87, 56, 175):Color.fromARGB(100, 227, 225, 225)
                      ),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: buttonIndex==0?Colors.white:Colors.black,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonIndex=1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: buttonIndex==1? Color.fromARGB(255, 87, 56, 175):Color.fromARGB(100, 227, 225, 225)
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          color: buttonIndex==1?Colors.white:Colors.black,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonIndex=2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: buttonIndex==2? Color.fromARGB(255, 87, 56, 175):Color.fromARGB(100, 227, 225, 225)
                      ),
                      child: Text(
                        "Cancelled",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          color: buttonIndex==2?Colors.white:Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            _scheduleWidgets[buttonIndex]
          ],
        ),
      ),
    );
  }
}
