class Author {
  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  String? downloadUrl;

  Author({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: json['id']?.toString(),
      author: json['author'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      downloadUrl: json['download_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author,
      'width': width,
      'height': height,
      'url': url,
      'download_url': downloadUrl,
    };
  }
}
