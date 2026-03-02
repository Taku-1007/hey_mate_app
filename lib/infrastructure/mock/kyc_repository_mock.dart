import 'package:hey_mate_app/domain/mock/model/kyc_flow.dart';
import 'package:hey_mate_app/domain/mock/repository/kyc_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class KycRepositoryMock implements KycRepository {
  KycRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<KycFlow> fetchFlow() async {
    final data =
        await _loader.load('assets/mock/kyc_steps.json') as Map<String, dynamic>;
    return KycFlow.fromJson(data);
  }
}
