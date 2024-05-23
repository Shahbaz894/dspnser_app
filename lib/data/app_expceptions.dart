class AppExceptions implements Exception{
  final _message;
  final _prefix;
  AppExceptions([this._message,this._prefix]);
  String toString(){
    return  '$_message,$_prefix';
  }
}

class InternetExceptions extends AppExceptions{

  InternetExceptions([String? message]):super(message,'No internet connection');

}

class FirebaseExceptions extends AppExceptions{

  FirebaseExceptions([String? message]):super(message,'No Data fetch from firebase connection');

}

class ServerExceptions extends AppExceptions{

  ServerExceptions([String? message]):super(message,'Server Error');

}
class RequestTimeOut extends AppExceptions{

  RequestTimeOut([String? message]):super(message,'Time For request');

}