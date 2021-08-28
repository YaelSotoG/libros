// To parse this JSON data, do
//
//     final libros = librosFromMap(jsonString);

import 'dart:convert';

class Libros {
  Libros({
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
    this.urlReadOnline,
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
  String urlReadOnline;
  String cover;
  String thumbnail;
  String numComments;
  List<dynamic> categories;
  List<dynamic> tags;

  factory Libros.fromJson(String str) => Libros.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Libros.fromMap(Map<String, dynamic> json) => Libros(
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
        urlReadOnline:
            json["url_read_online"] == null ? null : json["url_read_online"],
        cover: json["cover"] == null ? null : json["cover"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        numComments: json["num_comments"] == null ? null : json["num_comments"],
        categories: json["categories"] == null
            ? null
            : List<dynamic>.from(json["categories"].map((x) => x)),
        tags: json["tags"] == null
            ? null
            : List<dynamic>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
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
        "url_read_online": urlReadOnline == null ? null : urlReadOnline,
        "cover": cover == null ? null : cover,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "num_comments": numComments == null ? null : numComments,
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x)),
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
      };
}
