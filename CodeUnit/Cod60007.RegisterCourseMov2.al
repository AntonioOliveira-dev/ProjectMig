codeunit 60007 "Register Course Mov2"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        Course.COPY(Rec);
        CourseLine.RESET();
        CourseLine.SETRANGE("Cod Course");
        IF CourseLine.FINDSET() THEN
            REPEAT
                Validate_Line(CourseLine);
            UNTIL CourseLine.NEXT() = 0;

        Reg_Hist(Course);
        Rec := Course;
    end;

    var
        OldLine: Record 60007;
        CourseLine: Record 60004;
        Mov: Record 60008;
        Course: Record 60003;
        OldCourse: Record 60006;
        SeriesSEtup: Record 60005;
        NoSeriesMgt: Codeunit 396;

    procedure Validate_Line(CourseLine: Record 60004)
    begin
        CourseLine.CALCFIELDS("Student Name");
        IF CourseLine."Student Name" = '' THEN
            ERROR('The code %1 does not have a name', CourseLine."Cod Student")

    end;

    procedure Reg_Hist(Course: Record 60003)
    begin
        //historico do cabeçalho
        OldCourse.SETRANGE("Previous Code Course", Course."Cod Course");
        IF OldCourse.ISEMPTY() THEN
            OldCourse.TRANSFERFIELDS(Course);
        OldCourse."Previous Code Course" := Course."Cod Course";


        IF OldCourse."Cod Course" = Course."Cod Course" THEN BEGIN
            SeriesSEtup.GET();
            SeriesSEtup.TESTFIELD("Course Historic No.");
            OldCourse."Cod Course" := NoSeriesMgt.GetNextNo(SeriesSEtup."Course Historic No.", TODAY(), TRUE);
            OldCourse."No. Series" := SeriesSEtup."Course Historic No.";
            OldCourse.INSERT();
        END;
        MESSAGE('Teste');

        //historico da Linha

        OldLine.SETRANGE("Cod Course", CourseLine."Cod Course");
        WITH OldLine DO
            IF CourseLine.FINDSET() THEN
                REPEAT
                    TRANSFERFIELDS(CourseLine);
                    INSERT();
                UNTIL CourseLine.NEXT() = 0;
        CourseLine.DELETEALL();
        MESSAGE('Teste 2');

        // movimentos
        IF Mov.FINDLAST() THEN
            Mov."No.Movement" := Mov."No.Movement"
        ELSE
            Mov."No.Movement" := 0;
        //Movimentos Header
        OldCourse.RESET();
        OldCourse.SETRANGE("Previous Code Course", Course."Cod Course");
        IF OldCourse.FINDFIRST() THEN BEGIN
            Mov.INIT();
            Mov."Cod Course" := OldCourse."Cod Course";
            Mov."Course Name" := OldCourse."Course Name";
            Mov."Initial Date" := OldCourse."Initial Date";
            Mov."End Date" := OldCourse."End Date";
            Mov.Duration := OldCourse.Duration;
            Mov."Cod Prof" := OldCourse."Cod Prof";
        END;
        MESSAGE('Teste 3');


        // Movimentos Line
        OldLine.RESET();
        OldLine.SETRANGE("Cod Course", Course."Cod Course");

        IF OldLine.FINDSET() THEN
            REPEAT
                Mov."Cod Student" := OldLine."Cod Student";
                Mov."Student Name" := OldLine."Student Name";
                Mov."No.Movement" := Mov."No.Movement" + 1;
                Mov.INSERT();
            UNTIL OldLine.NEXT() = 0;

    end;
}

