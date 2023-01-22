import Debug "mo:base/Debug";

actor Hello {

  func foo() : Text {
    return "Hello Terminal 1";
  };

  public query func main() : async Text {
    Debug.print(debug_show ("Hello Terminal 2"));
    return foo();
  };
};
