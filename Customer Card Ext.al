pageextension 50108 "Customer Card Ext" extends "Customer Card"
{
    layout
    {   
        addlast(General)
        {
            field("Reward ID";"Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;
                RunObject = page "Reward List 2";
            }
        }
    }
}