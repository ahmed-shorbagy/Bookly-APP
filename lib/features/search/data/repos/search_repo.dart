import 'package:dartz/dartz.dart';

import '../../../../core/errors/faliure.dart';
import '../../../Home/data/Models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Faliure, List<BookModel>>> fetchSearchedBooks(
      {required String bookName});
}
