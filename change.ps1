Add-Type -AssemblyName System.Windows.Forms
$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog.Filter = "All Files (*.*)|*.*"

if ($OpenFileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    $FilePath = $OpenFileDialog.FileName
    # Save the file path to %temp%\bestandslocatie.txt
    $OutputFilePath = "$env:TEMP\bestandslocatie.txt"
    Set-Content -Path $OutputFilePath -Value $FilePath
    Write-Host "File path has been saved to $OutputFilePath"
} else {
    Write-Host "No file selected."
}