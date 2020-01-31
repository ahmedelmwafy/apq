import 'package:apq/Screens/home/model.dart';
import 'package:apq/helpers/network.dart';

class ServicesController {
  NetWork netWork = NetWork();
  ServicesModel servicesModel = ServicesModel();

  Future<ServicesModel> getServices() async {
    var data = await netWork.getData(url: '/services');
    print(data);

    servicesModel = ServicesModel.fromJson(data);
    return servicesModel;
  }
}
