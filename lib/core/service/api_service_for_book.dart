import 'package:dio/dio.dart';

class ApiServiceForBooks{
  static  Dio dio= Dio();

  static initDio(){

    dio= Dio(
        BaseOptions(
          baseUrl:"https://www.googleapis.com/books/v1/",
          receiveDataWhenStatusError: true,
        )
    );
  }
  static Future<Map<String,dynamic>>getData({ required String url,required Map<String,dynamic> query,})async{
    Response reponse=await dio.get(url,queryParameters: query);
    return reponse.data;
  }
}


