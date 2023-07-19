import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPiont:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromFrom(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFaliure());
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() {}
}
