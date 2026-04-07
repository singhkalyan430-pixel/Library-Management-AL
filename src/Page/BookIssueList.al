page 50120 "Book Issue List"
{

    Caption = 'Book Issue List';
    PageType = List;
    SourceTable = "Book Issue";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Book Issue Card";

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
                var
                    NewIssue: Record "Book Issue";
                begin
                    if Rec."Book ID" = '' then
                        Error('Select Book first');

                    if Rec."Member ID" = '' then
                        Error('Select Member first');

                    NewIssue.Init();
                    NewIssue."Book ID" := Rec."Book ID";
                    NewIssue."Member ID" := Rec."Member ID";
                    NewIssue."Issue Date" := Today;

                    NewIssue.Insert();

                    Message('Book issued: %1', NewIssue."Issue ID");
                end;
            }
        }
    }
}