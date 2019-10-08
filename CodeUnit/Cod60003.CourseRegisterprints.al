codeunit 60003 "Course Register + prints"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        CourseCab.COPY(Rec);
        Code();
        Rec := CourseCab;

    end;

    var
        CourseCab: Record 60003;
        ReportCourse: Record 60006;
        RegisterCourseLine: Codeunit 60004;

    local procedure "Code"()

    begin

        RegisterCourseLine.RUN(CourseCab);
        COMMIT();
        ReportCourse.SETRANGE("Previous Code Course", CourseCab."Cod Course");
        REPORT.RUN(60024, TRUE, TRUE, ReportCourse)

    end;
}

