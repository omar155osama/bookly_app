import 'package:clean_boookly/core/utils/failure.dart';
import 'package:clean_boookly/features/home/domain/entity/home_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HomeEntity>>> fetchFeaturedBook();
  Future<Either<Failure, List<HomeEntity>>> fetchNewestBook();
}
