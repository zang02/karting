

enum PackageType{silver, gold, diamond}

abstract class PackageFactory{
  factory PackageFactory(PackageType type){
    switch(type){
      case PackageType.silver:
        return SilverPackage();
      case PackageType.gold:
        return GoldPackage();
      case PackageType.diamond:
        return DiamondPackage();
      default:
        throw Exception('no package');
    }

  }
}


abstract class Package implements PackageFactory{
  void subscribe();
}

class SilverPackage implements Package{
  @override  
  
  void subscribe(){
    var res = ['7 tracks', 'only 2 attempts', 'suit'];
    print('silver was choosen');
    print('you have:');
    for(int i = 0; i < 3; i++){
    print(res[i]);
  }
  }
}
class GoldPackage implements Package{
  
  void subscribe(){
    var res = ['12 tracks', 'only 4 attempts', 'suit', 'gloves', 'drink'];
    print('gold package choosen');
    print('you have:');
    for(int i = 0; i < 5; i++){
    print(res[i]);
  }
  }
}
class DiamondPackage implements Package{
  @override 
 
  void subscribe(){
     var res = ['all included'];
    print('diamond was choosen');
    print('you have:');
    for(int i = 0; i < 1; i++){
    print(res[i]);
  }
  }
  
}

void main(List<String> args) {
  final f1 = PackageFactory(PackageType.silver) as Package;
  f1.subscribe();
  print("");
  final f2 = PackageFactory(PackageType.gold) as Package;
  f2.subscribe();
  print("");
  final f3 = PackageFactory(PackageType.diamond) as Package;
  f3.subscribe();
}