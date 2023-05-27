void main(){
    var obj = A.namedconst(); //Named Constructor
    var obj2 = A.type2();
}
class A{
    A.namedconst(){
        print('Named Constructor'); // Multiple 
    }

    A.type2(){
        print('Type 2');
    }
    
}