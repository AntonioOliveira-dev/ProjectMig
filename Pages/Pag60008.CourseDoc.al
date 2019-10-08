page 60008 "Course Doc"
{
    PageType = Document;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            group(Courses)
            {
                field("Cod Course"; "Cod Course")
                {
                    Enabled = fieldeditable;
                }
                field(CourseName; CourseName)
                {
                    Enabled = fieldeditable;
                }
                field("Initial Date"; "Initial Date")
                {
                    Enabled = fieldeditable;
                    trigger OnValidate()
                    begin
                        "Course Count" := 1;

                        IF "End Date" = 0D THEN
                            "Course Count" := 1;
                        IF ("End Date" <> 0D) AND ("End Date" < TODAY()) THEN
                            "Course Count" := 0;
                        IF "Initial Date" > TODAY() THEN
                            "Course Count" := 0;
                    end;
                }
                field("End Date"; "End Date")
                {
                }
                field(Duration; Duration)
                {
                    Enabled = fieldeditable;
                }
                field("Cod Prof"; "Cod Prof")
                {
                    Enabled = fieldeditable;
                }
                field(ProfName; ProfName)
                {
                    Enabled = fieldeditable;
                }

                field(Total; Total)
                {
                    Visible = false;
                }
            }
            group("Courses-Lines")
            {
                part("Course-Line"; 60009)
                {
                }
            }
            group(Classrooms)
            {
                field("Cod Classroom"; "Cod Classroom")
                {
                    Enabled = Fieldeditable;
                }
                field("Classrom Name"; "Classrom Name")
                {
                    Enabled = Fieldeditable;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Course Lines")
            {
                Image = AllLines;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60007;
                ShortCutKey = 'F7';
            }
            action(Print)
            {
                Image = Print;
                RunObject = Report 60023;
            }
            group(Go)
            {
                Image = ReferenceData;
                group("action")
                {
                    Image = History;
                    action(Register)
                    {
                        Image = Register;
                        RunObject = Codeunit 60002;
                        ShortCutKey = 'F9';
                    }
                    action("Register+Print")
                    {
                        Image = Print;
                        RunObject = Codeunit 60003;
                        ShortCutKey = 'Shift+F9';

                        trigger OnAction()
                        begin
                            RegisterPrint.RUN(Rec);
                        end;
                    }
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Fieldeditable := TRUE;
        IF TODAY() >= "Initial Date" THEN
            Fieldeditable := FALSE;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        CourseLine.RESET();
        CourseLine.SETRANGE("Cod Course", "Cod Course");
        IF CourseLine.FINDFIRST() THEN
            CourseLine.DELETEALL();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Fieldeditable := TRUE;
    end;

    var
        CourseLine: Record 60004;
        RegisterPrint: Codeunit 60003;

        Fieldeditable: Boolean;

}

