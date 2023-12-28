class UserData {
  String _name = "";
  int _age = 0;
  List<String> _sellingReasons;
  String _rent_collect="";

  UserData({ List<String>? sellingReasons, String? rent_collect, String? name, int? age,})
      : _name = name ?? "",
        _age = age ?? 0,
        _rent_collect=rent_collect ?? "",
        _sellingReasons = sellingReasons ?? [];

 String get rent_collect => _rent_collect;

  set rent_collect(String value) {
    _rent_collect = value;
  }


  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  List<String> get sellingReasons => _sellingReasons;

  set sellingReasons(List<String> value) {
    _sellingReasons = value;
  }

  void printUserData() {
    print('Name: $_name');
    print('Age: $_age');
    print('Selling Reasons: $_sellingReasons');
  }
}

