class Countries {
  final String countryName;
  final String countryCode;

  const Countries({
    required this.countryName,
    required this.countryCode,
  });

  factory Countries.fromJson(Map<String, dynamic> json) {
    return Countries(
      countryName: json['name'],
      countryCode: json['iso2'],
    );
  }
}

class States {
  final String stateName;
  final String stateCode;

  const States({
    required this.stateName,
    required this.stateCode,
  });

  factory States.fromJson(Map<String, dynamic> json) {
    return States(
      stateName: json['name'],
      stateCode: json['iso2'],
    );
  }
}

class City {
  final String cityId;
  final String cityName;

  const City({
    required this.cityId,
    required this.cityName,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      cityId: json['id'].toString(),
      cityName: json['name'],
    );
  }
}
