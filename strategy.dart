

abstract class PaymentStrategy {
  String announce(String roast);
}

abstract class TrackStrategy {
  String outputt(String inf);
}

class InsideTrack implements TrackStrategy{
  String outputt(String inf) => "$inf I just choose it";
}

class OutsideTrack implements TrackStrategy{
  String outputt(String inf) => "$inf I just choose it second";
}

class ProTrack implements TrackStrategy{
  String outputt(String inf) => "$inf I just choose it third";
}


class CashStrategy implements PaymentStrategy {
  String announce(String roast) => "I choose $roast and will pay by cash";
}

class OnlinePaymentStrategy implements PaymentStrategy{
  String announce(String roast) => "I choose $roast and will pay on Internet";
}

class CreditCardStrategy implements PaymentStrategy {
  String announce(String roast) => "I choose $roast will pay by credit card";
}




class Racer {
  PaymentStrategy preferredPaid;
  TrackStrategy preferredTrack;
  String name;
  Racer(this.name, this.preferredPaid, this.preferredTrack);
}




void main() {

  print('Credit Card payment');
  print('Cash payment');
  print('Online payment');
  print('   ');
  var cash1 = CashStrategy();
  var credit1 = CreditCardStrategy();
  var inside = InsideTrack();
  var outside = OutsideTrack();
  var pro = ProTrack();


  var tracks = ["inside track", "outside track", "track for starters", "track for proffessionals"];
  for(int i = 0; i < 4; i++){
    print(tracks[i]);
  }
  print("choose one of the tracks");


  
  var me = Racer("person1", cash1, pro);
  var me1 = Racer("John", credit1, inside);
  var me2 = Racer("Tom", cash1, outside);
  var me3 = Racer("Just", credit1, pro);
  List<Racer> racers = [me, me1, me2, me3];
 
  print("all racers:");
  for(int i = 0; i < 4; i++){
    print(racers[i].name);
  }
}