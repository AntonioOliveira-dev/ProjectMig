codeunit 60006 "Export XML Course"
{
    TableNo = 60003;

    trigger OnRun()
    var

        CustXmlFile: File;
        XmlStream: OutStream;
        IsExported: Boolean;
        FromFile: Text;
        ToFile: Text;
        Text000Lbl: Label 'The Course Cab Table export to XML is completed';
        Text001Lbl: Label 'The Export Failed';
    begin

        Course.RESET();
        Course.SETRANGE("Cod Course");
        IF Course.FINDSET() THEN
            REPEAT
                Rec.SETRANGE("Cod Course", Course."Cod Course");
                CustXmlFile.CREATE(TEMPORARYPATH() + 'Courses.xml');
                CustXmlFile.CREATEOUTSTREAM(XmlStream);
                IsExported := XMLPORT.EXPORT(XMLPORT::Courses, XmlStream, Rec);
                FromFile := CustXmlFile.NAME();
                ToFile := 'Courses.xml';
                CustXmlFile.CLOSE();


                IF IsExported THEN BEGIN
                    DOWNLOAD(FromFile, 'Download file', 'C:\Temp', 'Xml file(*.xml)|*.xml', ToFile);
                    ERASE(FromFile);
                END
                ELSE
                    MESSAGE(Text001Lbl);
            UNTIL Course.NEXT() = 0;

        MESSAGE(Text000Lbl);
    end;

    var
        Course: Record 60003;

}

