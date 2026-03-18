table 50119 "Book Issue"
{
    Caption = 'Book Issue';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Issue ID"; Integer)
        {
            Caption = 'Issue ID';
            DataClassification = CustomerContent;
        }
        field(2; "Book ID"; Integer)
        {
            Caption = 'Book ID';
            DataClassification = CustomerContent;
        }
        field(3; "Member ID"; Integer)
        {
            Caption = 'Member ID';
            DataClassification = CustomerContent;
        }
        field(4; "Issue Date"; Date)
        {
            Caption = 'Issue Date';
            DataClassification = CustomerContent;
        }
        field(5; "Return Date"; Date)
        {
            Caption = 'Return Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Issue ID")
        {
            Clustered = true;
        }
    }
}