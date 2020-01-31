import 'package:flutter/material.dart';
import 'package:apq/Screens/home/controller.dart';
import 'package:apq/Screens/home/model.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ServicesController servicesController = ServicesController();
  ServicesModel servicesModel = ServicesModel();

  @override
  void initState() {
    _getServices();
    super.initState();
  }

  _getServices() async {
    servicesModel = await servicesController.getServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ABQ'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.notifications),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage('assets/splash.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'نوع الخدمة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                      new Text(
                        'هذا النص مثال لنص يتولد تلقائي',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 18,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
