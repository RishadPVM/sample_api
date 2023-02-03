import 'package:api_sambil/cubit/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _Api = ApiCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ApiCubit, ApiState>(
        bloc: _Api,
        builder: (context, state){
          if(state is ApiLoding){
            return Center(child: CircularProgressIndicator());
          }else if(state is ApiError){
            return Icon(Icons.error);
          }else if(state is Apiloaded){
               return Center(
            child: Column(
              children: [
                Image.network(state.data2),
                Text(state.data),
                Text(state.data4)
              ],
            ),
          );
          }else{
            return Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            );
          }
        },
      ),
    );
  }
}
