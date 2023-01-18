import Debug "mo:base/Debug";

actor Hello {
  public query func main() : async Text {
    Debug.print("Hello");
    return ":)";
  };
};

