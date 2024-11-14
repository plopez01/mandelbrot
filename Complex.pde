class Complex {
  double real;
  double complex;

  Complex(double real, double complex) {
    this.real = real;
    this.complex = complex;
  }

  Complex add(Complex b) {
    double real = this.real + b.real;
    double complex = this.complex + b.complex;

    return new Complex(real, complex);
  }

  Complex add(double n) {
    double real = this.real + n;

    return new Complex(real, complex);
  }

  Complex sub(Complex b) {
    double real = this.real -  b.real;
    double complex = this.complex - b.complex;

    return new Complex(real, complex);
  }

  Complex mul(double scalar) {
    double real = this.real * scalar;
    double complex = this.complex * scalar;

    return new Complex(real, complex);
  }

  Complex mul(Complex b) {
    double real = this.real * b.real - this.complex * b.complex;
    double complex = this.real * b.complex + this.complex * b.real;

    return new Complex(real, complex);
  }
  
  void print(){
    println(real + " " + complex);
  }
}
