import 'package:clean_boookly/core/utils/failure.dart';
import 'package:clean_boookly/features/home/domain/repo/home_repo.dart';
import 'package:clean_boookly/features/home/domain/use%20case/fetch_newest_book_use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBookUseCase extends Usecase {
  final HomeRepo homeRepo;

  FetchFeaturedBookUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, dynamic>> call([param]) async {
    return await homeRepo.fetchFeaturedBook();
  }
}
