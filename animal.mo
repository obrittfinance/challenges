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

module {

public type Animal = {

species : Text;
energy : Nat;

};


    public func animal_sleep(a : Animal) : Animal {
    let animal : Animal = {
        species = a.species;
        energy = a.energy + 10;
    };
        return animal;

    };

    }
    
    

        
