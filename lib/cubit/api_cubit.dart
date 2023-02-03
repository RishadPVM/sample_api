import 'package:api_sambil/cubit/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial()){
   getdata();
  }
   ApiRepositary repositary=ApiRepositary();
 Future getdata()async{
      emit(ApiLoding());
      try {
        final response =await repositary.fechdata();
        
        String id =response.id;
        String  url=response.url;
        int height=response.height;
        int width=response.width;
        emit(Apiloaded( id, url,height, width));
      } catch (ex) {
        Exception(ex);
        print(Exception(ex));
        ApiError();
      }
  }
}
