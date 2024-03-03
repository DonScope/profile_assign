import 'package:flutter/material.dart';
import 'package:profile_ass/profile.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_left),
                  Text(
                    "Edit profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 85,
                height: 100,
                child: Stack(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://cdn.discordapp.com/attachments/539714521845989398/1210236714010804376/IMG_0302.jpg?ex=65f30e45&is=65e09945&hm=b5b1144df181cdb1c1974e2e51a5d364de942f026b7354111af658b20f2ae804&"),
                  ),
                ]),
              ),
              Text(
                "Edit image",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              reuse("moh.ashraf720@gmail.com", Icons.mail),
              reuse("Tyler Mason", Icons.person_4_rounded),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Change password",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 10),
              reuse1("Enter old password"),
              SizedBox(height: 10),
              reuse1("Enter new password"),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(7)),
                    height: 40,
                    width: 400,
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  reuse(var txt, var icon) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 10),
                    Text(
                      txt,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.remove_circle)
              ],
            ),
          )),
    );
  }

  reuse1(var txt) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      txt,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
