class DetailsModel {
  int? secId;
  String? count;
  String? description;
  String? reference;
  String? content;

  DetailsModel(
      this.secId, this.count, this.description, this.reference, this.content);

  DetailsModel.fromJson(Map<String, dynamic> json) {
    secId = json['section_id'];
    count = json['count'];
    description = json['description'];
    content = json['content'];
    reference = json['reference'];
  }
}
