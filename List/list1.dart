void main() {
    List<int> age = [1,2,3,4,5,6,7,8]; // initialise
    List<String> name = ['Asif Taj','Kasif Taj','Karan'];
    List<bool> boleanList = [true,false,true];
    print(age[4]);  //print
    print(age[5]);
    print(age.length); //length
    print(name.length); 

    for(int i=0;i < age.length;i++ ){  //loop
        print('age ${age[i]}');
    }
    for(int j=0;j < name.length;j++ ){  //loop
        print('name ${name[j]}');
    }
}

    