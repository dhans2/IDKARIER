part of 'view.dart';

class AdminResultSurveyView extends StatelessWidget {
  final AdminMandatoryController _adminMandatoryController = Get.put(AdminMandatoryController());
  //final ResultSurveyController resultSurveyController = Get.put(ResultSurveyController());
  AdminResultSurveyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(context)
    );
  }

  Widget _body(BuildContext context){
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: Color(0xFFEEEEEE),
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: _headRsp(context),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                  child: _contentRsp(context)
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headRsp(BuildContext context){
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.black,
              size: 34,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(98, 0, 120, 0),
            child: Text(
              'Summary',
              style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentRsp(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Obx((){
        if(_adminMandatoryController.listQuestion.value.question.isEmpty){
          return Center(child: Text("Data is Empty"),);
        } else {
          return ListView.builder(
            itemCount: _adminMandatoryController.totalLength.value,
            itemBuilder: (_, index){
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                color: Colors.white,
                width: double.infinity,
                height: 400,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(_adminMandatoryController.listQuestion.value.question[index].question,
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(color: Colors.black, thickness: 1),
                      PieChart(
                        // dataMap: {
                        //   "Sangat Setuju" : 1.0,
                        //   // "Sangat Setuju" : resultSurveyController.resultSurveyOneModel.value.sangatSetuju.toDouble(),
                        //   "Setuju" : 1.0,
                        //   "Tidak Setuju" : 1.0,
                        //   "Sangat Tidak Setuju" : 1.0
                        // },
                        dataMap: {
                          "Sangat Setuju" : _adminMandatoryController.listDataMaps.value[index].sangatSetuju.toDouble(),
                          "Setuju" : _adminMandatoryController.listDataMaps.value[index].setuju.toDouble(),
                          "Tidak Setuju" : _adminMandatoryController.listDataMaps.value[index].tidakSetuju.toDouble(),
                          "Sangat Tidak Setuju" : _adminMandatoryController.listDataMaps.value[index].sangatTidakSetuju.toDouble()
                        },
                        chartRadius: MediaQuery.of(context).size.width / 2.7,
                        legendOptions: LegendOptions(
                            legendPosition: LegendPosition.bottom,
                            showLegendsInRow: true
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValuesInPercentage: true,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }

      }),
    );
  }

}