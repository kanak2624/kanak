void main() {
    var obj1 = new Display(10,20);
    var obj2 = new Display(10,20); // by using new keyword

    print(obj1 == obj2);
}

class Display {
    final int x;
    final int y;

    const Display(this.x,this.y);
}
