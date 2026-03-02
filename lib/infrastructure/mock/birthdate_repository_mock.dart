import 'package:hey_mate_app/domain/mock/model/birthdate_flow.dart';
import 'package:hey_mate_app/domain/mock/repository/birthdate_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class BirthdateRepositoryMock implements BirthdateRepository {
  BirthdateRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<BirthdateFlow> fetchFlow() async {
    final data =
        await _loader.load('assets/mock/birthdate.json') as Map<String, dynamic>;
    return BirthdateFlow.fromJson(data);
  }
}
