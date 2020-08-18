import 'package:cloud_firestore/cloud_firestore.dart';


import 'firebase_constant.dart';
import 'model/add_order.dart';

class FirebaseManager
{

  static Future<bool> addOrderHistory(
      AddOrder addNerOrder) async {
    try {
      final databaseReference = Firestore.instance;
      databaseReference.settings(persistenceEnabled: false);

      addNerOrder.userId = "User1";

      databaseReference
          .collection(UserCollection)
          .document(addNerOrder.userId)
          .setData({
        userIdField:addNerOrder.userId,
        orderIdField:addNerOrder.orderId,
        orderTimeField:addNerOrder.orderTime,
        orderItemField:addNerOrder.items,
        orderItemCountField:addNerOrder.itemCount,
        orderItemBillAmoutField:addNerOrder.bill

      });



      print("Group done");
      return true;
    } on Exception catch (e) {
      print("Group fail");

      return false;
    }
  }
}