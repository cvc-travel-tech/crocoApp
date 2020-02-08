class ServicesModelBlog {
  int id;
  String title;
  String mainImage;
  String innerImage;
  String description;
  String createdAt;
  String updatedAt;

  ServicesModelBlog(
      {this.id,
      this.title,
      this.mainImage,
      this.innerImage,
      this.description,
      this.createdAt,
      this.updatedAt});

  ServicesModelBlog.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    mainImage = json['mainImage'];
    innerImage = json['innerImage'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['mainImage'] = this.mainImage;
    data['innerImage'] = this.innerImage;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
