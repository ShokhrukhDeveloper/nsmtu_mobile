class ImageSlide {
  ImageSlide({
      this.id, 
      this.title, 
      this.sliderImg, 
      this.createdAt, 
      this.updatedAt,});

  ImageSlide.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    sliderImg = json['slider_img'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? title;
  String? sliderImg;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['slider_img'] = sliderImg;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}