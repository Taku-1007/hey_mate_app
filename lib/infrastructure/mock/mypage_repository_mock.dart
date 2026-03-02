import 'package:hey_mate_app/domain/mock/model/mypage_summary.dart';
import 'package:hey_mate_app/domain/mock/repository/mypage_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class MypageRepositoryMock implements MypageRepository {
  MypageRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<MypageSummary> fetchSummary() async {
    final data =
        await _loader.load('assets/mock/mypage.json') as Map<String, dynamic>;
    return MypageSummary.fromJson(data);
  }
}
