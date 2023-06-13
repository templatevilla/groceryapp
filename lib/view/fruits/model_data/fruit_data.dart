import '../../../util/images.dart';
import '../model/fruit_data_model.dart';

class FruitData{
  static List<Fruit> getFryuitData(){
    return [
      Fruit(GetImages.mangoImage,"1","\$10","Mangos"),
      Fruit(GetImages.painappleImage,"1","\$20","Pineapple"),
      Fruit(GetImages.watermellonImage,"1","\$12","Watermellon"),
      Fruit(GetImages.starowberryImage,"1","\$14","Stawberry"),
      Fruit(GetImages.orangeImage,"1","\$20","Orange"),
      Fruit(GetImages.grapeImage,"1","\$16","Grapes"),
      Fruit(GetImages.appleImage,"1","\$30","Apple"),
      Fruit(GetImages.pomegranatesImage,"1","\$20","pomegranates"),
    ];
  }
}