page 50120 "Book Issue List"
{

    Caption = 'Book Issue List';
    PageType = List;
    SourceTable = "Book Issue";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Issue ID"; Rec."Issue ID")
                {
                }
                field("Book ID"; Rec."Book ID")
                {
                }
                field("Member ID"; Rec."Member ID")
                {
                }
                field("Issue Date"; Rec."Issue Date")
                {
                }
                field("Return Date"; Rec."Return Date")
                {
                }
            }
        }
    }

}