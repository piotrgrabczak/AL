table 50105 "Reward Table"
{
    fields
    {
        field(1; "Reward ID"; Code[30])
        {
        }
        field(2; Description; Text[250])
        {
            NotBlank = true;
            
        }
        field(3; "Discount Percentage"; Decimal)
        {
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
        field(4; "Starting Date"; Date)
        {
            trigger OnValidate() begin
                IF "Starting Date" < WorkDate then
                    Error('Starting date cannot be earlier than currently date: %1',WorkDate);
            end;
        }
        field(5; Comment; Text[30])
        {
            trigger OnValidate() begin
                IF xRec.Comment <> rec.Comment then
                    Message('You have changed the comment %1',rec.Comment); 
            end;
        }
    }
    keys
    {
                key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }
}