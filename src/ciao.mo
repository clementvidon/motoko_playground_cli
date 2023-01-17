import Debug "mo:base/Debug";

actor Ciao {
  public query func ciao() : async Text {
    Debug.print("Ciao");
    return ":(";
  };
};

