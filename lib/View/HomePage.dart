import 'package:emp_app/Controller/EmployeeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'EmployeeDetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EmployeeController productController = Get.put(EmployeeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          title: Text('Emp Data'),
          centerTitle: true,
        ),
        body: Center(child: Expanded(child: Obx(() {
          if (productController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: productController.employeeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmployeeDetailpage(
                                  employeeModel:
                                      productController.employeeList[index],
                                ))),
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.network(
                                productController
                                    .employeeList[index].profileImage
                                    .toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  productController.employeeList[index].name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  productController.employeeList[index].company
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  );
                });
        }))));
  }
}
