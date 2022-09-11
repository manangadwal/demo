import 'package:demo/models/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataController dataController = Get.find<DataController>();
    dataController.getDataFromJson();

    return Scaffold(
      appBar: const AppBarCustom(),
      backgroundColor: Colors.white,
      body: Obx(
        (() => Container(
              margin: const EdgeInsets.all(5),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: dataController.empData.length,
                  itemBuilder: (ctx, idx) {
                    var data = Employees.fromJson(dataController.empData[idx]);
                    int workingYears =
                        DateTime.now().year - DateTime.parse(data.doj).year;

                    return Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.account_circle,
                          size: 37,
                        ),
                        title: Text(data.name),
                        subtitle: Text(data.desc),
                        trailing: workingYears >= 5
                            ? const Icon(
                                Icons.circle,
                                color: Colors.green,
                              )
                            : const SizedBox(),
                      ),
                    );
                  }),
            )),
      ),
    );
  }
}
