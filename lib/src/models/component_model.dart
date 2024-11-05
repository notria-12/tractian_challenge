class ComponentModel {
  final String id;
  final String name;
  String? parentId;
  final String sensorId;
  final String sensorType;
  final String status;
  final String gatewayId;
  String? locationId;

  ComponentModel(
      {required this.id,
      required this.name,
      this.parentId,
      required this.sensorId,
      required this.sensorType,
      required this.status,
      required this.gatewayId,
      this.locationId});

  factory ComponentModel.fromJson(Map<String, dynamic> json) {
    return ComponentModel(
        id: json['id'],
        name: json['name'],
        sensorId: json['sensorId'],
        sensorType: json['sensorType'],
        status: json['status'],
        gatewayId: json['gatewayId'],
        parentId: json['parentId'],
        locationId: json['locationId']);
  }
}
