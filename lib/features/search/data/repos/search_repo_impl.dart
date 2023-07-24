import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiservice;

  SearchRepoImpl(this.apiservice);
  @override
  Future<Either<Faliure, List<BookModel>>> fetchSearchedBooks(
      {required String bookName}) async {
    try {
      var data = await apiservice.get(
          endPiont: '/volumes?Filtering=free-ebooks&q=intitle: $bookName');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromFrom(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioErr(e));
      } else {
        return left(ServerFaliure(e.toString()));
      }
    }
  }
}
