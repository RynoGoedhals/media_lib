--  An Import. Says "I want to use this package."
with Ada.Text_IO;

--  What is .adb and .ads
--  .ads is the SPECIFICATION (the 'what'): It lists the types and subprograms a package offers
--  .adb is the BODY (the 'how'): the actual code that does the work.

--  The Main Program
--  procedure NAME is ... begin ... end NAME;
--  NAME has to match file name except with the first letter of words capitalized.
procedure Media_Lib is
   --  Variable declarations, subprograms, and structs are written between the IS and the BEGIN.

   --  Creating Variables
   --  Name : Type := Initial_Value;
   Name : String := "movie.mp4"; 
   Width : Integer := 1920;
   Height : Integer := 1080;

   --  Creating our own Types
   type Width_Type is range 1 .. 16_384; --  Underscore added to numbers to make it more readable (Not Needed)
   type Height_Type is range 1 .. 16_384;

   --  Record (Struct)
   type Media_Info is record
      Path     : String(1 .. 20);
      Width    : Width_Type; --  Using our custom Type.
      Height   : Height_Type;
      Duration : Float; --  Seconds
   end record;

   --  Creating an Object from our Record
   Video : Media_Info :=
   (
      Path     => "movie.mp4           ",  --  Spaces added to pad our string so it reaches the 1 .. 20.
      Width    => 1920,
      Height   => 1080,
      Duration => 120.5
   );

   --  Two types of subprograms
   --  1. Functions (Returns a Value)
   --  2. Procedures (Does not return a Value)

   --  Function (Returns a Value)
   function Aspect_Ratio (Info : Media_Info) return Float is
   begin
      return Float (Info.Width) / Float (Info.Height); --  Explicit Type conversion (Info.Width is an Integer)
   end Aspect_Ratio;

   -- Procedure (Does not return a Value)
   procedure Print_Info (Info : Media_Info) is  --  Parameters are 'in' implicity (Read only inside subprogram). Can be set to 'out' explicitly (subprogram sets it for the caller). 'in out' (subprogram reads and modifies it). Ex. (Info : in Media_Info).
   begin

      --  Printing text to the console
      Ada.Text_IO.Put_Line ("File:   " & Info.Path); --  '&' joins strings.
      Ada.Text_IO.Put_Line ("Width:  " & Width_Type'Image (Info.Width)); --  Type'Image will convert the type to a string so we can display it.
      Ada.Text_IO.Put_Line ("Height: " & Height_Type'Image (Info.Height));

   end Print_Info;

   function Is_HD (Info : Media_Info) return Boolean is
   begin

      return Info.Height >= 720;

   end Is_HD;

begin
   --  Between the BEGIN and END is where statements go. Where the code actually runs.

   --  Calling Procedure
   Print_Info (Video);

   --  Calling Function
   Ada.Text_IO.Put_Line ("HD: " & Boolean'Image (Is_HD (Video)));

end Example.Media_Libexample;

--  To run the program:
--  1. Be in the folder directory
--  2. alr build
--  3. alr run
