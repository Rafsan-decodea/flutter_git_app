class SupportTicketBody {
  late final String _type;
  late final String _subject;
  late final String _description;

  SupportTicketBody(String type, String subject, String description, this._type,
      this._subject, this._description) {
    this._type = type;
    this._subject = subject;
    this._description = description;
  }

  String get type => _type;
  String get subject => _subject;
  String get description => _description;

  SupportTicketBody.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _subject = json['subject'];
    _description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['subject'] = this._subject;
    data['description'] = this._description;
    return data;
  }
}
