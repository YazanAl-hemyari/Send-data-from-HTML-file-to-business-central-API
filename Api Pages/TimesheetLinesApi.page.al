page 1001112 "IBB TimeSheet Lines Api"
{
   APIVersion = 'v1.0';
    EntityCaption = 'TimeSheetLine';
    EntitySetCaption = 'TimeSheetLines';
    DelayedInsert = true;
    APIPublisher = 'ibb';
    APIGroup = 'app1';
    PageType = API;
    EntityName = 'timesheetLine';
    EntitySetName = 'timesheetLines';
    Extensible = false;
    ODataKeyFields = timesheetId;
    SourceTable = "IBB TimeSheet Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;

                }
                 field(timesheetId; Rec.TimesheetId)
                {
                    ApplicationArea = All;

                }
                field("lineno"; rec."Line No")
                {
                    ToolTip = 'Date';
                    ApplicationArea = All;


                }
                field("date"; rec.WorkDate)
                {
                    ToolTip = 'Date';
                    ApplicationArea = All;


                }
                field("weekNo"; rec."Week No")
                {
                    ToolTip = 'Week No';
                    ApplicationArea = All;
                    Editable = false;


                }

                field("way"; rec.Day)
                {
                    ToolTip = 'Day';
                    ApplicationArea = All;


                }
                field("timein"; rec."Time in")
                {
                    ToolTip = 'Time in';
                    ApplicationArea = All;


                }
                field("timeout"; rec."Time out")
                {
                    ToolTip = 'Time out';
                    ApplicationArea = All;


                }
                field("tasks"; rec.Tasks)
                {
                    MultiLine = true;
                    ToolTip = 'Tasks';
                    ApplicationArea = All;


                }
                field("hours"; rec.Hours)
                {
                    ToolTip = 'Hours';
                    ApplicationArea = All;
                    Editable = false;


                }
            }
        }

    }

}