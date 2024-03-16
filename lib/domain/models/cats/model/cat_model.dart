// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatDataModel {
  String id;
  ImageDescription imageDescription;
  CatAttributes attributes;

  CatDataModel({
    required this.id,
    required this.imageDescription,
    required this.attributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageDescription': imageDescription.toMap(),
      'attributes': attributes.toMap(),
    };
  }

  factory CatDataModel.fromMap(Map<String, dynamic> map) {
    return CatDataModel(
      id: map['id'] as String,
      imageDescription: ImageDescription.fromMap(map),
      attributes: CatAttributes.fromMap(map['breeds'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory CatDataModel.fromJson(String source) =>
      CatDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ImageDescription {
  String imageURL;
  int widthImage;
  int heightImage;

  ImageDescription({
    required this.imageURL,
    required this.widthImage,
    required this.heightImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageURL': imageURL,
      'widthImage': widthImage,
      'heightImage': heightImage,
    };
  }

  factory ImageDescription.fromMap(Map<String, dynamic> map) {
    return ImageDescription(
      imageURL: map['url'] as String,
      widthImage: map['width'] as int,
      heightImage: map['height'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageDescription.fromJson(String source) =>
      ImageDescription.fromMap(json.decode(source) as Map<String, dynamic>);
}

class CatAttributes {
  String name;
  String origin;
  String description;
  int intelligence;
  int dogFriendly;

  CatAttributes({
    required this.name,
    required this.origin,
    required this.description,
    required this.intelligence,
    required this.dogFriendly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'origin': origin,
      'description': description,
      'intelligence': intelligence,
      'dogFriendly': dogFriendly,
    };
  }

  factory CatAttributes.fromMap(Map<String, dynamic> map) {
    return CatAttributes(
      name: map['name'] as String,
      origin: map['origin'] as String,
      description: map['description'] as String,
      intelligence: map['intelligence'] as int,
      dogFriendly: map['dog_friendly'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatAttributes.fromJson(String source) =>
      CatAttributes.fromMap(json.decode(source) as Map<String, dynamic>);
}
