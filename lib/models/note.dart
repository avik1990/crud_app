class Note {
  int? _id;
  String? _title;
  String? _description;
  String? _date;
  int? _priority;

  Note(this._title,this._date,this._priority,[this._description]);

  Note.withID(this._id,this._title,this._date,this._priority,[this._description]); //Named Constructor

  int get priority => _priority!;

  set priority(int value) {
    _priority = value;
  }

  String get date => _date!;

  set date(String value) {
    _date = value;
  }

  String get description => _description!;

  set description(String value) {
   // if(value.length  <= 400) {
      _description = value;
   // }
  }

  String get title => _title!;

  set title(String value) {
   // if(value.length<=255) {
      _title = value;
   // }
  }

  int? get id => _id;

  // convert a Note object into  a Map object. As SQFLite plugin deals with Map Object
  // dynamic keyword defies both int or string or other data type
  Map<String,dynamic> toMap() {
    var map= <String,dynamic>{};
      if(_id !=null){   /// if id is null thn the value will be inserted otherwise it will update
        map['id']= _id;
      }
      map['title']=_title;
      map['description']=_description;
      map['date']=_date;
      map['priority']=_priority;
    return map;
  }

  // Extract a note object from a Map Object
  Note.fromMap(Map<String,dynamic> map) {
    _id=map['id'];
    _title=map['title'];
    _description=map['description'];
    _date=map['date'];
    _priority=map['priority'];
  }
}