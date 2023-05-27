void main() {
    List<String> name = ['Asif Taj','Kasif Taj','Karan'];
    List<bool> boleanList = [true,false,true];
    dynamic data = [1,'Asif Taj', 20.34,true];
    for (int i=0;i<data.length;i++) {
        print('my name is ${data[i]}');
    }
}