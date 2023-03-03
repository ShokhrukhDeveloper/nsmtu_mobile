class AppUrls {
  // static baseURL = "http://127.0.0.1:8000/api";
  static const String baseURL = "https://admin.nsumt.uz/api";
  // static baseURL = "https://admin.nsmtu.uz/api";
  static const String visitorDetails = "$baseURL/getvisitor";
  static const String allSlider = "$baseURL/allslider";
  static const String allCategory = "$baseURL/allcategory";
  static const String allVerCategory = "$baseURL/allvercategory";
  static const String allInfoMain = "$baseURL/allinfo";
  static const String allVerInfo = "$baseURL/allverinfo";
  static const String allKafedralar = "$baseURL/allkafedralar";
  static const String allRahbariyat = "$baseURL/rahbariyat";
  static const String allYangiliklar = "$baseURL/yangiliklar";
  static const String allFakultet = "$baseURL/fakultetlar";
  static const String allBolim = "$baseURL/bolim";
  static String kafedralarById(id) {
    return "$baseURL/allkafedralarbyid/$id";
  }

  static fakultetlarById(id) {
    return "$baseURL/fakultetlar/$id";
  }

  static bolimlarById(id) => "$baseURL/bolim/$id";

  static rahbariyatDetalById(id) => "$baseURL/rahbariyat/$id";

  static yangiliklarById(id) => "$baseURL/yangiliklar/$id";

  static infoListBySubCategory(category, subcategory) =>
      "$baseURL/infolistbysubcategory/$category/$subcategory";

  static verInfoListBySubCategory(vercategory, versubcategory) =>
      "$baseURL/verinfolistbysubcategory/$vercategory/$versubcategory";
}
