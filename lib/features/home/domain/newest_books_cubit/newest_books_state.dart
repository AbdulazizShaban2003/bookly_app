part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

 class NewestBooksInitial extends NewestBooksState {}
class NewestBookLoading extends NewestBooksState{}
class NewestBookFailure extends NewestBooksState{
  final String errorMassage;

  NewestBookFailure(this.errorMassage);
}
class NewestBookSuccess extends NewestBooksState{
  final List<BookModel>books;

  NewestBookSuccess(this.books);
}

