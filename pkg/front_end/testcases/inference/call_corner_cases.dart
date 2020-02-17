// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*@testedFeatures=inference*/
library test;

class A {
  int call() => 0;
}

class B {
  A get call => new A();
}

class D {
  A fieldA = new A();
  A get getA => new A();
  B fieldB = new B();
  B get getB => new B();
}

test() {
  var /*@ type=int* */ callA = new A() /*@target=A::call*/ ();
  var /*@ type=int* */ callFieldA =
      new D(). /*@target=D::fieldA*/ /*@target=A::call*/ fieldA();
  var /*@ type=int* */ callGetA =
      new D(). /*@target=D::getA*/ /*@target=A::call*/ getA();
  var /*@ type=dynamic */ callFieldB = new D(). /*@target=D::fieldB*/ fieldB();
  var /*@ type=dynamic */ callGetB = new D(). /*@target=D::getB*/ getB();
}

main() {}
