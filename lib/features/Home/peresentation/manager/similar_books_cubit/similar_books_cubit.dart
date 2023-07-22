import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/Home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchsimilarBooks(category: category);
    result.fold((faluire) {
      emit(SimilarBooksFaluire(faluire.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
