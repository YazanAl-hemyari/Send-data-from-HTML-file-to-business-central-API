page 1001111 "IBB TimeSheet Header Api"
{
    
    APIVersion = 'v1.0';
    EntityCaption = 'TimeSheetHeader';
    EntitySetCaption = 'TimeSheetHeaders';
    DelayedInsert = true;
    APIPublisher = 'ibb';
    APIGroup = 'app1';
    PageType = API;
    EntityName = 'timesheetHeader';
    EntitySetName = 'timesheetHeader';
    Extensible = false;
    ODataKeyFields = timesheetId;
    SourceTable = "IBB TimeSheet Header";

    layout
    {
        area(Content)
        {
            group("TimeSheet")
            {
                // field(id; Rec.SystemId)
                // {
                //     ApplicationArea = All;

                // }
                field(timesheetId; rec.TimesheetId)
                {
                    ApplicationArea = All;
                    Caption = 'TimeSheet Employee Name';
                    ToolTip = 'TimeSheet Employee Name';


                }

                field("createdDate"; rec."Created Date")
                {
                    ToolTip = 'Created Date';
                    ApplicationArea = All;
                    Editable = false;


                }
            }

        }
        area(Factboxes)
        {

        }

    }

}