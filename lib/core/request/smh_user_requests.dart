import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/services/smh_user_service.dart';

class SMHPostRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.post;
  }

  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }
}

class SMHGetRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.get;
  }

  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }
}

class SMHPutRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.put;
  }

  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }
}

class SMHDeleteRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.delete;
  }

  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }
}

class SMHHeadRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.head;
  }

  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }
}
