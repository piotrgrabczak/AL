pageextension 50120 ExtendNavigationPane extends "Order Processor Role Center"
{

    actions
    {
        addlast(Sections)
        {
            group("Rewards")
            {
                action("Reward List")
                {
                    RunObject = page "Reward List 2";
                    ApplicationArea = All;
                }
            }
        }
    }
}