page 60009 "Course-Line"
{
    PageType = ListPart;
    SourceTable = 60004;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field(Line; Line)
                {
                    BlankZero = true;
                    MinValue = 1;
                    NotBlank = true;
                }
                field("Cod Student"; "Cod Student")
                {
                }
                field("Student Name"; "Student Name")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

