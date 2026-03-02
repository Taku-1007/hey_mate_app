import 'package:hey_mate_app/domain/mock/model/profile_detail.dart';
import 'package:hey_mate_app/domain/mock/repository/profile_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class ProfileRepositoryMock implements ProfileRepository {
  ProfileRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<ProfileDetail> fetchProfile(String id) async {
    final data = await _loader.load('assets/mock/profile_detail.json')
        as Map<String, dynamic>;
    return ProfileDetail.fromJson(data);
  }
}
