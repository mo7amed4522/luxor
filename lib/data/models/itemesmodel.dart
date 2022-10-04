// ignore_for_file: unused_local_variable, prefer_collection_literals, unnecessary_this

class ItemsModel{
  String? itemsid;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemDescAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount;
  String? itemsDate;
  String? itemsCat;
  String? catId;
  String? catName;
  String? catNameAr;
  String? catImage;
  String? cateDataTime;

  ItemsModel({
    this.itemsid,
    this.itemsName,
    this.itemsNameAr,
    this.itemsDesc,
    this.itemsImage,
    this.itemsCount,
    this.itemsActive,
    this.itemsPrice,
    this.itemsDiscount,
    this.itemsDate,
    this.itemsCat,
    this.itemDescAr,
    this.catId,
    this.catName,
    this.catNameAr,
    this.catImage,
    this.cateDataTime,
  });

   ItemsModel.fromJson(Map<String,dynamic> json){
    itemsid = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemDescAr = json['item_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
    catId = json['cat_id'];
    catName = json['cat_name'];
    catNameAr = json['cat_name_ar'];
    catImage = json['cat_image'];
    cateDataTime = json['cate_dataTime'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['items_id']= this.itemsid;
    data['items_name']= this.itemsName;
    data['items_name_ar']= this.itemsNameAr;
    data['items_desc']= this.itemsDesc;
    data['item_desc_ar']= this.itemDescAr;
    data['items_image']= this.itemsImage;
    data['items_count']= this.itemsCount;
    data['items_active']= this.itemsActive;
    data['items_price']= this.itemsPrice;
    data['items_discount']= this.itemsDiscount;
    data['items_date']= this.itemsDate;
    data['items_cat']= this.itemsCat;
    data['cat_id']= this.catId;
    data['cat_name']= this.catName;
    data['cat_name_ar']= this.catNameAr;
    data['cat_image']= this.catImage;
    data['cate_dataTime']= this.cateDataTime;
    return data;
  }
}