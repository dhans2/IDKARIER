part of 'view.dart';

class AdminListQuestionView extends StatelessWidget {
  final AdminListQuestionController _adminListQuestionController = Get.put(AdminListQuestionController());

  AdminListQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('List Question')),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _adminListQuestionController.clearInput();
          _adminListQuestionController.handleIsEdit();
          Get.to(() => AdminListQuestionAddView());
          },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _body(BuildContext context){
    return Container(
        width: double.infinity,
        height: 620,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Obx((){
          return ListView.builder(
            itemCount: _adminListQuestionController.listQuestion.value.data.length,
            itemBuilder: (_, index) {
              return _cardCategory(
                context,
                () => _adminListQuestionController.handleDeleteQuestion(id: _adminListQuestionController.listQuestion.value.data[index].idQuestion.toString()),
                () => _adminListQuestionController.handleReadDetailQuestion(id: _adminListQuestionController.listQuestion.value.data[index].idQuestion.toString()),
                category: _adminListQuestionController.listQuestion.value.data[index].category.category,
                quiz: _adminListQuestionController.listQuestion.value.data[index].question
              );
            },
          );
        })
    );
  }

  Widget _cardCategory(BuildContext context, Function deleteCategory, Function editCategory,{String? quiz, String? category}){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
      child: InkWell(
        onTap: (){},
        child: Material(
          color: Colors.transparent,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  (quiz != null) ? quiz : "Pengelola",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.headline1?.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  (category != null) ? category : "Category",
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: (){
                              editCategory();
                            },
                            child: Icon(Icons.edit, color: Colors.green)),
                        SizedBox(width: 5),
                        GestureDetector(
                            onTap: (){
                              deleteCategory();
                            },
                            child: Icon(Icons.delete, color: Colors.red)),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}