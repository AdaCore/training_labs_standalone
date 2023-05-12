with Ada.Text_IO;
with Generic_Swap;
with Generic_Sort;

procedure Genericity_Text_Main is
   V1 : Integer := 42;
   V2 : Integer := 43;

   F1 : Float := 42.0;
   F2 : Float := 43.0;

   procedure Swap is new Generic_Swap.Swap (Integer);
   procedure Swap is new Generic_Swap.Swap (Float);

   function To_String (I : Integer) return String is (Integer'Image (I));

   type Integer_List is array (Integer range <>) of Integer;

   package Sort_Integers is new Generic_Sort
     (Element_Type => Integer, List_Type => Integer_List,
      Compare      => Standard."<", To_String => To_String);
   use Sort_Integers;

   T : Integer_List := (2, 7, 1, 9, 40, -1);
begin
   Ada.Text_IO.Put_Line
     ("V1 :=" & Integer'Image (V1) & " V2 :=" & Integer'Image (V2));
   Swap (V1, V2);
   Ada.Text_IO.Put_Line
     ("V1 :=" & Integer'Image (V1) & " V2 :=" & Integer'Image (V2));

   --  Use the generic swap to swap two floats
   Ada.Text_IO.Put_Line
     ("F1 :=" & Float'Image (F1) & " F2 :=" & Float'Image (F2));
   Swap (F1, F2);
   Ada.Text_IO.Put_Line
     ("F1 :=" & Float'Image (F1) & " F2 :=" & Float'Image (F2));

   Display_List (T);
   --  Replace by a generic sort procedure
   Sort (T);
   Display_List (T);
end Genericity_Text_Main;
