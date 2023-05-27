void main() {
    Set set1 = {10,20,5,100,90,55};
    print(set1);

    set1.addAll([2,33]);
    print(set1);
    
    set1.remove(100);
    print(set1);

    print(set1.length);

    print(set1.runtimeType);

    print(set1.isEmpty);

    print(set1.isNotEmpty);
    
    set1.clear();
    print(set1);
}