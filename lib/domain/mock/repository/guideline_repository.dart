import 'package:hey_mate_app/domain/mock/model/guideline_content.dart';

abstract class GuidelineRepository {
  Future<GuidelineContent> fetchGuidelines();
}
