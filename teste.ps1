Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(400,200)
$form.FormBorderStyle = 'FixedSingle'
$form.StartPosition = 'CenterScreen'
$form.TopMost = $true
$form.ControlBox = $False
$form.Text = 'Instalando'
$label = New-Object System.Windows.Forms.Label
$label.Size = New-Object System.Drawing.Size(360,22)
$label.Left = ($form.Width - $label.Width) / 2
$label.Top = ($form.Height - $label.Height * 2) / 2
$label.Text = 'Current i value is: 0'
$label.Name = 'Label1'
$form.Controls.Add($label)
$form.Show()
Start-Sleep -s 2
$label.Text = 'Texto 2'
Start-Sleep -s 2
$label.Text = 'Texto 3'
Start-Sleep -s 1
$form.Close()