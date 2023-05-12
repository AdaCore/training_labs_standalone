with Ada.Text_IO;
with Swaps; use Swaps;
with Sorts; use Sorts;

procedure Genericity_Text_Main is
   V1 : Integer := 42;
   V2 : Integer := 43;

   T  : Integer_List := (2, 7, 1, 9, 40, -1);
begin
   Ada.Text_IO.Put_Line ("V1 :=" & Integer'Image (V1) &
                         " V2 :=" & Integer'Image (V2));
   Swap (V1, V2);
   Ada.Text_IO.Put_Line ("V1 :=" & Integer'Image (V1) &
                         " V2 :=" & Integer'Image (V2));

   --  Use the generic swap to swap two floats
   Display_List (T);
   --  Replace by a generic sort procedure
   Sort (T);
   Display_List (T);
end Genericity_Text_Main;
