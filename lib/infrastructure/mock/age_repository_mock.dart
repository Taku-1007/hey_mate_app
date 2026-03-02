import 'package:hey_mate_app/domain/mock/model/age_gate.dart';
import 'package:hey_mate_app/domain/mock/repository/age_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class AgeRepositoryMock implements AgeRepository {
  AgeRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<AgeGate> fetchAgeGate() async {
    final data = await _loader.load('assets/mock/age_verification.json')
        as Map<String, dynamic>;
    return AgeGate.fromJson(data);
  }
}
