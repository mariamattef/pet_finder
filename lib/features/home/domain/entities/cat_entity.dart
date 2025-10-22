class CatEntity {
  final String name;
  final String imageUrl;
  final String description;
  final WeightEntity weight;
  final String origin;
  final String referenceImageId;

  CatEntity({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.weight,
    required this.origin,
    required this.referenceImageId,
  });
}

class WeightEntity {
  final String imperial;
  final String metric;

  WeightEntity({required this.imperial, required this.metric});
}
