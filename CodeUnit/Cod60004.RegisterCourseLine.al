codeunit 60004 "Register Course Line"
{
    // 

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
        CourseLine: Record 60004;
        Course: Record 60003;
        OldCourse: Record 60006;
        OldLine: Record 60007;
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

    end;
}

