import 'package:clean_boookly/core/utils/api_service.dart';
import 'package:clean_boookly/features/home/data/model/books_model.dart';
import 'package:clean_boookly/features/home/domain/entity/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeEntity>> fetchFeaturedBook();
  Future<List<HomeEntity>> fetchNewestBook();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<HomeEntity>> fetchFeaturedBook() async {
    var data = await apiService.get(
      endPoint: 'volumes?filter=free-ebooks&q=رواية',
    );

    List<HomeEntity> books = getBookList(data);

    return books;
  }

  @override
  Future<List<HomeEntity>> fetchNewestBook() async {
    var data = await apiService.get(
      endPoint:
          "https://www.googleapis.com/books/v1/volumes?filter=free-ebooks&q=رواية&Sorting=newest",
    );

    List<HomeEntity> books = getBookList(data);

    return books;
  }

  List<HomeEntity> getBookList(Map<String, dynamic> data) {
    List<HomeEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BooksModel.fromJson(bookMap));
    }
    return books;
  }
}
