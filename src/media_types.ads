with Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

--  Front facing (declaring only)

package Media_Types is

   --  Creating our own Types
   type Width_Type is range 1 .. 16_384;
   type Height_Type is range 1 .. 16_384;

   --  Records
   type Media_Info is record
      Path     : Ada.Strings.Unbounded.Unbounded_String; --  Allows for an unfixed length for the string
      Width    : Width_Type;
      Height   : Height_Type;
      Duration : Float; --  Seconds
   end record;

   --  Containers
   package Media_Vectors is new Ada.Containers.Vectors  --  Creating an empty container for us to customize. Customizing it is called 'Instantiation'
   (
      Index_Type   => Positive,                         --  'Positive' means it starts at 1 and goes up. 'Natural' starts at 0 and goes up.
      Element_Type => Media_Info                        --  This vector will hold the Media_Info records.
   );

   subtype Media_List is Media_Vectors.Vector;          --  Shortening the name 'Media_Vectors.Vector' to 'Media_List'

   --  Procedures
   procedure Print_Info (Info : Media_Info);
   
   --  Functions
   function Is_HD (Info : Media_Info) return Boolean;

end Media_Types;
