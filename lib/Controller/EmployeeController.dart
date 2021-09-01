import 'package:emp_app/Model/EmployeeModel.dart';
import 'package:emp_app/Services/EmployeeServices.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  var isLoading = true.obs;
  var employeeList = <EmployeeModel>[].obs;

  @override
  void onInit() {
    fetchEmployee();
    super.onInit();
  }

  void fetchEmployee() async {
    try {
      isLoading(true);
      var employees = await EmployeeServices.fetchEmployees();
      if (employees != null) {
        employeeList.value = employees;
      }
    } finally {
      isLoading(false);
    }
  }
}
