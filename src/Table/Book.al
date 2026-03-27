table 50118 "Book"
{
    Caption = 'Book';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Book ID"; Integer)
        {
            Caption = 'Book ID';
            DataClassification = CustomerContent;
        }
        field(2; "Title"; Text[100])
        {
            Caption = 'Title';
            DataClassification = CustomerContent;
        }
        field(3; "Author"; Text[100])
        {
            Caption = 'Author';
            DataClassification = CustomerContent;
        }
        field(4; "Available"; Boolean)
        {
            Caption = 'Available';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }

}