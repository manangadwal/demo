import 'package:demo/models/imports.dart';

class DataController extends GetxController {
  List<dynamic> empData = [].obs;

  Future<String> getJson() {
    return rootBundle.loadString('lib/data/data.json');
  }

  getDataFromJson() async {
    final jsonData = json.decode(await getJson());
    empData.assignAll(jsonData['data']);
  }
}
