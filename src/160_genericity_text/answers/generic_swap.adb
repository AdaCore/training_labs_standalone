package body Generic_Swap is

   procedure Swap (Value_1 : in out Data_Type; Value_2 : in out Data_Type) is
      Tmp : Data_Type;
   begin
      Tmp     := Value_1;
      Value_1 := Value_2;
      Value_2 := Tmp;
   end Swap;

end Generic_Swap;
