xmlport 60000 "Courses"
{

    schema
    {
        textelement(Root)
        {
            tableelement("Course – Cab"; "Course – Cab")
            {
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'Header';
                fieldelement(CodCourse; "Course – Cab"."Cod Course")
                {
                }
                fieldelement(CourseName; "Course – Cab".CourseName)
                {
                }
                fieldelement(Duration; "Course – Cab".Duration)
                {
                }
                fieldelement(ProfName; "Course – Cab".ProfName)
                {
                }
                fieldelement(ClassromName; "Course – Cab"."Classrom Name")
                {
                }
                tableelement("Course-Line"; "Course-Line")
                {
                    LinkFields = "Cod Course" = FIELD("Cod Course");
                    LinkTable = "Course – Cab";
                    XmlName = 'Lines';
                    fieldelement(CodStudent; "Course-Line"."Cod Student")
                    {
                    }
                    fieldelement(StudentName; "Course-Line"."Student Name")
                    {
                    }
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

}

