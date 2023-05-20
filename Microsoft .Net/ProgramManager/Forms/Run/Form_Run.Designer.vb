<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Run
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
        Me.Button_OK = New System.Windows.Forms.Button()
        Me.Combox_ProgramToRun = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button_Cancel = New System.Windows.Forms.Button()
        Me.Button_Browse = New System.Windows.Forms.Button()
        Me.Button_Help = New System.Windows.Forms.Button()
        Me.Checkbox_RunInSeparateMemorySpace = New System.Windows.Forms.CheckBox()
        Me.Checkbox_RunMinimized = New System.Windows.Forms.CheckBox()
        Me.OpenFileDialog = New System.Windows.Forms.OpenFileDialog()
        Me.SuspendLayout()
        '
        'Button_OK
        '
        Me.Button_OK.Location = New System.Drawing.Point(334, 12)
        Me.Button_OK.Name = "Button_OK"
        Me.Button_OK.Size = New System.Drawing.Size(116, 25)
        Me.Button_OK.TabIndex = 12
        Me.Button_OK.Text = "&OK"
        Me.Button_OK.UseVisualStyleBackColor = True
        '
        'Combox_ProgramToRun
        '
        Me.Combox_ProgramToRun.FormattingEnabled = True
        Me.Combox_ProgramToRun.Location = New System.Drawing.Point(14, 46)
        Me.Combox_ProgramToRun.Name = "Combox_ProgramToRun"
        Me.Combox_ProgramToRun.Size = New System.Drawing.Size(290, 21)
        Me.Combox_ProgramToRun.TabIndex = 13
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(10, 28)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(90, 13)
        Me.Label1.TabIndex = 14
        Me.Label1.Text = "Command line"
        '
        'Button_Cancel
        '
        Me.Button_Cancel.Location = New System.Drawing.Point(334, 43)
        Me.Button_Cancel.Name = "Button_Cancel"
        Me.Button_Cancel.Size = New System.Drawing.Size(116, 25)
        Me.Button_Cancel.TabIndex = 15
        Me.Button_Cancel.Text = "&Cancel"
        Me.Button_Cancel.UseVisualStyleBackColor = True
        '
        'Button_Browse
        '
        Me.Button_Browse.Location = New System.Drawing.Point(334, 74)
        Me.Button_Browse.Name = "Button_Browse"
        Me.Button_Browse.Size = New System.Drawing.Size(116, 25)
        Me.Button_Browse.TabIndex = 16
        Me.Button_Browse.Text = "&Browse..."
        Me.Button_Browse.UseVisualStyleBackColor = True
        '
        'Button_Help
        '
        Me.Button_Help.Location = New System.Drawing.Point(334, 132)
        Me.Button_Help.Name = "Button_Help"
        Me.Button_Help.Size = New System.Drawing.Size(116, 25)
        Me.Button_Help.TabIndex = 17
        Me.Button_Help.Text = "&Help"
        Me.Button_Help.UseVisualStyleBackColor = True
        '
        'Checkbox_RunInSeparateMemorySpace
        '
        Me.Checkbox_RunInSeparateMemorySpace.AutoSize = True
        Me.Checkbox_RunInSeparateMemorySpace.Location = New System.Drawing.Point(14, 118)
        Me.Checkbox_RunInSeparateMemorySpace.Name = "Checkbox_RunInSeparateMemorySpace"
        Me.Checkbox_RunInSeparateMemorySpace.Size = New System.Drawing.Size(205, 17)
        Me.Checkbox_RunInSeparateMemorySpace.TabIndex = 19
        Me.Checkbox_RunInSeparateMemorySpace.Text = "Run in separate memory space"
        Me.Checkbox_RunInSeparateMemorySpace.UseVisualStyleBackColor = True
        '
        'Checkbox_RunMinimized
        '
        Me.Checkbox_RunMinimized.AutoSize = True
        Me.Checkbox_RunMinimized.Location = New System.Drawing.Point(14, 100)
        Me.Checkbox_RunMinimized.Name = "Checkbox_RunMinimized"
        Me.Checkbox_RunMinimized.Size = New System.Drawing.Size(110, 17)
        Me.Checkbox_RunMinimized.TabIndex = 18
        Me.Checkbox_RunMinimized.Text = "Run minimized"
        Me.Checkbox_RunMinimized.UseVisualStyleBackColor = True
        '
        'Form_Run
        '
        Me.AcceptButton = Me.Button_OK
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(460, 170)
        Me.Controls.Add(Me.Checkbox_RunInSeparateMemorySpace)
        Me.Controls.Add(Me.Checkbox_RunMinimized)
        Me.Controls.Add(Me.Button_Help)
        Me.Controls.Add(Me.Button_Browse)
        Me.Controls.Add(Me.Button_Cancel)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Combox_ProgramToRun)
        Me.Controls.Add(Me.Button_OK)
        Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Name = "Form_Run"
        Me.Text = "- RUN -"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button_OK As Button
    Friend WithEvents Combox_ProgramToRun As ComboBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Button_Cancel As Button
    Friend WithEvents Button_Browse As Button
    Friend WithEvents Button_Help As Button
    Friend WithEvents Checkbox_RunInSeparateMemorySpace As CheckBox
    Friend WithEvents Checkbox_RunMinimized As CheckBox
    Friend WithEvents OpenFileDialog As OpenFileDialog
End Class
