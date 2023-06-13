

import 'package:random_name_generator/random_name_generator.dart';

class RandomGenerator{
  
  static String getRandomNames(){
    final randomNames = RandomNames(Zone.spain);
    return randomNames.fullName();
  }

}