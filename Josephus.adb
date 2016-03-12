--- Example of a ADa program Syntax Highlighting.

-- josephus.adb:  remove every ith member of a circular list

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada;

procedure Josephus is

type String_Pointer is access String;

type Soldier_Type is record
   Name  : String_Pointer;
   Alive : Boolean;
end record;

Max_Number_Of_Soldiers: constant := 100;
Number_Of_Soldiers    : Integer range 0..Max_Number_Of_Soldiers := 0;

-- start with 0 to facilitate modular arithmetic
Soldiers: array (0..Max_Number_Of_Soldiers-1) of Soldier_Type;

procedure Next (Index: in out Integer; Interval: Positive) is
begin
   for I in 1..Interval loop
      loop
        Index := (Index + 1) mod Number_Of_Soldiers;
        exit when Soldiers(Index).Alive;
      end loop;
   end loop;
end Next;

Interval : Integer;
Man      : Integer := Soldiers'First;

begin

-- get interval from the standard input
Integer_Text_IO.Get (Interval);
Text_IO.Skip_Line;
Text_IO.Put ("Skip every ");
Integer_Text_IO.Put (Interval, Width=>1);
Text_IO.Put_Line (" soldiers.");

-- get names (one per line) from the standard input
declare
   Line: String (1..100);
   Length: Integer;
begin
   while not (Text_IO.End_Of_File) loop
      Text_IO.Get_Line (Line, Length);
      Soldiers (Number_Of_Soldiers) := Soldier_Type'(
         Name=>new String'(Line(1..Length)), Alive=>True);
      Number_Of_Soldiers := Number_Of_Soldiers + 1;
   end loop;
end;

for I in 1..Number_Of_Soldiers-1 loop
   Soldiers(Man).Alive := False;
   Text_IO.Put (Soldiers(Man).Name.all);
   Text_IO.Put_Line (" commits suicide.");
   Next (Man, Interval);
end loop;

Text_IO.Put (Soldiers(Man).Name.all);
Text_IO.Put_Line (" is the last.");

end Josephus;
