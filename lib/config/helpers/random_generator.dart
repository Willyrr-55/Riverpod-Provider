
import 'package:random_name_generator/random_name_generator.dart';

class RandomGenerator{
  
  static String getRandomNames(){
    final randomNames = RandomNames(Zone.spain);
    return randomNames.fullName();
  }

  static Stream<String> randomNamesString(){
    return Stream.periodic(
      const Duration(seconds: 2),
      (i){
        print('Stream new value');
        return getRandomNames();
      }
    );
  }

}