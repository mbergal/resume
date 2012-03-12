param( [Parameter(Mandatory=$true)][string]$source )

$sourceDir = Split-Path -Parent $source

function ConvertSourceToHtml( $source )
    {
    $xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
    $xslt.Load("D:\Users\Misha\Dropbox\resume\resume-to-html.xsl" );
    $xslt.Transform($source, "D:\Users\Misha\Dropbox\resume\resume.js.net.html" );    
    }
    
function ConvertSourceToWord( $source )
    {
    
    }

function ConvertSourceToPDF( $source )
    {
    }
    

    
ConvertSourceToHtml( $source )    