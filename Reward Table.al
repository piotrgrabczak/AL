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
                IF "Starting Date" < Today then
                    Error('Starting date cannot be earlier than currently date: %1',Today);
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