part of 'api_cubit.dart';

abstract class ApiState extends Equatable{
  const ApiState();
}
 
class ApiInitial extends ApiState {
  @override
  List<Object> get props=>[];
}

class ApiLoding extends ApiState {
  @override
  List<Object> get props=>[];
}

class Apiloaded extends ApiState {
  final  data;
  final  data2;
  final  data3;
  final  data4;
  const Apiloaded(this.data,this.data2,this.data3,this.data4,);
  @override
  List<Object> get props=>[data,data2,data3,data4];
}

class ApiError extends ApiState {
  @override
  List<Object> get props=>[];
}


