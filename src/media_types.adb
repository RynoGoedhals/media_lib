with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded; --  'use' allows us to not have to call the entire line

--  Body (Holds the functionality)

package body Media_Types is 

   --  Procedures
   procedure Print_Info (Info : Media_Info) is
   begin

      Ada.Text_IO.Put_Line ("File:   " & To_String (Info.Path)); --  'To_String' is a part of 'Ada.Strings.Unbounded' library
      Ada.Text_IO.Put_Line ("Width:  " & Width_Type'Image (Info.Width));
      Ada.Text_IO.Put_Line ("Height: " & Height_Type'Image (Info.Height));
      Ada.Text_IO.Put_Line ("HD:     " & Boolean'Image (Is_HD(Info)));

   end Print_Info;

   -- Functions
   function Is_HD (Info : Media_Info) return Boolean is
   begin

      return Info.Height >= 720;

   end Is_HD;

end Media_Types;
