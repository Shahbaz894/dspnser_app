import 'package:dspnser_app/data/response/status.dart';

class FireBaseResponse<T>{

  Status? status;
  T? data;
  String? message;
  FireBaseResponse(this.message,this.data,this.status);
  FireBaseResponse.loading():status =Status.loading;
  FireBaseResponse.completed(this.data):status =Status.completed;
  FireBaseResponse.error(this.message):status =Status.error;
  @override
  String toString() {
    // TODO: implement toString
    return "Status :$status \n Message :$message \n Data $data";
  }
}

