import 'user/userInfo.dart';

class DB {
    void ShowUser() {
        print("userName");
    }
}
void main() {
    var obj = new DB();
    var objuser = new UserInfo();
    objuser.User();
    if(objuser.getUser()){
        print("login");
    }
    obj.ShowUser();
}