import 'model.dart';

class ModelList {
  final List<Model> modelList;

  ModelList({required this.modelList});

  factory ModelList.fromJson(Map<String, dynamic> json) {
    var list = List<Model>.empty(growable: true);

    if (json['data'] != null) {
      json['data'].forEach((v) {
        final model = Model.fromJson(v);
        list.add(model);

      });
    }

    return ModelList(modelList: list);
  }
}