import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";


actor {
   
    //Challenge 1 : Write a function add that takes two natural numbers n and m and returns the sum.

    public func add(n : Nat, m : Nat) : async Nat{
            return(n + m);
    };

    //Challenge 2 : Write a function square that takes a natural number n and returns the area of a square of length n.

    public func square(n : Nat) : async Nat{
        return(n * n);
    };

    //Challenge 3 : Challenge 3 : Write a function days_to_second that takes a number of days n and returns the number of seconds.

    public func days_to_second(n : Nat) : async Nat{
        return(n * 24 * 60 * 60)
    };

    //challenge 4 Challenge 4 : Write two functions increment_counter & clear_counter .

    
    var counter : Nat = 0;
    
    public func increment_amount (n : Nat): async Nat{
        counter := counter + n;
        return(counter);
    };

    public func clearCounter(): async Nat{
        counter:= 0;
        return(counter);
    };

    //challenge 5

    let a : Bool = true;
    let b : Bool = false;

    public func div(n : Nat, m : Nat) : async Nat {
        return(n / m);
    };

    public func mod(n : Nat, m : Nat) : async Nat {
        return(n % m);
    };

    public func divide(n : Nat, m : Nat) : async Bool {
        let remainder = n % m;
        if(remainder == 0) {
            return (true);
    } else {
        return (false);
    };
    };

    //challenge 6

    private func _divide(n : Nat, m : Nat) : Bool {
        let remainder = n % m;
        if(remainder == 0) {
            return(true)
        } else {
            return (false);
        }
    };
    

    public func is_even(n : Nat) : async Bool {
        if(n % 2 == 0) {
            return (true)
        } else {
            return (false);
        }

    };



    //Challenge 7

    let example_array : [Nat] = [1,2,7,];
    public func sum_of_array(array : [Nat]) : async Nat {
        var counter : Nat = 0;
        for(value in array.vals()) {
            counter := counter + value;
        };
            return (counter);
        };

        //private function

   
    private func print_sum_of_existing_array (array : [Nat]) : Nat {
        var counter : Nat = 0;
        for(value in array.vals()) {
            counter := counter + value;
        };
            return (counter);
    };

    public func test() : async Nat {
        return (print_sum_of_existing_array(example_array));
    };

    //Challenge 8 : Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.

    public func maximum(array : [Nat]) : async Nat {
      if(array.size() == 0) return 0;
    var maximum = array[0];
    for (val in array.vals()){
      if (val >= maximum) {
        maximum := val;
      };
    };
    return(maximum)
  };
    

    //Challenge 9
    public func remove_from_array (listofnumbers : [Nat], n : Nat) : async [Nat] {
        var newarray : [Nat] = Array.filter(listofnumbers, func(m:Nat) : Bool {n != m});
        return (newarray);
    };
    
  

};