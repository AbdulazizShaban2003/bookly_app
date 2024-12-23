import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:meta/meta.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;
 void fetchFeatureBooks() async{
    emit(FeatureBookLoading());
   var result= await homeRepo.fetchFeaturedBooks();
   result.fold((failure){
     emit(FeatureBookFailure(failure.errMessage));
   }, (books){
     emit(FeatureBookSuccess(books));
   }
   );
  }
}
