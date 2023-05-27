void main() {
    var obj1 = const Display(10,20);
    var obj2 = const Display(10,20); // by using const keyword

    print(obj1 == obj2);
}

class Display {
    final int x;
    final int y;

    const Display(this.x,this.y);
}
