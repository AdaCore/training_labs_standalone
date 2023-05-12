package Generic_Swap is

   generic

      type Data_Type is private;

   procedure Swap (Value_1 : in out Data_Type; Value_2 : in out Data_Type);

end Generic_Swap;
