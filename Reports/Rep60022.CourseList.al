report 60022 "Course List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Course List.rdlc';

    dataset
    {
        dataitem(DataItem1; 60003)
        {
            column(CodCourse_CourseCab; "Course – Cab"."Cod Course")
            {
                IncludeCaption = true;
            }
            column(CourseName_CourseCab; "Course – Cab".CourseName)
            {
                IncludeCaption = true;
            }
            column(InitialDate_CourseCab; "Course – Cab"."Initial Date")
            {
                IncludeCaption = true;
            }
            column(EndDate_CourseCab; "Course – Cab"."End Date")
            {
                IncludeCaption = true;
            }
            column(Duration_CourseCab; "Course – Cab".Duration)
            {
                IncludeCaption = true;
            }
            column(CodProf_CourseCab; "Course – Cab"."Cod Prof")
            {
                IncludeCaption = true;
            }
            column(ProfName_CourseCab; "Course – Cab".ProfName)
            {
                IncludeCaption = true;
            }
            column(CodClassroom_CourseCab; "Course – Cab"."Cod Classroom")
            {
                IncludeCaption = true;
            }
            column(ClassromName_CourseCab; "Course – Cab"."Classrom Name")
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
        ReportTitle = 'Student List';
    }
    var
        "Course – Cab": Record "Course – Cab";
}

