table 1001101 "IBB TimeSheet Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(100; Id; Guid)
        {

        }
        field(1; timesheetId; Code[50])
        {


            DataClassification = CustomerContent;
        }
        field(2; "WorkDate"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(3; "Day"; Text[31])
        {
            // OptionMembers = Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
            DataClassification = CustomerContent;
        }
        field(4; "Time in"; Time)
        {
            DataClassification = CustomerContent;
        }
        field(5; "Time out"; Time)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Tasks"; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(7; "Hours"; Duration)
        {
            DataClassification = CustomerContent;
        }
        field(8; "Line No"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(9; "Week No"; Integer)
        {
            DataClassification = CustomerContent;
        }



    }

    keys
    {
        key(Key1; timesheetId, "Line No")
        {
            Clustered = true;
        }
    }


    var
        DateForWeek: Record Date;
    //DateForWeek2: Record Date;
    //HoursSum: Decimal;

    trigger OnInsert()
    begin
        Id := CreateGuid();

    end;

    trigger OnModify()
    begin
        if DateForWeek.Get(DateForWeek."Period Type"::Date, WorkDate) then
            day := DateForWeek."Period Name";

        "Week No" := DATE2DWY(WorkDate, 2);
        Hours := "Time out" - "Time in";








    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}