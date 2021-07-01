import 'package:challenge/data/api_client.dart';
import 'package:challenge/data/model/challenge_entity.dart';

class ChallengeRepository {
  final APIClient apiClient = APIClient();

  List<ChallengeEntity> getChallenges() {
    return apiClient.getChallenges();
  }
}
