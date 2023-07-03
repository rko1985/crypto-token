import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";


actor Token {
    var owner : Principal = Principal.fromText("324ss-7avi7-5i4p5-53gjt-wj7ry-bvale-q7xg2-ktnbi-c7fb3-yd7sg-7ae");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "DANG";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal) : async Nat {

        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result;
        };
        
        return balance;
    }
};