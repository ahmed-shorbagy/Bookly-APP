import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/Home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((faluire) {
      emit(NewestBooksFaluire(faluire.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
