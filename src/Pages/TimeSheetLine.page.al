page 1001101 "IBB TimeSheet Line"
{
    Caption = 'External TimeSheet Lines';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "IBB TimeSheet Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Date"; rec.WorkDate)
                {
                    ToolTip = 'Date';
                    ApplicationArea = All;


                }
                field("Week No."; rec."Week No")
                {
                    ToolTip = 'Week No';
                    ApplicationArea = All;
                    Editable = false;


                }

                field("Day"; rec.Day)
                {
                    ToolTip = 'Day';
                    ApplicationArea = All;
                    Editable = false;


                }
                field("Time in"; rec."Time in")
                {
                    ToolTip = 'Time in';
                    ApplicationArea = All;


                }
                field("Time out"; rec."Time out")
                {
                    ToolTip = 'Time out';
                    ApplicationArea = All;


                }
                field("Tasks"; rec.Tasks)
                {
                    MultiLine = true;
                    ToolTip = 'Tasks';
                    ApplicationArea = All;


                }
                field("Hours"; rec.Hours)
                {
                    ToolTip = 'Hours';
                    ApplicationArea = All;
                    Editable = false;


                }
            }
        }

    }

}