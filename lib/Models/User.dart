class ClientUserdetails {
  String? uid;
  String? email;
  String? name;
  String? phone;

  ClientUserdetails({this.uid, this.email, this.name, this.phone});
}

class AdminUserdetails {
  String? uid;

  AdminUserdetails({this.uid});
}

class Userdetails {
  String? uid;
  String? name;
  String? medical;
  String? phone;
  String? email;

  Userdetails({this.uid, this.name, this.medical, this.phone, this.email});

  Userdetails? convert(Future<Userdetails?> uds) {
    if (uds == null)
      return null;
    else {
      return Userdetails(
        uid: uds.then((value) => value!.uid) as String,
        name: uds.then((value) => value!.name) as String,
        medical: uds.then((value) => value!.medical) as String,
        phone: uds.then((value) => value!.phone) as String,
        email: uds.then((value) => value!.email) as String,
      );
    }
  }

  String? getemail() {
    return email;
  }

  String? getname() {
    return name;
  }
}
