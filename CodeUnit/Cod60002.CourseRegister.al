codeunit 60002 "Course Register"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        CourseCab.COPY(Rec);
        Code(HistCourseLine);
        Rec := CourseCab;

        // Sets the default to option 3


    end;

    var
        CourseCab: Record 60003;
        HistCourseLine: Record 60007;
        RegisterCourseLine: Codeunit 60004;
        MovReg: Codeunit 60007;
        Options: Text[50];
        Text000Lbl: Label '''Registar S/ Movimentos, Registar C/ Movimentos''';
        Selected: Integer;


    procedure "Code"(var HistCourseLine: Record 60007)

    begin
        Options := Text000Lbl;
        Selected := DIALOG.STRMENU(Options, 2);
        IF Selected < 2 THEN
            RegisterCourseLine.RUN(CourseCab)
        ELSE
            MovReg.RUN(CourseCab);

    end;
}

