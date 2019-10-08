page 60012 "Student Cue"
{
    PageType = CardPart;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            cuegroup("Students Enroled")
            {
                field("Student Total"; "Student Total")
                {
                    Caption = 'Number of Students Enroled';
                    Image = People;
                    Style = Favorable;
                    StyleExpr = TRUE;
                }

                actions
                {
                    action("New Student")
                    {
                        Caption = 'New Student';
                        RunObject = Page 60000;
                        RunPageMode = Create;
                    }
                }
            }
        }
    }

    actions
    {
    }


}

