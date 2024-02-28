part of 'view.dart';

class AdminListCategoryView extends StatelessWidget {
  final AdminListCategoryController _adminListCategoryController = Get.put(AdminListCategoryController());

  AdminListCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('List Category')),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _adminListCategoryController.clearInput();
          _adminListCategoryController.handleIsEdit();
          Get.to(() => AdminListCategoryAddView());
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
            itemCount: _adminListCategoryController.category.value.dataCategory.length,
            itemBuilder: (_, index) {
              return _cardCategory(
                context,
                () => _adminListCategoryController.handleDeleteCategory(id: _adminListCategoryController.category.value.dataCategory[index].idCategory.toString()),
                () => _adminListCategoryController.handleReadDetailCategory(id: _adminListCategoryController.category.value.dataCategory[index].idCategory.toString()),
                pengelola: _adminListCategoryController.category.value.dataCategory[index].category,
                keterangan: _adminListCategoryController.category.value.dataCategory[index].keterangan,
                menu: _adminListCategoryController.category.value.dataCategory[index].menu.menu,
                color: _adminListCategoryController.category.value.dataCategory[index].menu.menu == "Mandatory" ? Color(0xFFFFF176) : Color(0xFFE53935)
              );
            },
          );
        })
    );
  }

  Widget _cardCategory(BuildContext context, Function deleteCategory, Function editCategory,{String? pengelola, String? keterangan, String? menu, Color? color}){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
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
            height: 130,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (pengelola != null) ? pengelola : "Pengelola",
                              style: Theme.of(context).textTheme.headline1?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              (keterangan != null) ? keterangan : "Keterangan",
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              (menu != null) ? menu : "Menu is null",
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
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