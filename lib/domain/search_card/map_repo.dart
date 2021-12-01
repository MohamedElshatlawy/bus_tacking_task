import 'package:bus_tracking_app/domain/search_card/entities/source_distenation.dart';

abstract class MapRepo{
 bool canGetThoseCountries({required SourceOrDestination source, required SourceOrDestination destination});
}