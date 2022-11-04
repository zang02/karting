class Person{
  final name;
  Person({this.name});

  @override

  String toString(){
    return "Person : $name";
  }

  bool operator == (Object object){
    if(object == Person){
      return true;

    }
  return false;
  }
  

}
class Kart{ 
  late String name;
  static final Kart _instance = Kart._internal();

  factory Kart({name}){
    _instance.name = name;
    return _instance;
  }

  Kart._internal();

  @override
  String toString() {
  
    return "Kart name $name";
  }
}


void main(List<String> args) {
  final p1 = Kart(name: "Yamaha");
  final p2 = Kart(name: "Honda");
  final p3 = Kart(name: "Kart Brand");
  print(p1);
  print(p2);
  print(p3);
}