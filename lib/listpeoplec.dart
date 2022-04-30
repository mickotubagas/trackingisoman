import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class PeopleListC extends StatelessWidget {
  const PeopleListC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle : true,
          title: const Text("Orang (12)", style:
          TextStyle(color: Colors.brown),),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: ListView.builder(

          itemCount: 12,
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage("https://picsum.photos/id/${870 + index}/200/300")
            ),
            title: Text(faker.person.name()),
            subtitle: Text(faker.internet.email()),
          ),
        )
    );
  }
}