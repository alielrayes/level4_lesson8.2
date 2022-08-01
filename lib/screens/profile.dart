// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_app/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Text("Layla Hassan"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(125, 78, 91, 110),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      // widget.snap["profileImg"],
                      "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "15",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(15, 21, 0, 0),
              width: double.infinity,
              child: Text(" Cute & nice girl")),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.06 : 0.44,
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: Text(
                  "Edit profile",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(0, 90, 103, 223)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: widthScreen > 600 ? 19 : 10, horizontal: 33)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                          color: Color.fromARGB(109, 255, 255, 255),
                          // width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 24.0,
                ),
                label: Text(
                  "Log out",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(143, 255, 55, 112)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: widthScreen > 600 ? 19 : 10, horizontal: 33)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.06 : 0.44,
          ),
          SizedBox(
            height: 19,
          ),
          Expanded(
            child: Padding(
              padding: widthScreen > 600
                  ? const EdgeInsets.all(66.0)
                  : const EdgeInsets.all(3.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
                        // height: 333,
                        // width: 100,

                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
