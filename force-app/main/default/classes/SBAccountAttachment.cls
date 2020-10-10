public Class SBAccountAttachment
{
    public String pdfContent = 'Good Morning ....';
    Public SBAccountAttachment()
    {
        pdfContent = 'I am from Constructor';
    }
    public void getAttachment(Account a)
    {
        pdfContent += 'I am from ' +a.name;
        Attachment attachmentPDF = new Attachment();
        attachmentPdf.parentId = a.id;
        attachmentPdf.name = a.name + '.pdf';
        attachmentPdf.body = blob.toPDF(pdfContent);
        insert attachmentPDF;
    }
 }