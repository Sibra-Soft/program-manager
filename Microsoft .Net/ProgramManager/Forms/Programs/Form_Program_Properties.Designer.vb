<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Program_Properties
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Textbox_Description = New System.Windows.Forms.TextBox()
        Me.Textbox_CommandLine = New System.Windows.Forms.TextBox()
        Me.Textbox_WorkingDirectory = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Textbox_ShortcutKey = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Checkbox_RunMinimized = New System.Windows.Forms.CheckBox()
        Me.Checkbox_RunInSeparateMemorySpace = New System.Windows.Forms.CheckBox()
        Me.Button_ChangeIcon = New System.Windows.Forms.Button()
        Me.Button_OK = New System.Windows.Forms.Button()
        Me.Button_Cancel = New System.Windows.Forms.Button()
        Me.Button_Browse = New System.Windows.Forms.Button()
        Me.Button_Help = New System.Windows.Forms.Button()
        Me.Picturebox_Icon = New System.Windows.Forms.PictureBox()
        Me.OpenFileDialog = New System.Windows.Forms.OpenFileDialog()
        Me.Timer_Main = New System.Windows.Forms.Timer(Me.components)
        CType(Me.Picturebox_Icon, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 20)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(76, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Description:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 46)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(95, 13)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Command line:"
        '
        'Textbox_Description
        '
        Me.Textbox_Description.Location = New System.Drawing.Point(143, 16)
        Me.Textbox_Description.Name = "Textbox_Description"
        Me.Textbox_Description.Size = New System.Drawing.Size(297, 21)
        Me.Textbox_Description.TabIndex = 2
        '
        'Textbox_CommandLine
        '
        Me.Textbox_CommandLine.Location = New System.Drawing.Point(143, 42)
        Me.Textbox_CommandLine.Name = "Textbox_CommandLine"
        Me.Textbox_CommandLine.Size = New System.Drawing.Size(297, 21)
        Me.Textbox_CommandLine.TabIndex = 3
        '
        'Textbox_WorkingDirectory
        '
        Me.Textbox_WorkingDirectory.Location = New System.Drawing.Point(143, 69)
        Me.Textbox_WorkingDirectory.Name = "Textbox_WorkingDirectory"
        Me.Textbox_WorkingDirectory.Size = New System.Drawing.Size(297, 21)
        Me.Textbox_WorkingDirectory.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 73)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(113, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Working directory:"
        '
        'Textbox_ShortcutKey
        '
        Me.Textbox_ShortcutKey.Location = New System.Drawing.Point(143, 96)
        Me.Textbox_ShortcutKey.Name = "Textbox_ShortcutKey"
        Me.Textbox_ShortcutKey.Size = New System.Drawing.Size(297, 21)
        Me.Textbox_ShortcutKey.TabIndex = 7
        Me.Textbox_ShortcutKey.Text = "None"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 100)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(85, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "Shortcut key:"
        '
        'Checkbox_RunMinimized
        '
        Me.Checkbox_RunMinimized.AutoSize = True
        Me.Checkbox_RunMinimized.Location = New System.Drawing.Point(143, 136)
        Me.Checkbox_RunMinimized.Name = "Checkbox_RunMinimized"
        Me.Checkbox_RunMinimized.Size = New System.Drawing.Size(110, 17)
        Me.Checkbox_RunMinimized.TabIndex = 8
        Me.Checkbox_RunMinimized.Text = "Run minimized"
        Me.Checkbox_RunMinimized.UseVisualStyleBackColor = True
        '
        'Checkbox_RunInSeparateMemorySpace
        '
        Me.Checkbox_RunInSeparateMemorySpace.AutoSize = True
        Me.Checkbox_RunInSeparateMemorySpace.Location = New System.Drawing.Point(143, 154)
        Me.Checkbox_RunInSeparateMemorySpace.Name = "Checkbox_RunInSeparateMemorySpace"
        Me.Checkbox_RunInSeparateMemorySpace.Size = New System.Drawing.Size(205, 17)
        Me.Checkbox_RunInSeparateMemorySpace.TabIndex = 9
        Me.Checkbox_RunInSeparateMemorySpace.Text = "Run in separate memory space"
        Me.Checkbox_RunInSeparateMemorySpace.UseVisualStyleBackColor = True
        '
        'Button_ChangeIcon
        '
        Me.Button_ChangeIcon.Enabled = False
        Me.Button_ChangeIcon.Location = New System.Drawing.Point(472, 127)
        Me.Button_ChangeIcon.Name = "Button_ChangeIcon"
        Me.Button_ChangeIcon.Size = New System.Drawing.Size(117, 25)
        Me.Button_ChangeIcon.TabIndex = 10
        Me.Button_ChangeIcon.Text = "Change icon..."
        Me.Button_ChangeIcon.UseVisualStyleBackColor = True
        '
        'Button_OK
        '
        Me.Button_OK.Enabled = False
        Me.Button_OK.Location = New System.Drawing.Point(472, 15)
        Me.Button_OK.Name = "Button_OK"
        Me.Button_OK.Size = New System.Drawing.Size(117, 25)
        Me.Button_OK.TabIndex = 11
        Me.Button_OK.Text = "OK"
        Me.Button_OK.UseVisualStyleBackColor = True
        '
        'Button_Cancel
        '
        Me.Button_Cancel.Location = New System.Drawing.Point(472, 46)
        Me.Button_Cancel.Name = "Button_Cancel"
        Me.Button_Cancel.Size = New System.Drawing.Size(117, 25)
        Me.Button_Cancel.TabIndex = 12
        Me.Button_Cancel.Text = "Cancel"
        Me.Button_Cancel.UseVisualStyleBackColor = True
        '
        'Button_Browse
        '
        Me.Button_Browse.Location = New System.Drawing.Point(472, 96)
        Me.Button_Browse.Name = "Button_Browse"
        Me.Button_Browse.Size = New System.Drawing.Size(117, 25)
        Me.Button_Browse.TabIndex = 13
        Me.Button_Browse.Text = "Browse..."
        Me.Button_Browse.UseVisualStyleBackColor = True
        '
        'Button_Help
        '
        Me.Button_Help.Location = New System.Drawing.Point(472, 158)
        Me.Button_Help.Name = "Button_Help"
        Me.Button_Help.Size = New System.Drawing.Size(117, 25)
        Me.Button_Help.TabIndex = 14
        Me.Button_Help.Text = "Help"
        Me.Button_Help.UseVisualStyleBackColor = True
        '
        'Picturebox_Icon
        '
        Me.Picturebox_Icon.Location = New System.Drawing.Point(37, 138)
        Me.Picturebox_Icon.Name = "Picturebox_Icon"
        Me.Picturebox_Icon.Size = New System.Drawing.Size(32, 32)
        Me.Picturebox_Icon.TabIndex = 15
        Me.Picturebox_Icon.TabStop = False
        '
        'OpenFileDialog
        '
        Me.OpenFileDialog.FileName = "OpenFileDialog"
        '
        'Timer_Main
        '
        Me.Timer_Main.Enabled = True
        Me.Timer_Main.Interval = 10
        '
        'Form_Program_Properties
        '
        Me.AcceptButton = Me.Button_OK
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(608, 203)
        Me.Controls.Add(Me.Picturebox_Icon)
        Me.Controls.Add(Me.Button_Help)
        Me.Controls.Add(Me.Button_Browse)
        Me.Controls.Add(Me.Button_Cancel)
        Me.Controls.Add(Me.Button_OK)
        Me.Controls.Add(Me.Button_ChangeIcon)
        Me.Controls.Add(Me.Checkbox_RunInSeparateMemorySpace)
        Me.Controls.Add(Me.Checkbox_RunMinimized)
        Me.Controls.Add(Me.Textbox_ShortcutKey)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Textbox_WorkingDirectory)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Textbox_CommandLine)
        Me.Controls.Add(Me.Textbox_Description)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Name = "Form_Program_Properties"
        Me.Text = "- PROGRAM PROPERTIES -"
        CType(Me.Picturebox_Icon, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Textbox_Description As TextBox
    Friend WithEvents Textbox_CommandLine As TextBox
    Friend WithEvents Textbox_WorkingDirectory As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents Textbox_ShortcutKey As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Checkbox_RunMinimized As CheckBox
    Friend WithEvents Checkbox_RunInSeparateMemorySpace As CheckBox
    Friend WithEvents Button_ChangeIcon As Button
    Friend WithEvents Button_OK As Button
    Friend WithEvents Button_Cancel As Button
    Friend WithEvents Button_Browse As Button
    Friend WithEvents Button_Help As Button
    Friend WithEvents Picturebox_Icon As PictureBox
    Friend WithEvents OpenFileDialog As OpenFileDialog
    Friend WithEvents Timer_Main As Timer
End Class
