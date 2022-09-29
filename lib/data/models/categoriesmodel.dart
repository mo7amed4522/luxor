// ignore_for_file: non_constant_identifier_names, unnecessary_this, prefer_collection_literals

class CategoriesModel{
  String? cat_id;
  String? cat_name;
  String? cat_name_ar;
  String? cat_image;
  String? cate_dataTime;

  CategoriesModel({
    this.cat_id,this.cat_name,this.cat_name_ar,this.cat_image,this.cate_dataTime
  });

  CategoriesModel.fromJson(Map<String,dynamic> json){
    cat_id = json['cat_id'];
    cat_name = json['cat_name'];
    cat_name_ar = json['cat_name_ar'];
    cat_image = json['cat_image'];
    cate_dataTime = json['cate_dataTime'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['cat_id'] = this.cat_id;
    data['cat_name'] = this.cat_name;
    data['cat_name_ar'] = this.cat_name_ar;
    data['cat_image']= this.cat_image;
    data['cate_dataTime']=this.cate_dataTime;
    return data; 
  }
}