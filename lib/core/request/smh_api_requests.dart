import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/services/smh_api_service.dart';

class SMHApiPostRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.post;
  }

  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }
}

class SMHApiGetRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.get;
  }

  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }
}

class SMHApiPutRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.put;
  }

  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }
}

class SMHApiDeleteRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.delete;
  }

  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }
}

class SMHApiHeadRequest<T> extends SMHRequest<T> {
  @override
  RequestMethod method() {
    return RequestMethod.head;
  }

  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }
}
