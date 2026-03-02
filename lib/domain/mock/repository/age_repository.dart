import 'package:hey_mate_app/domain/mock/model/age_gate.dart';

abstract class AgeRepository {
  Future<AgeGate> fetchAgeGate();
}
