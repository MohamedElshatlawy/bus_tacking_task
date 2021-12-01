import 'package:bus_tracking_app/domain/search_card/entities/source_distenation.dart';
import 'package:bus_tracking_app/domain/search_card/map_repo.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MapRepo)
class MapRepoImp extends MapRepo {
  @override
  bool canGetThoseCountries(
      {required SourceOrDestination source,
      required SourceOrDestination destination}) {
    String sourceValue = '';
    String destinationValue = '';
    bool isSourceValid = source.value.fold((l) => false, (r) {
      sourceValue = r;
      return (r == 'Bader Hypermarket' || r == "Suez University");
    });
    bool isDestinationValid = destination.value.fold((l) => false, (r) {
      destinationValue = r;
      return (r == 'Bader Hypermarket' || r == "Suez University");
    });
    //&&isSourceValid!=isDestinationValid
    return (isDestinationValid == true &&
        isSourceValid == true &&
        destinationValue != sourceValue);
  }
}
    // final String response = await rootBundle.loadString('assets/local_db/data.json');
    // final data = await json.decode(response);
    // print("\n ${data}\n");
