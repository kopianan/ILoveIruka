import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/address/cubit/address_cubit.dart';
import 'package:i_love_iruka/domain/address/address_data_model.dart';
import 'package:i_love_iruka/domain/address/province_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';

class SettingProfielPage extends StatefulWidget {
  static final String TAG = "/setting_profile_page";
  @override
  _SettingProfielPageState createState() => _SettingProfielPageState();
}

class _SettingProfielPageState extends State<SettingProfielPage> {
  ProvinceDataModel selectedProvince;
  AddressDataModel selectedCity;

  List<AddressDataModel> cityList = [];
  List<ProvinceDataModel> provinceList = [];
  final cityCubit = AddressCubit();
  final provinceCubit = AddressCubit();
  @override
  void initState() {
    print("Loading");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    selectedProvince = null;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(3, 3))
                      ],
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      child: Icon(
                        Icons.add_photo_alternate,
                        size: 15,
                      ),
                      width: 30,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              ProfileCustomFormField(),
              SizedBox(height: 20),
              ProfileCustomFormField(),
              SizedBox(height: 20),
              ProfileCustomFormField(),
              BlocProvider(
                create: (context) => provinceCubit..getProvince(),
                child: BlocConsumer<AddressCubit, AddressState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      loading: (e) => print("Loading"),
                      error: (e) => print("errsdfsdfor"),
                      getProvince: (e) {
                        provinceList = e.data;
                        selectedProvince = provinceList.first;
                        cityCubit.getCity(provinceList.first.provinceId);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => defaultDropDown(),
                        loading: (e) => loadingDropDown(),
                        error: (e) => errorDropDown(),
                        getProvince: (e) => DropdownButtonFormField(
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
                                  cityCubit
                                      .getCity(selectedProvince.provinceId);
                                });
                              },
                            ));
                  },
                ),
              ),
              BlocProvider(
                create: (context) => cityCubit,
                child: BlocConsumer<AddressCubit, AddressState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      error: (e) => showBasicFlash(context, e.toString()),
                      getCity: (e) {
                        cityList = e.data;
                        selectedCity = cityList.first;
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => defaultDropDown(),
                        loading: (e) => loadingDropDown(),
                        error: (e) => errorDropDown(),
                        getCity: (e) => DropdownButtonFormField(
                              decoration: dropDownDecoration(),
                              items: cityList
                                  .map((val) => DropdownMenuItem(
                                      child:
                                          Text(val.type + " " + val.cityName),
                                      value: val))
                                  .toList(),
                              value: selectedCity,
                              onTap: () {},
                              onChanged: (newData) {},
                            ));
                  },
                ),
              ),
            ],
          ),
        ),
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

class ProfileCustomFormField extends StatelessWidget {
  const ProfileCustomFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Name",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: "Name"),
      ),
    ]);
  }
}
