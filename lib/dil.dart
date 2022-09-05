import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dil extends Translations {
  static final varsayilan=Locale("tr","TR");

  static final diller=[Locale("tr","TR"),Locale("en","US")];
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Parçalı Bulutlu': 'Partly Cloudy',
      'Sağlık Kuruluşları':'Health Organizations',
    },
    'tr_TR': {
      'Parçalı Bulutlu': 'Parçalı Bulutlu',
      'Sağlık Kuruluşları':'Sağlık Kuruluşları',
    }
  };
  
  

}