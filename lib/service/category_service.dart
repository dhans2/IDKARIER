part of "service.dart";

class CategoryService {

  static Future<ResponseMessage> addCategory(String category, String keterangan) async {
    final response = await http.post(
        Uri.parse("http://localhost:7000/category"),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "category" : category,
          "keterangan" : keterangan
        })
    );

    switch(response.statusCode){
      case 200:
        return ResponseMessage.fromJson(jsonDecode(response.body));
      case 400 :
        return ResponseMessage.fromJson(jsonDecode(response.body));
      default:
        throw Exception('Failed to create album.');
    }
  }
}