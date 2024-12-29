import 'package:json_annotation/json_annotation.dart';

class StringToDoubleConverter implements JsonConverter<double, String> {
  const StringToDoubleConverter();

  @override
  double fromJson(String object) {
    return object.isEmpty ? 0 : double.parse(object);
  }

  @override
  String toJson(double json) {
    final str = json.truncate() == json
        ? json.truncate().toString()
        : json.toStringAsFixed(2);

    return str;
  }
}

class IntToBoolonverter implements JsonConverter<bool, int?> {
  const IntToBoolonverter({this.defaultValue});

  final bool? defaultValue;

  @override
  bool fromJson(int? json) {
    if (json == null && defaultValue != null) {
      return defaultValue!;
    }
    return json == 1;
  }

  @override
  int toJson(bool object) {
    return object ? 1 : 0;
  }
}

class StringToBoolonverter implements JsonConverter<bool, String?> {
  const StringToBoolonverter({this.defaultValue});

  final bool? defaultValue;

  @override
  bool fromJson(String? json) {
    if (json == null && defaultValue != null) {
      return defaultValue!;
    }
    return json == "1";
  }

  @override
  String toJson(bool object) {
    return object ? "1" : "0";
  }
}

class StringToIntConverter implements JsonConverter<int, String> {
  const StringToIntConverter();

  @override
  int fromJson(String object) {
    return int.parse(object);
  }

  @override
  String toJson(int json) {
    return json.toString();
  }
}

class NumberToDoubleStringConverter implements JsonConverter<String, Object> {
  const NumberToDoubleStringConverter();

  @override
  String fromJson(Object object) {
    if (object is double) {
      return object.toStringAsFixed(2);
    } else {
      return double.tryParse(object.toString())?.toStringAsFixed(2) ?? '0.00';
    }
  }

  @override
  Object toJson(String json) {
    return json;
  }
}
