table 1001100 "IBB TimeSheet Header"
{
    DataClassification = CustomerContent;
    DrillDownPageID = "User Setup";
    LookupPageID = "User Setup";


    fields
    {

        field(1; TimesheetId; Code[50])
        {

            DataClassification = CustomerContent;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("TimesheetId");
            end;


        }
        /*   field(2; "Created By"; Code[50])
          {
              DataClassification = CustomerContent;
              //TableRelation = User."User Name";


          } */

        field(3; "Created Date"; Date)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; TimesheetId)
        {
            Clustered = true;
        }
    }



    trigger OnInsert()
    begin
        //"Created By" := UserId + ' TimeSheet';
        "Created Date" := Today;

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}