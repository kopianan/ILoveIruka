import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:provider/provider.dart';

class GroomerList extends StatefulWidget {
  GroomerList({Key key}) : super(key: key);

  @override
  _GroomerListState createState() => _GroomerListState();
}

class _GroomerListState extends State<GroomerList> {
  @override
  void initState() {
    dashboardBloc.add(GetUserByRole(UserByRoleRequest(role: "Groomer")));
    super.initState();
  }

  final dashboardBloc = DashboardBlocBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Text(
                "Groomers",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    new Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: 250,
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  child: Text("AA"),
                                  radius: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Nama")
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            BlocBuilder<DashboardBlocBloc, DashboardState>(
              bloc: dashboardBloc,
              builder: (context, state) {
                if (state is GetUserByRoleLoading) {
                  return SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()));
                } else if (state is GetUserByRoleCompleted) {
                  final dataSnap = state.response.listUser;
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return InkWell(
                            onTap: () {
                              Provider.of<DataBridge>(context, listen: false).setCurrentSelectedGroomer(dataSnap[index]); 
                              Navigator.of(context).pushNamed("/groomer_detail");
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      dataSnap[index].name,
                                      style: TextStyle(fontSize: 20),
                                    )),
                                Divider(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                              ],
                            ));
                      },
                      childCount: dataSnap.length,
                    ),
                  );
                } else if (state is GetUserByRoleError) {
                  return SliverToBoxAdapter(
                      child: Center(child: Text("Please refresh page")));
                }
                return SliverToBoxAdapter(
                    child: Center(child: Text("Please refresh page")));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
