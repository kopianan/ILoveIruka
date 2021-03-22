import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/address/address_data_model.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(AddressState.initial());
  Dio dio = Dio();
  Options options =
      Options(headers: {"key": "d3378ccdaa201c0b0bffbd673aab43c2"});

  void getProvince() async {
    Response response;
    try {
      emit(AddressState.loading());
      response = await dio.get("https://api.rajaongkir.com/starter/province",
          options: options);
      List results = response.data['rajaongkir']['results'];
      List<AddressDataModel> listAddress =
          results.map((e) => AddressDataModel.fromJson(e)).toList();
      emit(AddressState.getProvince(listAddress));
    } on DioError catch (error) {
      print(error);
      emit(AddressState.error());
    }
  }

  void getCity(String provinceId) async {
    Response response;
    try {
      emit(AddressState.loading());
      response = await dio.get("https://api.rajaongkir.com/starter/city",
          options: options, queryParameters: {"province": "$provinceId"});
      List results = response.data['rajaongkir']['results'];
      List<AddressDataModel> listAddress =
          results.map((e) => AddressDataModel.fromJson(e)).toList();
      emit(AddressState.getProvince(listAddress));
    } on DioError catch (error) {
      print(error);
      emit(AddressState.error());
    }
  }
}
