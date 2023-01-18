import Debug "mo:base/Debug";

actor Ciao {
  public query func main() : async Text {
    Debug.print("Ciao");
    return ":(";
  };
};

