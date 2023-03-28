

class Person {

  String id;
  String name;
  int age;
  String job;
  String country;

  Person(this.id, this.name, this.age, this.job, this.country);

  Person.fromJson(Map<String, dynamic> map) :
    id = map["id"],
    name = map["name"],
    age = map["age"],
    job = map["job"],
    country = map["country"];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "job": job,
      "country": country
    };
  }
}