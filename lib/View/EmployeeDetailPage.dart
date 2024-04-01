import 'package:emp_app/Model/EmployeeModel.dart';
import 'package:flutter/material.dart';

class EmployeeDetailpage extends StatelessWidget {
  EmployeeDetailpage({Key? key, required this.employeeModel}) : super(key: key);
  EmployeeModel employeeModel;
  //DEMO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network(
                employeeModel.profileImage.toString(),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              employeeModel.name.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              employeeModel.username.toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              employeeModel.phone.toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              employeeModel.company.toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              employeeModel.email.toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
