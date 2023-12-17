class UserModel{



  final String? id;
  final String? firstName;
   final String? secondName;
    final String? email;
     final String? phoneNo;
      final String? password;
      const UserModel({
        this.id,
        required this.firstName,  
        required this.secondName,
        required this.email,
        required this.password,
        required this.phoneNo,




      });

      toJson(){
        return{
          "FirstName":firstName,
          "SecondName":secondName,
           "Email":email,
            "Phone":phoneNo,
             "Password":password,

        };
      }


}