page 50123 "Book Issue Card"
{
    PageType = Card;
    SourceTable = "Book Issue";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("Issue ID"; Rec."Issue ID") { }
                field("Book ID"; Rec."Book ID") { }
                field("Member ID"; Rec."Member ID") { }
                field("Issue Date"; Rec."Issue Date") { }
                field("Return Date"; Rec."Return Date") { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(IssueBook)
            {
                Caption = 'Issue Book';
                Image = Add;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec."Issue ID" = '' then
                        Error('Issue ID is required');

                    if Rec."Book ID" = '' then
                        Error('Select Book first');

                    if Rec."Member ID" = '' then
                        Error('Select Member first');

                    Rec."Issue Date" := Today;

                    // ✅ CORRECT INSERT
                    Rec.Insert(true);

                    Message('Book Issued Successfully');
                end;
            }
            action(ReturnBook)
            {
                Caption = 'Return Book';
                Image = Return;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec."Issue ID" = '' then
                        Error('Issue ID is required');

                    if Rec."Return Date" <> 0D then
                        Error('Book already returned');

                    Rec."Return Date" := Today;

                    // ✅ CORRECT UPDATE
                    Rec.Modify(true);

                    Message('Book Returned Successfully!!');
                end;
            }
        }
    }
}