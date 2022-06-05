import 'package:flutter/material.dart';
import 'package:flutter_firestore/service/database_service.dart';

import '../model/user.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.service}) : super(key: key);

  final FirestoreService service;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          email(),
          name(),
          surname(),
          saveButton(),
          getButton(),
        ],
      ),
    );
  }

  Padding surname() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: surnameController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Surname",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Padding email() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "E-Mail",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  saveButton() {
    return ElevatedButton(
      onPressed: () {
        User user = User();
        user.email = emailController.text;
        user.name = nameController.text;
        user.surname = surnameController.text;
        widget.service.addUser(user: user).then((value) {
          //some process after executing insertion
        });
      },
      child: const Text("Save"),
    );
  }

  getButton() {
    return ElevatedButton(
      onPressed: () async {
        User? user = await widget.service.getUser(emailController.text);
        //handle user
        print(user?.name);
        print(user?.surname);
      },
      child: const Text("Get"),
    );
  }
}
