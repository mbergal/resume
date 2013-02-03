#param( [Parameter(Mandatory=$true)][string]$source )

$rootDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $rootDir "src\resume.js.net.xml"

function ConvertSourceToHtml( $source, $destination )
    {
    $tempFile = [System.IO.Path]::GetTempFileName()
    Transform-Xml `
        -Xml $source `
        -Xsl "src\transformations\resume-to-html.xsl" `
        -Output $tempFile
    
    Get-Content $tempFile | ForEach-Object { 
        switch -regex ( $_ )
            {
            '\s*<link rel="stylesheet" type="text/css" href="(.*)" />' 
                { 
                $cssFile = $matches[1]
                '<style type="text/css">'
                Get-Content ( Join-Path $rootDir $cssFile )
                '</style>'
                break
                }
            default { $_ }
            }
        } | Out-File $destination
    }
    
function ConvertSourceToWord( $source, $destination )
    {
    $private:tempFile = [System.IO.Path]::GetTempFileName()
    Transform-Xml `
        -Xml $source `
        -Xsl "src\transformations\resume-to-word.xsl" `
        -Output $tempFile
    
    $private:wrd = new-object -com word.application 
    $wrd.visible = $true 
    $doc = $wrd.documents.open( $tempFile )
    $format = 16
    $doc.SaveAs( [ref][system.object]$destination, [ref] 16 )
    $doc.close()
    $wrd.quit()
    }

function ConvertSourceToPDF( $source, $destination )
    {
    $private:tempFile = [System.IO.Path]::GetTempFileName()
    Transform-Xml `
        -Xml $source `
        -Xsl "src\transformations\resume-to-word.xsl" `
        -Output $tempFile
    $private:wrd = new-object -com word.application 
    $wrd.visible = $true 
    $doc = $wrd.documents.open( $tempFile )
    $format = 17
    $doc.SaveAs( [ref][system.object]$destination, [ref]$format )
    $doc.close()
    $wrd.quit()
    }

function ConvertSourceToMarkdown( $source, $destination )
    {
    Transform-Xml `
        -Xml $source `
        -Xsl "src\transformations\resume-to-markdown.xsl" `
        -Output $destination
    }

function Transform-Xml( $xml, $xsl, $output )
    {
    $private:xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
    $xslt.Load( ( Join-Path $rootDir $xsl ) );
    $xslt.Transform( $xml, $output );    
    }
    
ConvertSourceToHtml $source ( Join-Path $rootDir "bin\Resume.html" )
ConvertSourceToWord $source ( Join-Path $rootDir "bin\Resume.docx" )
ConvertSourceToPDF $source ( Join-Path $rootDir "bin\Resume.pdf" )
ConvertSourceToMarkdown $source ( Join-Path $rootDir "bin\Resume.markdown" )
Copy-Item ( Join-Path $rootDir "bin\Resume.markdown" ) ( Join-Path $rootDir "README.markdown" )
