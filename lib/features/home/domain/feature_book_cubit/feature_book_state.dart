part of 'feature_book_cubit.dart';

@immutable
abstract class FeatureBookState {}

class FeatureBookInitial extends FeatureBookState {}
class FeatureBookLoading extends FeatureBookState{}
class FeatureBookFailure extends FeatureBookState{
  final String errorMassage;

  FeatureBookFailure(this.errorMassage);
}
class FeatureBookSuccess extends FeatureBookState{
  final List<BookModel>books;

  FeatureBookSuccess(this.books);
}

