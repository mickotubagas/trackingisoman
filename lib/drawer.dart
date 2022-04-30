import 'dart:io';
import 'package:flutter/material.dart';
import 'profile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: const Text("User_Guest"),
              accountEmail: const Text("userguest@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset("assets/iconuser.jpg",
              width: 90, height: 90, fit: BoxFit.cover,),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg"
                ),
                  fit: BoxFit.cover,
              )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.black,),
            title: const Text("Profile", style: TextStyle(
                color: Colors.black),),
            onTap: (){Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=>const ProfilePage()
                ));},
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.black,),
            title: const Text("Share", style: TextStyle(
                color: Colors.black),),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.black,),
            title: const Text("Exit", style: TextStyle(
                color: Colors.black),),
            onTap: ()=>exit(0),
          )
        ],
      ),
    );
  }
}
