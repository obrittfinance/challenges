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
import Animal "animal";
import Custom "custom";
import List "mo:base/List"

actor {

   //Challenge 1

    public type Food = Custom.Food;
    let mexican : Food = {
        dish = "burrito";
        rating = 4;

    };

    public func mexicandish() : async Text {
        return(mexican.dish);
    };

    
    //Challenge 2

    public type Animal = Animal.Animal;
    let jumpy : Animal = {
        species = "Kangaroo";
        energy = 124;
        
        
    };

    var a: Animal = jumpy;

    public func species() : async Text {
        return(jumpy.species);

    };

    public func energy() : async Nat {
        return(a.energy);
    };

    //Challenge 3

    public func gotosleep () : async Nat {

        var tmp : Animal = Animal.animal_sleep(jumpy);
        return (tmp.energy)

    };

    //challenge 4

    public func create_animal_then_takes_a_break(species : Text, energy : Nat) : async Animal {
        var animal : Animal ={
            species = species;
            energy = energy;
        };
        return Animal.animal_sleep(animal);
    };
    
    //Challenge 5

    public type List<Animal> = ?(Animal, List<Animal>);
    var animals: List<Animal> = List.nil<Animal>();

    //Challenge 6

   public func push_animal (rabbit: Animal) : async (){
        animals := List.push(rabbit, animals);
    };
    public func get_animals () : async [Animal] {
        return List.toArray(animals);
    };
