import 'package:clean_boookly/core/failure.dart';
import 'package:clean_boookly/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBookUseCase extends Usecase {
  final HomeRepo homeRepo;

  FetchNewestBookUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, dynamic>> call([param]) async {
    return await homeRepo.fetchNewestBook();
  }
}

abstract class Usecase<type, para> {
  Future<Either<Failure, type>> call([para param]);
}
