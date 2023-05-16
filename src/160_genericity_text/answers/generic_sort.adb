with Ada.Text_IO;
with Generic_Swap;

package body Generic_Sort is

   procedure Sort (List : in out List_Type) is
      Idx_Min : Integer;
      procedure Swap is new Generic_Swap.Swap (Data_Type => Element_Type);
   begin

      for Current_Idx in List'First .. List'Last - 1 loop
         Idx_Min := Current_Idx;

         for Scan_Idx in Current_Idx + 1 .. List'Last loop
            if Compare (List (Scan_Idx), List (Idx_Min)) then
               Idx_Min := Scan_Idx;
            end if;
         end loop;

         if Current_Idx /= Idx_Min then
            Swap (List (Current_Idx), List (Idx_Min));
         end if;
      end loop;
   end Sort;

   procedure Display_List (List : List_Type) is
   begin
      Ada.Text_IO.Put ("(");
      for I in List'First .. List'Last loop
         Ada.Text_IO.Put (To_String (List (I)));
         if I /= List'Last then
            Ada.Text_IO.Put (",");
         end if;
      end loop;

      Ada.Text_IO.Put (")");
      Ada.Text_IO.New_Line;
   end Display_List;

end Generic_Sort;
