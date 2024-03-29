report 60023 "Course doc"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Course doc.rdlc';

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
            dataitem(DataItem11; 60004)
            {
                column(CodStudent_CourseLine; "Course-Line"."Cod Student")
                {
                    IncludeCaption = true;
                }
                column(StudentName_CourseLine; "Course-Line"."Student Name")
                {
                    IncludeCaption = true;
                }
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
        ReportTitle = 'Course Report';
    }
    var
        "Course – Cab": Record "Course – Cab";
        "Course-Line": Record "Course-Line";
}

