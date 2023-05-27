void main() {
    List<int> age = [1,2,3]; // initialise
    List<String> name = ['Asif Taj','Kasif Taj','Karan'];
    List<bool> boleanList = [true,false,true];
    for(int i=0;i < name.length;i++ ){ 
        print('my name is ${name[i]} and age is ${age[i]} my lucky ${boleanList[i]}');
    }
}