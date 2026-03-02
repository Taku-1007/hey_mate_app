import 'package:hey_mate_app/domain/mock/model/mypage_summary.dart';

abstract class MypageRepository {
  Future<MypageSummary> fetchSummary();
}
