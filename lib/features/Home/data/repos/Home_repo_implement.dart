import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() {}

  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() {}
}
