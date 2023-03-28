

class User {

  final String _name;
  final String _surname;
  final int _age;

  User(this._name, this._surname, this._age);

  int get age => _age;

  String get surname => _surname;

  String get name => _name;
}