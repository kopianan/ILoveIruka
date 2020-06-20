import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/other/raja_ongkir.dart';

abstract class IOtherFacade {
  Future<Either<String, List<RajaOngkir>>> getProvince();
  Future<Either<String, List<RajaOngkir>>> getCity(String provinceId);
}
