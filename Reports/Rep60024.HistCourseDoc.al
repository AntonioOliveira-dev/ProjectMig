report 60024 "Hist Course Doc"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Hist Course Doc.rdlc';
    WordLayout = './Hist Course Doc.docx';

    dataset
    {
        dataitem(DataItem1; 60006)
        {
            //The property 'DataItemTableView' shouldn't have an empty value.
            //DataItemTableView = '';

            column(CodCourse_HisCourseCab; "His.Course – Cab"."Cod Course")
            {
                IncludeCaption = true;
            }
            column(CourseName_HisCourseCab; "His.Course – Cab"."Course Name")
            {
                IncludeCaption = true;
            }
            column(InitialDate_HisCourseCab; "His.Course – Cab"."Initial Date")
            {
                IncludeCaption = true;
            }
            column(EndDate_HisCourseCab; "His.Course – Cab"."End Date")
            {
                IncludeCaption = true;
            }
            column(Duration_HisCourseCab; "His.Course – Cab".Duration)
            {
                IncludeCaption = true;
            }
            column(CodProf_HisCourseCab; "His.Course – Cab"."Cod Prof")
            {
                IncludeCaption = true;
            }
            column(ProfName_HisCourseCab; "His.Course – Cab"."Prof Name")
            {
                IncludeCaption = true;
            }
            column(CodClassroom_HisCourseCab; "His.Course – Cab"."Cod Classroom")
            {
                IncludeCaption = true;
            }
            column(ClassromName_HisCourseCab; "His.Course – Cab"."Classrom Name")
            {
                IncludeCaption = true;
            }
            column(PreviousCodeCourse_HisCourseCab; "His.Course – Cab"."Previous Code Course")
            {
                IncludeCaption = true;
            }
            dataitem(DataItem12; 60007)
            {
                DataItemLink = "Cod Course" = FIELD("Previous Code Course");
                column(CodStudent_HistCourseLine; "Hist.Course-Line"."Cod Student")
                {
                    IncludeCaption = true;
                }
                column(StudentName_HistCourseLine; "Hist.Course-Line"."Student Name")
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
        ReportTitle = 'Historic Course List';
    }
    var
        "His.Course – Cab": Record "His.Course – Cab";
        "Hist.Course-Line": Record "Hist.Course-Line";
}
