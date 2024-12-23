import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
   final HomeRepo homeRepo;


   Future<void>fetchNewestBook()async{
     emit(NewestBookLoading());
     var result= await homeRepo.fetchBestSellerBooks();
     result.fold((failure){
       emit(NewestBookFailure(failure.errMessage));
     }, (books){
       emit(NewestBookSuccess(books));
     });
   }

}
