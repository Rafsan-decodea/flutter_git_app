class Category {
  late int _id;
  late String _name;
  late String _slug;
  late String _icon;
  late int _parentId;
  late int _position;
  late String _createdAt;
  late String _updatedAt;
  late List<SubCategory> _subCategories;

  Category(
      {required int id,
      required String name,
      required String slug,
      required String icon,
      required int parentId,
      required int position,
      required String createdAt,
      required String updatedAt,
      required List<SubCategory> subCategories}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._icon = icon;
    this._parentId = parentId;
    this._position = position;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._subCategories = subCategories;
  }

  int get id => _id;
  String get name => _name;
  String get slug => _slug;
  String get icon => _icon;
  int get parentId => _parentId;
  int get position => _position;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  List<SubCategory> get subCategories => _subCategories;

  Category.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _icon = json['icon'];
    _parentId = json['parent_id'];
    _position = json['position'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['childes'] != null) {
      _subCategories = [];
      json['childes'].forEach((v) {
        _subCategories.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['icon'] = this._icon;
    data['parent_id'] = this._parentId;
    data['position'] = this._position;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    if (this._subCategories != null) {
      data['childes'] = this._subCategories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategory {
  late int _id;
  late String _name;
  late String _slug;
  late String _icon;
  late int _parentId;
  late int _position;
  late String _createdAt;
  late String _updatedAt;
  late List<SubSubCategory> _subSubCategories;

  SubCategory(
      {required int id,
      required String name,
      required String slug,
      required String icon,
      required int parentId,
      required int position,
      required String createdAt,
      required String updatedAt,
      required List<SubSubCategory> subSubCategories}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._icon = icon;
    this._parentId = parentId;
    this._position = position;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._subSubCategories = subSubCategories;
  }

  int get id => _id;
  String get name => _name;
  String get slug => _slug;
  String get icon => _icon;
  int get parentId => _parentId;
  int get position => _position;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  List<SubSubCategory> get subSubCategories => _subSubCategories;

  SubCategory.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _icon = json['icon'];
    _parentId = json['parent_id'];
    _position = json['position'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['childes'] != null) {
      _subSubCategories = [];
      json['childes'].forEach((v) {
        _subSubCategories.add(new SubSubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['icon'] = this._icon;
    data['parent_id'] = this._parentId;
    data['position'] = this._position;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    if (this._subSubCategories != null) {
      data['childes'] = this._subSubCategories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubSubCategory {
  late int _id;
  late String _name;
  late String _slug;
  late String _icon;
  late int _parentId;
  late int _position;
  late String _createdAt;
  late String _updatedAt;

  SubSubCategory(
      {required int id,
      required String name,
      required String slug,
      required String icon,
      required int parentId,
      required int position,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._name = name;
    this._slug = slug;
    this._icon = icon;
    this._parentId = parentId;
    this._position = position;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get name => _name;
  String get slug => _slug;
  String get icon => _icon;
  int get parentId => _parentId;
  int get position => _position;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  SubSubCategory.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _icon = json['icon'];
    _parentId = json['parent_id'];
    _position = json['position'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['slug'] = this._slug;
    data['icon'] = this._icon;
    data['parent_id'] = this._parentId;
    data['position'] = this._position;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
