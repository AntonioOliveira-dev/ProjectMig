page 60014 "Course Role center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {

            part(Students; 60012)
            {
                Caption = 'Students';
            }
            part(Professors; 60016)
            {
                Caption = 'Professors';
            }

            part(Courses; 60017)
            {
                Caption = 'Courses';
            }
            part("Classroom List"; 60006)
            {
                Caption = 'Classroom List';
            }
            part("Mov.Course"; 60013)
            {
                Caption = 'Mov.Course';
            }

        }
    }

    actions
    {
        area(creation)
        {
            action("New Student")
            {
                Caption = 'New Student';
                Image = NewCustomer;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60000;
                RunPageMode = Create;
            }
            action("New Course")
            {
                Caption = 'New Course';
                Image = NewItem;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                RunObject = Page 60008;
                RunPageMode = Create;
            }
            action("New Professor")
            {
                Caption = 'New Professor';
                Image = NewCustomer;
                Promoted = true;
                PromotedCategory = New;
                RunObject = Page 60001;
                RunPageMode = Create;
            }
            action("New Classroom")
            {
                Caption = 'New Classroom';
                Image = NewItem;
                RunObject = Page 60002;
                RunPageMode = Create;
            }
            action("Course Historic")
            {
                Caption = 'Course Historic';
                Image = Navigate;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 60010;
            }
            action("Import XML Students")
            {
                Caption = 'Import XML Students';
                Image = Import;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Codeunit 60008;
                RunPageMode = Create;
            }
            action("Export XML Course")
            {
                Caption = 'Export XML Course';
                Image = Export;
                RunObject = Codeunit 60006;
            }
            action("Export TXT Classroom")
            {
                Caption = 'Export TXT Classroom';
                Image = Export;
                RunObject = XMLport 60003;
            }
            group(Report)
            {
                Caption = 'Report';
                Image = Document;
                action("Report Student")
                {
                    Caption = 'Report Student';
                    Image = "Report";
                    RunObject = Report 60020;
                }
                action("Report Course List")
                {
                    Caption = 'Report Course List';
                    Image = "Report";
                    RunObject = Report 60022;
                }
                action("Report Course Doc")
                {
                    Caption = 'Report Course Doc';
                    Image = "Report";
                    RunObject = Report 60023;
                }
                action("Report Historic")
                {
                    Caption = 'Report Historic';
                    Image = "Report";
                    RunObject = Report 60024;
                }
                action("Report Professors")
                {
                    Caption = 'Report Professors';
                    Image = "Report";
                    RunObject = Report 60021;
                }
            }
        }
    }
}

