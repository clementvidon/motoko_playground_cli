import Debug "mo:base/Debug";

func foo() : Text {
  return "Foo";
};

var bar : Nat = 42;

Debug.print(debug_show (foo(), bar));
