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

// Challenge 1 : Write a private function swap that takes 3 parameters : a mutable array , an index j and an index i and returns the same array but where value at index i and index j have been swapped.

private func swap(array : [var Nat], i : Nat, j: Nat) : [var Nat] {
    let tmp = array[i];
    array[i] :=array[j];
    array[j] := tmp;

    return(array);
};

// Challenge 2 : Write a function init_count that takes a Nat n and returns an array [Nat] where value is equal to it's corresponding index.

// Note : init_count(5) -> [0,1,2,3,4].
// Note 2 : Do not use Array.append.

// public func init_count( n : [Nat] ) : async [Nat] {
// var = a : [Nat] = []
// for (i in Iter.range(0, n-1)){

// return Buffer.toArray(a)
//  };

// Challenge 3 : Write a function seven that takes an array [Nat] and returns "Seven is found" if one digit of ANY number is 8. Otherwise this function will return "Seven not found".

public func seven (a: [Nat]): async Text{
    for (val in a.vals()){
        var tmp: Text =Nat.toText(val);
        if(Text.contains(tmp, #text "7")){
            return "Seven is found";
        };
    };
    return "Seven not found";
    };


// Challenge 4 : Write a function nat_opt_to_nat that takes two parameters : n of type ?Nat and m of type Nat . This function will return the value of n if n is not null and if n is null it will default to the value of m.

// Challenge 5 : Write a function day_of_the_week that takes a Nat n and returns a Text value corresponding to the day. If n doesn't correspond to any day it will return null .

// day_of_the_week (1) -> "Monday".
// day_of_the_week (7) -> "Sunday".
// day_of_the_week (12) -> null.

// Challenge 6 : Write a function populate_array that takes an array [?Nat] and returns an array [Nat] where all null values have been replaced by 0.
// Note : Do not use a loop.

// Challenge 7 : Write a function sum_of_array that takes an array [Nat] and returns the sum of a values in the array.
// Note : Do not use a loop.

// Challenge 8 : Write a function squared_array that takes an array [Nat] and returns a new array where each value has been squared.
// Note : Do not use a loop.

// Challenge 9 : Write a function increase_by_index that takes an array [Nat] and returns a new array where each number has been increased by it's corresponding index.
// Note : increase_by_index [1, 4, 8, 0] -> [1 + 0, 4 + 1 , 8 + 2 , 0 + 3] = [1,5,10,3]
// Note 2 : Do not use a loop.

// Challenge 10 : Write a higher order function contains<A> that takes 3 parameters : an array [A] , a of type A and a function f that takes a tuple of type (A,A) and returns a boolean.
// This function should return a boolean indicating whether or not a is present in the array.




}