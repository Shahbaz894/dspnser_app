import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class LogProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late List<Map<String, dynamic>> data = <Map<String, dynamic>>[];

  LogProvider() {
    fetchData();
  }

  void fetchData() async {
    try {
      final QuerySnapshot querySnapshot = await _firestore.collection('/DispencerApp').get();
      data = querySnapshot.docs.map((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>).toList();
      notifyListeners(); // Notify listeners after data is fetched
    } catch (e) {
      // Handle error (e.g., show error message)
      print('Error fetching data: $e');
    }
  }
}
