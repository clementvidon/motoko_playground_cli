import Debug "mo:base/Debug";

actor Hello {
  public query func hello() : async Text {
    Debug.print("Hello");
    return ":)";
  };
};

