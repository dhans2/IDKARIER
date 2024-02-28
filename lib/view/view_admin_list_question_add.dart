part of 'view.dart';

class AdminListQuestionAddView extends StatelessWidget {
  final AdminListQuestionController _adminListQuestionController = Get.put(AdminListQuestionController());
  AdminListQuestionAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Add Mandatory"),),
      body: _body(),
    );
  }

  Widget _body(){
    return ListView(
      children: [
        Text("Kategori"),
        _dropDown(),
        Text("Question"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent),
              color: Colors.white
          ),
          child: TextField(
            controller: _adminListQuestionController.question,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48)
          ),
          margin: const EdgeInsets.symmetric(horizontal: 1),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
            onPressed: (){
              if(_adminListQuestionController.isEdit.value) {
                _adminListQuestionController.handleUpdateQuestion();
              } else {
                _adminListQuestionController.handleAddQuestion();
              }
              Get.back();
            },
            child: Obx((){
              return Text(_adminListQuestionController.isEdit.value ? "Update" : "Add");
            }),
          ),
        ),
      ],
    );
  }

  Widget _dropDown(){
    return Obx((){
      return Container(
        margin: const  EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.only(left: 22, right: 18, top: 12, bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(18),
          focusColor: Colors.white,
          underline: const SizedBox(),
          iconSize: 26,
          isExpanded: true,
          value: _adminListQuestionController.selectValueCategory.value,
          items: _adminListQuestionController.listCategoryDropDownMenuItem.value,
          onChanged: (String? value) {
            _adminListQuestionController.handleValue(value);
            _adminListQuestionController.handleIdCategory(value);
          },
        ),
      );
    });
  }
}