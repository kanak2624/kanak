void main() {
    var obj = new Display(10,20);
    print(obj.x);
    print(obj.y);
}

class Display {
    final int x;
    final int y;

    const Display(this.x,this.y);
}
