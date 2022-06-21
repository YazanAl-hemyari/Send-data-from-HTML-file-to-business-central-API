page 1001102 "IBB TimeSheet List"
{
    Caption = 'External TimeSheet List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "IBB TimeSheet Header";
    CardPageId = "IBB TimeSheet Header";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {


                field("TimeSheet Employee Name"; rec."TimesheetId")
                {
                    Caption = 'TimeSheet Employee Name';
                    ToolTip = 'TimeSheet Employee Name';
                    ApplicationArea = All;


                }
                field("Created Date"; rec."Created Date")
                {
                    ToolTip = 'Created Date';
                    ApplicationArea = All;


                }
            }
        }
        area(Factboxes)
        {

        }
    }



}