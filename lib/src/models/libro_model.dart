// To parse this JSON data, do
//
//     final libro = libroFromJson(jsonString);

// import 'dart:convert';

class Libros {
  List<Libro> items = [];
  Libros();
  Libros.fromJson(List<dynamic> jsonList) {
    for (var item in jsonList) {
      final libro = new Libro.fromJson(item);
      items.add(libro);
    }
  }
}

class Libro {
  Libro({
    this.id,
    this.title,
    this.author,
    this.content,
    this.contentShort,
    this.publisher,
    this.publisherDate,
    this.pages,
    this.language,
    this.urlDetails,
    this.urlDownload,
    this.cover,
    this.thumbnail,
    this.numComments,
    this.categories,
    this.tags,
  });

  String id;
  String title;
  String author;
  String content;
  String contentShort;
  String publisher;
  String publisherDate;
  String pages;
  String language;
  String urlDetails;
  String urlDownload;
  String cover;
  String thumbnail;
  String numComments;
  List<Category> categories;
  List<Tag> tags;

  factory Libro.fromJson(Map<String, dynamic> json) => Libro(
        id: json["ID"] == null ? null : json["ID"],
        title: json["title"] == null ? null : json["title"],
        author: json["author"] == null ? null : json["author"],
        content: json["content"] == null ? null : json["content"],
        contentShort:
            json["content_short"] == null ? null : json["content_short"],
        publisher: json["publisher"] == null ? null : json["publisher"],
        publisherDate:
            json["publisher_date"] == null ? null : json["publisher_date"],
        pages: json["pages"] == null ? null : json["pages"],
        language: json["language"] == null ? null : json["language"],
        urlDetails: json["url_details"] == null ? null : json["url_details"],
        urlDownload: json["url_download"] == null ? null : json["url_download"],
        cover: json["cover"] == null ? null : json["cover"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        numComments: json["num_comments"] == null ? null : json["num_comments"],
        categories: json["categories"] == null
            ? null
            : List<Category>.from(
                json["categories"].map((x) => Category.fromJson(x))),
        tags: json["tags"] == null
            ? null
            : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "title": title == null ? null : title,
        "author": author == null ? null : author,
        "content": content == null ? null : content,
        "content_short": contentShort == null ? null : contentShort,
        "publisher": publisher == null ? null : publisher,
        "publisher_date": publisherDate == null ? null : publisherDate,
        "pages": pages == null ? null : pages,
        "language": language == null ? null : language,
        "url_details": urlDetails == null ? null : urlDetails,
        "url_download": urlDownload == null ? null : urlDownload,
        "cover": cover == null ? null : cover,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "num_comments": numComments == null ? null : numComments,
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x.toJson())),
        "tags": tags == null
            ? null
            : List<dynamic>.from(tags.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.categoryId,
    this.name,
    this.nicename,
  });

  int categoryId;
  String name;
  String nicename;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        nicename: json["nicename"] == null ? null : json["nicename"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "nicename": nicename == null ? null : nicename,
      };
}

class Tag {
  Tag({
    this.tagId,
    this.name,
    this.nicename,
  });

  int tagId;
  String name;
  String nicename;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        tagId: json["tag_id"] == null ? null : json["tag_id"],
        name: json["name"] == null ? null : json["name"],
        nicename: json["nicename"] == null ? null : json["nicename"],
      );

  Map<String, dynamic> toJson() => {
        "tag_id": tagId == null ? null : tagId,
        "name": name == null ? null : name,
        "nicename": nicename == null ? null : nicename,
      };
}
