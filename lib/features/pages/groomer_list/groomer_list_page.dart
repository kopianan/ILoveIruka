import 'package:flutter/material.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class GroomerLlistPage extends StatefulWidget {
  GroomerLlistPage({Key key}) : super(key: key);

  @override
  _GroomerLlistPageState createState() => _GroomerLlistPageState();
}

class _GroomerLlistPageState extends State<GroomerLlistPage> {
  FocusNode _focusNode;
  // var itemsUser = List<ListUser>();

  List<ListUser> duplicateItems = List<ListUser>();
  List<ListUser> sideItems = List<ListUser>();
  var items = List<ListUser>();
  void filterSearchResults(String query) {
    List<ListUser> dummySearchList = List<ListUser>();

    dummySearchList.addAll(duplicateItems);

    print("duplicateItme " + duplicateItems.length.toString());
    if (query.isNotEmpty) {
      List<ListUser> dummyListData = List<ListUser>();
      dummySearchList.forEach((item) {
        if (item.name.toString().toLowerCase().contains(query.toLowerCase()) || item.coverageArea.toString().toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });

      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();

        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Text(
                "Groomers",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20,)),
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
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    new Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          print("Onchanged" + value);
                          filterSearchResults(value);
                        },
                        focusNode: _focusNode,
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
            StateBuilder<DashboardStore>(
              models: [Injector.getAsReactive<DashboardStore>()],
              initState: (context, initReact) {
                initReact.setState(
                  (fn) => fn.callUserGroomerModel(UserByRoleRequest(role: "Groomer")),
                  onData: (context, store){
                    if(store.getFailure == null){
                      duplicateItems = store.getUserGroomerModel.listUser ; 
                      items.addAll(duplicateItems); 
                    }
                  }
                );
              },
              builder: (context, reactive) {
                return reactive.whenConnectionState(
                    onIdle: () => SliverToBoxAdapter(
                          child: Container(
                            child: Center(
                              child: Text("Groomer List"),
                            ),
                          ),
                        ),
                    onWaiting: () => SliverToBoxAdapter(
                          child: Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                    onData: (store) => SliverList(
                          delegate: SliverChildListDelegate(
                            [GroomerHeaderList(dataSnap: store.getUserGroomerModel.listUser), buildListGroomer()],
                          ),
                        ),
                    onError: (dynamic) => SliverToBoxAdapter(child: Container(child: Center(child: CircularProgressIndicator()))));
              },
            )
          ],
        ),
      ),
    ));
  }

  ListView buildListGroomer() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Routes.navigator.pushNamed(Routes.groomerDetail); 
              Provider.of<DataBridge>(context, listen: false).setCurrentSelectedGroomer(items[index]);
              // Navigator.of(context).pushNamed("/groomer_detail");
            },
            child: Column(
              children: <Widget>[
                Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      items[index].name,
                      style: TextStyle(fontSize: 20),
                    )),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ));
      },
    );
  }
}

class GroomerHeaderList extends StatelessWidget {
  const GroomerHeaderList({Key key, this.dataSnap}) : super(key: key);
  final List<ListUser> dataSnap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (dataSnap.length >= 5) ? 5 : dataSnap.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Provider.of<DataBridge>(context, listen: false).setCurrentSelectedGroomer(dataSnap[index]);
              Navigator.of(context).pushNamed("/groomer_detail");
            },
            child: Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: 200,
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(Constants.getWebUrl() + "/" + dataSnap[index].picture.toString()),
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            dataSnap[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
