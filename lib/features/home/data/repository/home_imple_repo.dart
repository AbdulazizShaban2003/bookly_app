import 'dart:async';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/service/api_service_for_book.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeImpleRepo extends HomeRepo{

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    ApiServiceForBooks.initDio();
    try {
      var data = await ApiServiceForBooks.getData(url: "volumes", query: {
        'q': 'programming',
        'Sorting': 'newest',
        'Filtering': 'free-ebooks'
      });
      List<BookModel>books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch(e){
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await ApiServiceForBooks.getData(url: "volumes", query: {
        'q': 'programming',
        'Filtering': 'free-ebooks'
      });
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

}