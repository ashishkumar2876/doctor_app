import 'package:flutter/material.dart';
import 'package:doctor_app/screens/chats_screen.dart';
class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List imgs=[
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
    "images/img.png",
    "images/doctor2.jpg",
    "images/doctor3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(
              "Messages",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30,),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.search,color: Color.fromARGB(255, 87, 56, 175))
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Active Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          ),
          SizedBox(height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Container(
                width: 65,
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Stack(
                  textDirection: TextDirection.rtl,
                  children: [
                    Center(
                      child: Container(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("${imgs[index]}"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      padding: EdgeInsets.all(3),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Container(
                        decoration:BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                    )
                  ],
                ),
              );
              }
          ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent Chat",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  minVerticalPadding: 10,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatsScreen()));
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("${imgs[index]}"),
                  ),
                  title: Text("Dr. Doctor name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Hello Doctor are you there?",
                  maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                    ),
                  ),
                  trailing: Text(
                    "12:50",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54
                    ),
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
