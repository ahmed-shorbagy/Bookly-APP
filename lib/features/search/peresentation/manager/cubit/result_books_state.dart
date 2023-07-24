part of 'result_books_cubit.dart';

abstract class ResultBooksState extends Equatable {
  const ResultBooksState();

  @override
  List<Object> get props => [];
}

class ResultBooksInitial extends ResultBooksState {}

class ResultBooksLoading extends ResultBooksState {}

class ResultBooksSuccess extends ResultBooksState {
  final List<BookModel> books;

  const ResultBooksSuccess(this.books);
}

class ResultBooksFaliure extends ResultBooksState {
  final String errMessage;

  const ResultBooksFaliure(this.errMessage);
}
