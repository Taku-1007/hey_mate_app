import 'package:hey_mate_app/domain/mock/model/birthdate_flow.dart';

abstract class BirthdateRepository {
  Future<BirthdateFlow> fetchFlow();
}
