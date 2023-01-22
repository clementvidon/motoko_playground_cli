import Debug "mo:base/Debug";

actor Ciao {

  func foo() : Text {
    return "Ciao Terminal 1";
  };

  public query func main() : async Text {
    Debug.print(debug_show ("Ciao Terminal 2"));
    return foo();
  };
};
