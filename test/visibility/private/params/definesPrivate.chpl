private param foo = 14; // Should not be visible outside of definesPrivate
param bar = 20; // Should still be visible when module is used.

proc main() {
  writeln(foo);
  writeln(bar);
}

proc printFoo() {
  writeln(foo);
}
