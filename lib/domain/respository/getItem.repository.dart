import 'package:dartz/dartz.dart';

abstract class GetitemRepository {
  Future<Either> getItems();

  Future<Either> getItemsById();
}
