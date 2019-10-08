page 60017 "Cue Course"
{
    PageType = CardPart;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            cuegroup("Courses On")
            {
                field("Active Courses"; Total)
                {
                    Caption = 'Active Courses';
                    Image = Library;
                    Style = Favorable;
                    StyleExpr = TRUE;
                }

                actions
                {
                    action("New Course")
                    {
                        Caption = 'New Course';
                        RunObject = Page 60008;
                        RunPageMode = Edit;
                    }
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        Countable := TRUE;
        IF TODAY() < "Initial Date" THEN
            Countable := FALSE
    end;

    var
        Countable: Boolean;
}

