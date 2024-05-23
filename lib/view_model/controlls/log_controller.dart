
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class LogController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final RxList<Map<String, dynamic>> data = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      final QuerySnapshot querySnapshot = await _firestore.collection('/DispencerApp').get();
      data.value = querySnapshot.docs.map((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      //print('Error fetching data: $e');
    }
  }

}


