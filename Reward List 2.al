page 50106 "Reward List 2"
{
    PageType = List;
    SourceTable = "Reward Table";
    CardPageId = "Reward Card 2";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}