import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/address/cubit/address_cubit.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/domain/address/address_data_model.dart';
import 'package:i_love_iruka/domain/address/province_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';

import '../../../../injection.dart';
import 'address_req_res_data_model.dart';

class AddressPage extends StatefulWidget {
  static final String TAG = '/address_page';
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  ProvinceDataModel selectedProvince = ProvinceDataModel();
  AddressDataModel selectedCity = AddressDataModel();
  TextEditingController addressController = TextEditingController();
  TextEditingController postalController = TextEditingController();
  List<AddressDataModel> cityList = [];
  List<ProvinceDataModel> provinceList = [];
  final cityCubit = AddressCubit();
  final provinceCubit = AddressCubit();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    selectedProvince = null;
    super.didChangeDependencies();
  }

  AddressResponse dataAddress;
  void fillData(AddressResponse r) {
    if (r.toJson().containsValue(null)) {
    } else {
      dataAddress = r;
      addressController.text = r.address;
      postalController.text = r.postalCode;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserBloc>()..add(UserEvent.getAddress()),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          state.maybeMap(
            onAddressChanged: (e) {
              showSuccessFlash(context, "Address Changed Successfuly");
            },
            onGetAddress: (e) {
              e.response.fold(
                  () => {},
                  (a) => a.fold(
                        (l) => showBasicFlash(context, l.error),
                        (r) {
                          fillData(r);
                          provinceCubit.getProvince();
                        },
                      ));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            onAddressChanged: (e) {
              return (e.isLoading)
                  ? loadingScaffold()
                  : onDataScaffold(context);
            },
            onGetAddress: (e) {
              if (e.isLoading) {
                return loadingScaffold();
              } else {}
              return e.response.fold(
                  () => noneScaffold(),
                  (a) => a.fold(
                        (l) => errorScaffold(),
                        (r) => onDataScaffold(context),
                      ));
            },
            orElse: () => noneScaffold(),
          );
        },
      ),
    );
  }

  Scaffold onDataScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Change Address"),
        actions: [
          TextButton(
              onPressed: () {
                AddressRequest request = AddressRequest(
                    address: addressController.text,
                    city: selectedCity.cityName,
                    cityId: selectedCity.cityId,
                    postalCode: selectedCity.postalCode,
                    province: selectedProvince.province,
                    provinceId: selectedProvince.provinceId,
                    type: selectedCity.type);
                print(request.toString());
                context.read<UserBloc>().add(UserEvent.changeAddress(request));
              },
              child: Text(
                "Save",
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            BlocProvider(
              create: (context) => provinceCubit,
              child: BlocConsumer<AddressCubit, AddressState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    loading: (e) => print("Loading"),
                    error: (e) => print("errsdfsdfor"),
                    getProvince: (e) {
                      provinceList = e.data;

                      selectedProvince = e.data.firstWhere((element) =>
                          element.provinceId == dataAddress.provinceId);

                      cityCubit.getCity(selectedProvince.provinceId);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => defaultDropDown(),
                      loading: (e) => loadingDropDown(),
                      error: (e) => errorDropDown(),
                      getProvince: (e) =>
                          DropdownButtonFormField<ProvinceDataModel>(
                            decoration: dropDownDecoration(),
                            items: (provinceList == null)
                                ? []
                                : provinceList
                                    .map((province) => DropdownMenuItem(
                                        child: Text(province.province),
                                        value: province))
                                    .toList(),
                            value: (provinceList == null)
                                ? null
                                : selectedProvince,
                            onTap: () {},
                            onChanged: (newData) {
                              setState(() {
                                selectedProvince = newData;
                                cityCubit.getCity(selectedProvince.provinceId);
                              });
                            },
                          ));
                },
              ),
            ),
            SizedBox(height: 20),
            BlocProvider(
              create: (context) => cityCubit,
              child: BlocConsumer<AddressCubit, AddressState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    error: (e) => showBasicFlash(context, e.toString()),
                    getCity: (e) {
                      cityList = e.data;
                      try {
                        selectedCity = cityList.firstWhere(
                            (element) => element.cityId == dataAddress.cityId);
                      } catch (e) {
                        selectedCity = cityList.first;
                        postalController.text = selectedCity.postalCode;
                      }
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => defaultDropDown(),
                      loading: (e) => loadingDropDown(),
                      error: (e) => errorDropDown(),
                      getCity: (e) => DropdownButtonFormField<AddressDataModel>(
                            decoration: dropDownDecoration(),
                            items: cityList
                                .map((val) => DropdownMenuItem(
                                    child: Text(val.type + " " + val.cityName),
                                    value: val))
                                .toList(),
                            value: selectedCity,
                            onTap: () {},
                            onChanged: (newData) {
                              postalController.text = newData.postalCode;
                              selectedCity = newData;
                            },
                          ));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: postalController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabled: false,
                  labelText: "Postal Code"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: addressController,
              minLines: 3,
              maxLines: 4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Input your complete address",
                  labelText: "Address"),
            )
          ],
        ),
      ),
    );
  }

  Scaffold loadingScaffold() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  Scaffold noneScaffold() {
    return Scaffold(
      body: Center(
          child: Text(
        "No Data",
        style: TextStyle(fontSize: 40, color: Colors.grey),
      )),
    );
  }

  Scaffold errorScaffold() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.refresh, size: 50, color: Colors.grey),
          Text(
            "No Data",
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          TextButton(
              onPressed: () {
                context.read<UserBloc>().add(UserEvent.getAddress());
              },
              child: Text("Refresh"))
        ],
      ),
    );
  }

  DropdownButtonFormField defaultDropDown() => DropdownButtonFormField(
        items: [],
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "No data..."),
      );

  DropdownButtonFormField loadingDropDown() => DropdownButtonFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: "Getting data..."),
      items: []);

  DropdownButtonFormField errorDropDown() => DropdownButtonFormField(
        items: [],
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Error getting data"),
      );

  InputDecoration dropDownDecoration() => InputDecoration(
      border: OutlineInputBorder(), hintText: "Choose location");
}
