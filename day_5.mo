import Nat8 "mo:base/Nat8";
import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Int "mo:base/Int";
import Char "mo:base/Char";
import Prim "mo:prim";
import Buffer "mo:base/Buffer";

actor {

// Challenge 1 : Write a function is_anonymous that takes no arguments but returns true if the caller is anonymous and false otherwise.

// Challenge 2 : Create an HashMap called favoriteNumber where the keys are Principal and the value are Nat.

// Challenge 3 : Write two functions :

// add_favorite_number that takes n of type Nat and stores this value in the HashMap where the key is the principal of the caller. This function has no return value.
// show_favorite_number that takes no argument and returns n of type ?Nat, n is the favorite number of the person as defined in the previous function or null if the person hasn't registered.
// Challenge 4 : Rewrite your function add_favorite_number so that if the caller has already registered his favorite number, the value in memory isn't modified. This function will return a text of type Text that indicates "You've already registered your number" in that case and "You've successfully registered your number" in the other scenario.

// Challenge 5 : Write two functions

// update_favorite_number
// delete_favorite_number
// Challenge 6 : Write a function deposit_cycles that allow anyone to deposit cycles into the canister. This function takes no parameter but returns n of type Nat corresponding to the amount of cycles deposited by the call.

// Challenge 7 (hard ⚠️) : Write a function withdraw_cycles that takes a parameter n of type Nat corresponding to the number of cycles you want to withdraw from the canister and send it to caller asumming the caller has a callback called deposit_cycles()
// Note : You need two canisters.
// Note 2 : Don't do that in production without admin protection or your might be the target of a cycle draining attack.

// Challenge 8 : Rewrite the counter (of day 1) but this time the counter will be kept accross ugprades. Also declare a variable of type **Nat¨¨ called version_number that will keep track of how many times your canister has been upgraded.

// Challenge 9 : In a new file, copy and paste the functionnalities you've created in challenges 2 to 5. This time the hashmap and all records should be preserved accross upgrades.

// Challenge 10 (optionale) : In autonomy, write a CRUD canister, you can add as much functionnalities as you want, a few examples :

// Anonymous principal rejection.
// Cycle functionnality for registration.
// Admin management.
// Note : Only practice challenge 10 if you wish to, this is optional and it will not be taken into account for any ranking.


}