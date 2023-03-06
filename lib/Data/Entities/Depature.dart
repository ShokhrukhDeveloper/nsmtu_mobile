class Depature {
  Depature({
      required this.id,
      required this.mudirPhoto,
      required this.nameUz,
      required this.nameRu,
      required this.nameEng,
      required this.informationUz,
      required this.informationRu,
      required this.informationEng,
      required this.mudirName,
      required this.mudirTelephone,
      required this.mudirLavozimUz,
      required this.mudirLavozimRu,
      required this.mudirLavozimEng,
      required this.mudirDarajaUz,
      required this.mudirDarajaRu,
      required this.mudirDarajaEng,
      required this.mudirEmail,
      required this.mudirLocation,
      required this.mudirBioUz,
      required this.mudirBioRu,
      required this.mudirBioEng,
      required this.mudirNashrUz,
      required this.mudirNashrRu,
      required this.mudirNashrEng,
      required this.mudirLoyihalarUz,
      required this.mudirLoyihalarRu,
      required this.mudirLoyihalarEng,
      required this.createdAt,
      required this.updatedAt,});

  Depature.fromJson(dynamic json) {
    id = json['id'];
    mudirPhoto = json['mudir_photo'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    nameEng = json['name_eng'];
    informationUz = json['information_uz'];
    informationRu = json['information_ru'];
    informationEng = json['information_eng'];
    mudirName = json['mudir_name'];
    mudirTelephone = json['mudir_telephone'];
    mudirLavozimUz = json['mudir_lavozim_uz'];
    mudirLavozimRu = json['mudir_lavozim_ru'];
    mudirLavozimEng = json['mudir_lavozim_eng'];
    mudirDarajaUz = json['mudir_daraja_uz'];
    mudirDarajaRu = json['mudir_daraja_ru'];
    mudirDarajaEng = json['mudir_daraja_eng'];
    mudirEmail = json['mudir_email'];
    mudirLocation = json['mudir_location'];
    mudirBioUz = json['mudir_bio_uz'];
    mudirBioRu = json['mudir_bio_ru'];
    mudirBioEng = json['mudir_bio_eng'];
    mudirNashrUz = json['mudir_nashr_uz'];
    mudirNashrRu = json['mudir_nashr_ru'];
    mudirNashrEng = json['mudir_nashr_eng'];
    mudirLoyihalarUz = json['mudir_loyihalar_uz'];
    mudirLoyihalarRu = json['mudir_loyihalar_ru'];
    mudirLoyihalarEng = json['mudir_loyihalar_eng'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? mudirPhoto;
  String? nameUz;
  String? nameRu;
  String? nameEng;
  String? informationUz;
  String? informationRu;
  String? informationEng;
  String? mudirName;
  String? mudirTelephone;
  String? mudirLavozimUz;
  String? mudirLavozimRu;
  String? mudirLavozimEng;
  String? mudirDarajaUz;
  String? mudirDarajaRu;
  String? mudirDarajaEng;
  String? mudirEmail;
  String? mudirLocation;
  String? mudirBioUz;
  String? mudirBioRu;
  String? mudirBioEng;
  String? mudirNashrUz;
  String? mudirNashrRu;
  String? mudirNashrEng;
  String? mudirLoyihalarUz;
  String? mudirLoyihalarRu;
  String? mudirLoyihalarEng;
  dynamic createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['mudir_photo'] = mudirPhoto;
    map['name_uz'] = nameUz;
    map['name_ru'] = nameRu;
    map['name_eng'] = nameEng;
    map['information_uz'] = informationUz;
    map['information_ru'] = informationRu;
    map['information_eng'] = informationEng;
    map['mudir_name'] = mudirName;
    map['mudir_telephone'] = mudirTelephone;
    map['mudir_lavozim_uz'] = mudirLavozimUz;
    map['mudir_lavozim_ru'] = mudirLavozimRu;
    map['mudir_lavozim_eng'] = mudirLavozimEng;
    map['mudir_daraja_uz'] = mudirDarajaUz;
    map['mudir_daraja_ru'] = mudirDarajaRu;
    map['mudir_daraja_eng'] = mudirDarajaEng;
    map['mudir_email'] = mudirEmail;
    map['mudir_location'] = mudirLocation;
    map['mudir_bio_uz'] = mudirBioUz;
    map['mudir_bio_ru'] = mudirBioRu;
    map['mudir_bio_eng'] = mudirBioEng;
    map['mudir_nashr_uz'] = mudirNashrUz;
    map['mudir_nashr_ru'] = mudirNashrRu;
    map['mudir_nashr_eng'] = mudirNashrEng;
    map['mudir_loyihalar_uz'] = mudirLoyihalarUz;
    map['mudir_loyihalar_ru'] = mudirLoyihalarRu;
    map['mudir_loyihalar_eng'] = mudirLoyihalarEng;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}