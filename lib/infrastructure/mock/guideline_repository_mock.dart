import 'package:hey_mate_app/domain/mock/model/guideline_content.dart';
import 'package:hey_mate_app/domain/mock/repository/guideline_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class GuidelineRepositoryMock implements GuidelineRepository {
  GuidelineRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<GuidelineContent> fetchGuidelines() async {
    final data =
        await _loader.load('assets/mock/guidelines.json') as Map<String, dynamic>;
    return GuidelineContent.fromJson(data);
  }
}
