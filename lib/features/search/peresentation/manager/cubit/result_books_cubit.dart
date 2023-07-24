import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'result_books_state.dart';

class ResultBooksCubit extends Cubit<ResultBooksState> {
  ResultBooksCubit(this.searchRepo) : super(ResultBooksInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchedBooks({required String bookName}) async {
    emit(ResultBooksLoading());
    var responce = await searchRepo.fetchSearchedBooks(bookName: bookName);
    responce.fold((faliure) {
      emit(ResultBooksFaliure(faliure.errMessage));
    }, (books) {
      emit(ResultBooksSuccess(books));
    });
  }
}
