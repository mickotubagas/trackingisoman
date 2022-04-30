import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black,),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: const Alignment(0.9, 0.9),
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 40.0, bottom: 8),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/iconuser.jpg'),
                    radius: 70,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20,),
            child: Text.rich(TextSpan(
                text: "Personal ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'RobotoSlab'),
                children: [
                  TextSpan(
                    text: "Informasi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'RobotoSlab'),
                  ),
                ])),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: ListTile(
                  title: Text(
                    'User_Guest',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  subtitle: Text('Username'),
                  leading: Icon(Icons.account_circle, size: 30, color: Colors.black,),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55),
                child: ListTile(
                  title: Text(
                    '081097734714',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  subtitle: Text('Nomor Telp'),
                  leading: Icon(Icons.phone, color: Colors.black,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55),
                child: ListTile(
                  title: Text(
                    'userguest@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  subtitle: Text('E-mail'),
                  leading: Icon(Icons.mail, color: Colors.black,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}