page 60016 "Prof Cue"
{
    PageType = CardPart;
    SourceTable = 60001;

    layout
    {
        area(content)
        {
            cuegroup("Professor Hired")
            {
                field("Prof Numbers"; Total)
                {
                    Caption = 'Number of Professores Hired';
                    Image = People;
                    Style = Favorable;
                    StyleExpr = TRUE;

                }

                actions
                {
                    action("New Professor")
                    {
                        Caption = 'New Professor';
                        RunObject = Page 60001;
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

