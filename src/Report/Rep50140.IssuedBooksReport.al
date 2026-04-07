report 50140 "Issued Books Report"
{
    ApplicationArea = All;
    Caption = 'Issued Books Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'IssuedBooksReport.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(BookIssue; "Book Issue")
        {
            column(IssueID; "Issue ID")
            {
            }
            column(BookID; "Book ID")
            {
            }
            column(MemberID; "Member ID")
            {
            }
            column(IssueDate; "Issue Date")
            {
            }
            column(ReturnDate; "Return Date")
            {
            }
            column(DueDate; "Due Date")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
