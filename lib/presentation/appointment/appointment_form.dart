import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/page_header.dart';

class AppointmentForm extends StatefulWidget {
  static final String TAG = '/appointment_form_page'; 

  AppointmentForm({Key key}) : super(key: key);
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  List<String> petList = ["asdf", "asdf", "asdf", "asdf", "akjsdhf"];
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height * .40,
            child: Stack(
              children: <Widget>[
                PageHeader(
                  title: "Appointment",

                ),
                new Container(
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.only(
                      top: 60, left: 5, right: 5, bottom: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: new Container(
                          width: MediaQuery.of(context).size.width,
                          child: new Card(
                            elevation: 6,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 8,
                                        left: 10,
                                        right: 10,
                                        bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "selected pet : 1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _showModal(context);
                                          },
                                          child: Text(
                                            "see all >",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: petList.length,
                                        itemBuilder: (context, index) =>
                                            Container(
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                child: PetItemWidget()),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        SliverToBoxAdapter(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            elevation: 6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: "anan", hintText: "Android"),
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: "anan", hintText: "Anan"),
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: "anan", hintText: "Anan"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BtnPrimaryBlue(
                    text: "Book",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        )),
      ],
    ));
  }

  _showModal(BuildContext context) {
    return showModalBottomSheet(
        elevation: 0,
        isScrollControlled: true,
        isDismissible: true,
        backgroundColor: Colors.transparent,
        enableDrag: true,
        context: (context),
        builder: (context) {
          return Container(
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Icon(
                      Icons.arrow_drop_down,
                      size: 50,
                      color: Colors.black,
                    )),
                    ListTile(
                      title: Text("All Pets"),
                      subtitle: Text(
                        "Selected Pet(s)",
                        textAlign: TextAlign.left,
                      ),
                      trailing: MaterialButton(
                        onPressed: () {},
                        child: Text("Save"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(3),
                            ),
                            side: BorderSide(color: Colors.green, width: 2)),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1 / 1.6,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return PetItemWidget();
                          }),
                    ),
                  ],
                ),
              ));
        });
  }
}


class PetItemWidget extends StatefulWidget {
  const PetItemWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetItemWidgetState createState() => _PetItemWidgetState();
}

class _PetItemWidgetState extends State<PetItemWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Card(
              shape: selected
                  ? new RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.blue, width: 3.0),
                      borderRadius: BorderRadius.circular(8.0))
                  : new RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.blue, width: 3.0),
                      borderRadius: BorderRadius.circular(8.0)),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: Container(
                  child: Image.asset(
                    "images/assets/iruka_logo2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Dog Namea adsf",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
