part of 'service.dart';

class QuizService {

  static Future<ApiReturnValue> readAllQuestion() async {
    var response = await http.get(Uri.parse(Endpoint.readAllQuestion));
    switch(response.statusCode){
      case 200 :
        return ApiReturnValue(value: QuizSuccess.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurvey(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurvey),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponse.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createFeedback(int idUser, int idCategory, String feedback) async {
    final response = await http.post(
        Uri.parse(Endpoint.postFeedback),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body:jsonEncode(<String, dynamic>{
          "idUser" : idUser,
          "idCategory" : idCategory,
          "feedback" : feedback
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: FeedbackPostResponse.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create albfaaum.');
    }
  }
}