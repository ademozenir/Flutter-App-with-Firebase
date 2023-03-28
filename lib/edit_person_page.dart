import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:veriekleme/model/person.dart';

class EditPersonPage extends StatefulWidget {
  final Person _person;

  const EditPersonPage(this._person, {super.key});

  @override
  State<EditPersonPage> createState() => _EditPersonPageState();
}

class _EditPersonPageState extends State<EditPersonPage> {
  var collection = FirebaseFirestore.instance.collection("people");

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    jobController.dispose();
    countryController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Person person = widget._person;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Person Page"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  TextFormField(
                    controller: nameController..text = person.name,
                    maxLength: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    controller: ageController..text = person.age.toString(),
                    maxLength: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: const Icon(Icons.cake_outlined),
                      labelText: 'Age',
                    ),
                  ),
                  TextFormField(
                    controller: jobController..text = person.job,
                    maxLength: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: const Icon(Icons.business_center),
                      labelText: 'Job',
                    ),
                  ),
                  TextFormField(
                    controller: countryController..text = person.country,
                    maxLength: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: const Icon(Icons.location_city),
                      labelText: 'Country',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        person.name = nameController.text.trim();
                        person.age = int.parse(ageController.text.trim());
                        person.job = jobController.text.trim();
                        person.country = countryController.text.trim();

                        collection.doc(person.id).set(person.toJson());

                        // collection.doc(person.id).update(
                        //   {
                        //     "name": nameController.text.trim(),
                        //     "age": int.parse(ageController.text.trim()),
                        //     "job": jobController.text.trim(),
                        //     "country": countryController.text.trim(),
                        //   },
                        // );
                      },
                      child: const Text("Update"))
                ]),
              ),
            );
          }),
    );
  }
}
