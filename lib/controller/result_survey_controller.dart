part of 'controller.dart';

class ResultSurveyController extends GetxController {

  final resultSurveyOneModel = ResultSurveyOneModel(status: false, sangatSetuju: 1, sangatTidakSetuju: 1, setuju: 1, tidakSetuju: 1, totalResult: 1).obs;
  final dataMap = <String, double> {
  "Sangat Setuju" : 1.0,
  "Setuju" : 1.0,
  "Tidak Setuju" : 1.0,
  "Sangat Tidak Setuju" : 1.0,
  }.obs;




  @override
  void onInit() {
    handleResultSurveyQone();
    super.onInit();
  }

  void handleResultSurveyQone() async {
    try {
      //print(resultSurveyOneModel.totalResult.toString() + "sebelum");
      var response = await ResultSurveyService.readResultSurveyServiceQone();
      if(response.status){
        resultSurveyOneModel.value.totalResult = response.totalResult;
        resultSurveyOneModel.value.tidakSetuju = response.tidakSetuju;
        resultSurveyOneModel.value.setuju = response.setuju;
        resultSurveyOneModel.value.sangatTidakSetuju = response.sangatTidakSetuju;
        resultSurveyOneModel.value.sangatSetuju = response.sangatSetuju;

        // map1.update('key3', (value) => 'Transparent');
        dataMap.update("Sangat Setuju", (value) => response.sangatSetuju.toDouble());
        dataMap.update("Setuju", (value) => response.setuju.toDouble());
        dataMap.update("Tidak Setuju", (value) => response.tidakSetuju.toDouble());
        dataMap.update("Sangat Tidak Setuju", (value) => response.sangatTidakSetuju.toDouble());
       }
    }catch(e){
      print(e);
    }
  }
}