import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';

class Weight extends WeightEntity {
  Weight({required super.imperial, required super.metric});

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    imperial: json['imperial'] as String,
    metric: json['metric'] as String,
  );

  Map<String, dynamic> toJson() => {'imperial': imperial, 'metric': metric};
}
