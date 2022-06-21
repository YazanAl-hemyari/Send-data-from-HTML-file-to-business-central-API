pageextension 1001103 IBBBusinessManagerExt extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(sections)
        {


            group(IBBMyAction)
            {
                Caption = 'External TimeSheet';
                Image = List;
                ToolTip = 'TimeSheet List';
                action(IBBBrand)
                {
                    ApplicationArea = All;
                    Caption = 'External TimeSheet List';
                    Image = Alerts;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "IBB TimeSheet List";
                }




            }

        }
    }



}