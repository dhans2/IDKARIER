part of 'view.dart';

class AdminListCategoryAddView extends StatelessWidget {
  final AdminListCategoryController _adminListCategoryController = Get.put(AdminListCategoryController());
  AdminListCategoryAddView({Key? key}) : super(key: key);

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
        Text("Menu"),
        _dropDown(),
        Text("Kategori"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent),
              color: Colors.white
          ),
          child: TextField(
            controller: _adminListCategoryController.categorys,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        Text("Keterangan"),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent),
              color: Colors.white
          ),
          child: TextField(
            controller: _adminListCategoryController.keterangan,
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
              if(_adminListCategoryController.isEdit.value){
                _adminListCategoryController.handleUpdateCategory();
              } else {
                _adminListCategoryController.handleAddCategory();
              }
              Get.back();
            },
            child: Obx((){
              return Text(_adminListCategoryController.isEdit.value ? "Update" : "Add");
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
          value: _adminListCategoryController.selectValueMenu.value,
          items: _adminListCategoryController.listMenuDropDownMenuItem.value,
          onChanged: (String? value) {
            _adminListCategoryController.handleValue(value);
            _adminListCategoryController.handleIdMenu(value);
          },
        ),
      );
    });
  }
}