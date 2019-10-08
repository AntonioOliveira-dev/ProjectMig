codeunit 60008 "Import Xml Students"
{
    TableNo = 60000;

    trigger OnRun()
    var
        Import: File;
        varInputStream: InStream;
    begin

        Import.OPEN('C:\Temp\Import\formandos.csv');
        Import.CREATEINSTREAM(varInputStream);
        XMLPORT.IMPORT(XMLPORT::Students, varInputStream);
        Import.CLOSE();
        MESSAGE('bela vida');
    end;


}

