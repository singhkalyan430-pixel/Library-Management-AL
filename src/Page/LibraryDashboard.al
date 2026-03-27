page 50121 "Library Dashboard"
{
    PageType = CardPart;
    ApplicationArea = All;
    Caption = 'Library Dashboard';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Total Issued Books"; TotalIssued)
                {
                    ApplicationArea = All;
                }

                field("Returned Books"; ReturnedBooks)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        TotalIssued: Integer;
        ReturnedBooks: Integer;

    trigger OnOpenPage()
    var
        IssueRec: Record "Book Issue";
    begin
        // Issued (not returned)
        IssueRec.SetRange("Return Date", 0D);
        TotalIssued := IssueRec.Count;

        // Returned
        IssueRec.Reset();
        IssueRec.SetFilter("Return Date", '<>%1', 0D);
        ReturnedBooks := IssueRec.Count;
    end;
}