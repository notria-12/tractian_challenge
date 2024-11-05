class AssetModel {
  final String id;
  final String name;
  final String? parentId;
  final String? locationId;

  AssetModel({
    required this.id,
    required this.name,
    this.parentId,
    this.locationId,
  });

  factory AssetModel.fromJson(Map<String, dynamic> json) {
    return AssetModel(
      id: json['id'],
      name: json['name'],
      parentId: json['parentId'],
      locationId: json['locationId'],
    );
  }
}
