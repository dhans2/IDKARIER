part of 'model.dart';

class QuizSuccess {
  bool status;
  List<Pengelola> pengelola;
  List<Medsos> medsos;
  List<Organisasi> organisasi;
  List<Administarasi> administrasi;
  List<Event> event;
  List<Pengembangan> pengembangan;

  QuizSuccess({required this.status, required this.pengelola, required this.medsos, required this.organisasi, required this.administrasi, required this.event, required this.pengembangan});
  factory QuizSuccess.fromJson(Map<String, dynamic> json){
    var listPengelola = json['pengelola'] as List;
    List<Pengelola> pengelolaList = listPengelola.map((i) => Pengelola.fromJson(i)).toList();

    var listMedsos = json["medsos"] as List;
    List<Medsos> medsosList = listMedsos.map((e) => Medsos.fromJson(e)).toList();

    var listOrganisasi = json["organisasi"] as List;
    List<Organisasi> organisasiList = listOrganisasi.map((e) => Organisasi.fromJson(e)).toList();

    var listAdministrasi = json["administrasi"] as List;
    List<Administarasi> administrasiList = listAdministrasi.map((e) => Administarasi.fromJson(e)).toList();

    var listEvent = json["event"] as List;
    List<Event> eventList = listEvent.map((e) => Event.fromJson(e)).toList();

    var listPengembangan = json["pengembangan"] as List;
    List<Pengembangan> pengembanganList = listPengembangan.map((e) => Pengembangan.fromJson(e)).toList();

    return QuizSuccess(
        status: json["status"],
        pengelola: pengelolaList,
        medsos: medsosList,
        organisasi: organisasiList,
        administrasi: administrasiList,
        event: eventList, pengembangan: pengembanganList
    );
  }
}

class Pengelola {
  int id_question;
  int id_category;
  String question;
  Pengelola({required this.id_category, required this.id_question, required this.question});
  
  factory Pengelola.fromJson(Map<String,dynamic> json){
    return Pengelola(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class Medsos {
  int id_question;
  int id_category;
  String question;
  Medsos({required this.id_category, required this.id_question, required this.question});

  factory Medsos.fromJson(Map<String,dynamic> json){
    return Medsos(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class Organisasi {
  int id_question;
  int id_category;
  String question;
  Organisasi({required this.id_category, required this.id_question, required this.question});

  factory Organisasi.fromJson(Map<String,dynamic> json){
    return Organisasi(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class Administarasi {
  int id_question;
  int id_category;
  String question;
  Administarasi({required this.id_category, required this.id_question, required this.question});

  factory Administarasi.fromJson(Map<String,dynamic> json){
    return Administarasi(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class Event {
  int id_question;
  int id_category;
  String question;
  Event({required this.id_category, required this.id_question, required this.question});

  factory Event.fromJson(Map<String,dynamic> json){
    return Event(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class Pengembangan {
  int id_question;
  int id_category;
  String question;
  Pengembangan({required this.id_category, required this.id_question, required this.question});

  factory Pengembangan.fromJson(Map<String,dynamic> json){
    return Pengembangan(id_category: json["id_category"], id_question: json["id_question"], question: json["question"]);
  }
}

class SurveyPostResponse {
  bool status;
  String message;
  SurveyPostResponse({required this.message, required this.status});

  factory SurveyPostResponse.fromJson(Map<String, dynamic> json){
    return SurveyPostResponse(message: json["message"], status: json["status"]);
  }
}

class FeedbackPostResponse {
  bool status;
  String message;
  FeedbackPostResponse({required this.message, required this.status});

  factory FeedbackPostResponse.fromJson(Map<String, dynamic> json){
    return FeedbackPostResponse(message: json["message"], status: json["status"]);
  }
}

