void main() {
    var obj = A();
    obj.x = 10; //default setter
    print(obj.x); // default getter
}
class A {
    var x;
}