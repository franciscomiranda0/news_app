import 'package:news_app/src/domain/entities/source.dart';

class SourceModel extends Source {
  const SourceModel({
    required String id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  factory SourceModel.fromMap(Map<String, dynamic> map) {
    return SourceModel(id: map['id'], name: map['name']);
  }
}
