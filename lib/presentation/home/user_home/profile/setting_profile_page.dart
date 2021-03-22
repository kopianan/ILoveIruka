import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/address/cubit/address_cubit.dart';
import 'package:i_love_iruka/domain/address/address_data_model.dart';

class SettingProfielPage extends StatefulWidget {
  static final String TAG = "/setting_profile_page";
  @override
  _SettingProfielPageState createState() => _SettingProfielPageState();
}

class _SettingProfielPageState extends State<SettingProfielPage> {
  AddressDataModel selectedProvince;
  AddressDataModel selectedCity;
  final cityCubit = AddressCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
              create: (context) => AddressCubit()..getProvince(),
              child: BlocConsumer<AddressCubit, AddressState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    loading: (e) => print("Loading"),
                    error: (e) => print("errsdfsdfor"),
                    getProvince: (e) {
                      selectedProvince = e.data.first;
                      cityCubit.getCity(e.data.first.provinceId);
                      print(e.data.length);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => DropdownButtonFormField(items: []),
                      loading: (e) => DropdownButtonFormField(items: []),
                      error: (e) => DropdownButtonFormField(items: []),
                      getProvince: (e) => DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                            items: [],
                            //   items: e.data
                            //       .map((e) => DropdownMenuItem(
                            //             child: Text(e.province),
                            //             value: e,
                            //           ))
                            //       .toList(),
                            //   value: selectedProvince,
                            //   onTap: () {},
                            //   onChanged: (newData) {
                            //     setState(() {
                            //       selectedProvince = newData;
                            //       cityCubit.getCity(selectedProvince.provinceId);
                            //     });
                            //   },
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
                    loading: (e) => print("Loading"),
                    error: (e) => print("errsdfsdfor"),
                    getProvince: (e) {
                      selectedProvince = e.data.first;
                      print(e.data.length);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => DropdownButtonFormField(items: []),
                      loading: (e) => DropdownButtonFormField(items: []),
                      error: (e) => DropdownButtonFormField(items: []),
                      getProvince: (e) => DropdownButtonFormField(
                            items: e.data
                                .map((e) => DropdownMenuItem(
                                      child: Text(e.type + " " + e.cityName),
                                      value: e,
                                    ))
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
    );
  }
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
