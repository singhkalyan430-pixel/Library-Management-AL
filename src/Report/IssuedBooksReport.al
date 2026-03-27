report 50140 "Issued Books Report"
{
    Caption = 'Issued Books Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(BookIssue; "Book Issue")
        {
            column(IssueID; "Issue ID") { }
            column(BookID; "Book ID") { }
            column(MemberID; "Member ID") { }
            column(IssueDate; "Issue Date") { }
            column(ReturnDate; "Return Date") { }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Group)
                {
                }
            }
        }
    }

    /*rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'IssuedBooksReport.rdl';
        }
    }*/
}