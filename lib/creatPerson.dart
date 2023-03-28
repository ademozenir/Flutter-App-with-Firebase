import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:veriekleme/model/person.dart';

class CreatePerson extends StatefulWidget {
  const CreatePerson({Key? key}) : super(key: key);

  @override
  State<CreatePerson> createState() => _CreatePersonState();
}

class _CreatePersonState extends State<CreatePerson> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Person"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  controller: nameController,
                  maxLines: 20,
                  decoration: const InputDecoration(hintText: "Name"),
                ),
              ),
              ElevatedButton(onPressed: () {
                var name = nameController.text.trim();
                  FirebaseFirestore.instance.collection("Persons").add({
                    "name": name,
                  });
              },
                  child: const Text("Add Person"),
              ),
            ],
          )),
    );
  }
}
