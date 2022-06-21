page 1001100 "IBB TimeSheet Header"
{
    Caption = 'External TimeSheet';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "IBB TimeSheet Header";

    layout
    {
        area(Content)
        {
            group("TimeSheet")
            {
                field(TimesheetId; rec.TimesheetId)
                {
                    ApplicationArea = All;
                    Caption = 'TimeSheet Employee Name';
                    ToolTip = 'TimeSheet Employee Name';


                }

                /* field("TimeSheet Employee Name"; rec."Created By")
                {
                    ToolTip = 'TimeSheet Employee Name';
                    ApplicationArea = All;
                    ;

                } */
                field("Created Date"; rec."Created Date")
                {
                    ToolTip = 'Created Date';
                    ApplicationArea = All;
                    Editable = false;


                }
            }
            part(Lines; "IBB TimeSheet Line")
            {
                ApplicationArea = All;
                SubPageLink = "TimesheetId" = field("TimesheetId");
            }
        }
        area(Factboxes)
        {

        }

    }

}