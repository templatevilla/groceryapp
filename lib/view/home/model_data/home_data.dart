import '../../../util/color_category.dart';
import '../models/home_data_model.dart';

class HomeData{
  static List<CategoryData> getCategory(){
    return [
      CategoryData("fruits.png","Fruits","200",fruitCategoryColor),
      CategoryData("vegetable.png","Vegetable","141",vegitableCategoryColor),
      CategoryData("meat.png","Meat","110",meatCategoryColor),
      CategoryData("seafood.png","Seafood","98",seaFoodCategoryColor),
      CategoryData("sweets.png","Sweets","58",sweetCategoryColor),
      CategoryData("dairy.png","Dairy","159",dairyCategoryColor),
      CategoryData("backry.png","Bakery","100",backryCategoryColor),
      CategoryData("dry_fruits.png","Dryfruits","90",drayfruitCategoryColor),
    ];
  }
}