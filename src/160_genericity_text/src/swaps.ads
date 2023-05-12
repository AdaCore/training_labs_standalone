-- Once the generic swap package is defined, this package could be
-- replaced by a generic instance

package Swaps is
   procedure Swap (Value_1 : in out Integer; Value_2 : in out Integer);
end Swaps;
