void main() {
     
    List<String> name = ['Asif Taj','Kasif Taj','Karan'];
    name.add('Siddhi Sharma');
    name.removeAt(1);
    
    for (int i=0;i<name.length;i++) {
        print('my name is ${name[i]}');
    };
}
