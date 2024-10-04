function Leap_Year(year: Integer): boolean;
begin
  Result := (year mod 4 = 0) and (year mod  100 <> 0) or (year mod 400 = 0);
end;

function Date_to_Year(day1, month1, day2, month2: Integer): Integer;
begin
  if month1 > month2 then
    Print($'{day1}.{month1} Ближе к Новому году')
  else if month1 < month2  then
    Print($'{day2}.{month2} Ближе к Новому году')
  else 
    if day1 > day2 then
    Print($'{day1}.{month1} Ближе к Новому году')
  else
    Print($'{day2}.{month2} Ближе к Новому году')
end;

function Col_day(year: Integer): Integer;
begin
  if Leap_Year(year) then
    Result := 366
  else
   Result := 365;
end;

begin
  var year := ReadInteger('Введите год');
  var (day1, month1, day2, month2) := ReadInteger4('Введите две даты');
  Assert(year > 0);
  Assert((day1 in 1..31)and(day2 in 1..31) and(month1 in 1..12) and (month2 in 1..12));
  Println($'Высокосный ли год ?:{Leap_Year(year)}');
  Date_to_Year(day1, month1, day2, month2);
  Println();
  Print($'В {year} году  :{Col_day(year)} дней')
end.