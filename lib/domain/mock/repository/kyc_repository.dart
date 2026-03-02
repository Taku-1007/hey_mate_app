import 'package:hey_mate_app/domain/mock/model/kyc_flow.dart';

abstract class KycRepository {
  Future<KycFlow> fetchFlow();
}
