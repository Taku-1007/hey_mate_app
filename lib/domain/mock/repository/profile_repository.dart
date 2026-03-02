import 'package:hey_mate_app/domain/mock/model/profile_detail.dart';

abstract class ProfileRepository {
  Future<ProfileDetail> fetchProfile(String id);
}
