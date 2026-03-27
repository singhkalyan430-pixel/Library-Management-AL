page 50122 "Library Role Center"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Library Admin';
    UsageCategory = Administration;

    layout
    {
        area(RoleCenter)
        {
            part(Dashboard; "Library Dashboard")
            {
                ApplicationArea = All;
            }

            /*part(ChartPart; "Library Chart")
            {
                     ApplicationArea = All;
            }*/
        }
    }

    /*actions
    {
        area(Sections)
        {
            action("Issued Books Report")
            {
                ApplicationArea = All;
                RunObject = report "Issued Books Report";
            }
        }
    }*/
    actions
    {
        area(Sections)
        {
            group("Library Management")
            {
                action("Books")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book List";
                }

                action("Members")
                {
                    ApplicationArea = All;
                    RunObject = Page "Member List";
                }

                action("Book Issue")
                {
                    ApplicationArea = All;
                    RunObject = Page "Book Issue List";
                }

                action("Issued Books Report")
                {
                    ApplicationArea = All;
                    RunObject = Report "Issued Books Report";
                }
            }
        }
    }
}