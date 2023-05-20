<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_CreateGroup
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.RadioButton_CommonGroup = New System.Windows.Forms.RadioButton()
        Me.RadioButton_PersonalGroup = New System.Windows.Forms.RadioButton()
        Me.RadioButton_ProgramItem = New System.Windows.Forms.RadioButton()
        Me.Button_OK = New System.Windows.Forms.Button()
        Me.Button_Help = New System.Windows.Forms.Button()
        Me.Button_Cancel = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.RadioButton_CommonGroup)
        Me.GroupBox1.Controls.Add(Me.RadioButton_PersonalGroup)
        Me.GroupBox1.Controls.Add(Me.RadioButton_ProgramItem)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(306, 138)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = " New "
        '
        'RadioButton_CommonGroup
        '
        Me.RadioButton_CommonGroup.AutoSize = True
        Me.RadioButton_CommonGroup.Location = New System.Drawing.Point(18, 81)
        Me.RadioButton_CommonGroup.Name = "RadioButton_CommonGroup"
        Me.RadioButton_CommonGroup.Size = New System.Drawing.Size(167, 17)
        Me.RadioButton_CommonGroup.TabIndex = 2
        Me.RadioButton_CommonGroup.TabStop = True
        Me.RadioButton_CommonGroup.Text = "Common program group"
        Me.RadioButton_CommonGroup.UseVisualStyleBackColor = True
        '
        'RadioButton_PersonalGroup
        '
        Me.RadioButton_PersonalGroup.AutoSize = True
        Me.RadioButton_PersonalGroup.Location = New System.Drawing.Point(18, 58)
        Me.RadioButton_PersonalGroup.Name = "RadioButton_PersonalGroup"
        Me.RadioButton_PersonalGroup.Size = New System.Drawing.Size(164, 17)
        Me.RadioButton_PersonalGroup.TabIndex = 1
        Me.RadioButton_PersonalGroup.TabStop = True
        Me.RadioButton_PersonalGroup.Text = "Personal program group"
        Me.RadioButton_PersonalGroup.UseVisualStyleBackColor = True
        '
        'RadioButton_ProgramItem
        '
        Me.RadioButton_ProgramItem.AutoSize = True
        Me.RadioButton_ProgramItem.Location = New System.Drawing.Point(18, 35)
        Me.RadioButton_ProgramItem.Name = "RadioButton_ProgramItem"
        Me.RadioButton_ProgramItem.Size = New System.Drawing.Size(103, 17)
        Me.RadioButton_ProgramItem.TabIndex = 0
        Me.RadioButton_ProgramItem.TabStop = True
        Me.RadioButton_ProgramItem.Text = "Program item"
        Me.RadioButton_ProgramItem.UseVisualStyleBackColor = True
        '
        'Button_OK
        '
        Me.Button_OK.Location = New System.Drawing.Point(334, 18)
        Me.Button_OK.Name = "Button_OK"
        Me.Button_OK.Size = New System.Drawing.Size(75, 23)
        Me.Button_OK.TabIndex = 1
        Me.Button_OK.Text = "&OK"
        Me.Button_OK.UseVisualStyleBackColor = True
        '
        'Button_Help
        '
        Me.Button_Help.Location = New System.Drawing.Point(334, 127)
        Me.Button_Help.Name = "Button_Help"
        Me.Button_Help.Size = New System.Drawing.Size(75, 23)
        Me.Button_Help.TabIndex = 2
        Me.Button_Help.Text = "&Help"
        Me.Button_Help.UseVisualStyleBackColor = True
        '
        'Button_Cancel
        '
        Me.Button_Cancel.Location = New System.Drawing.Point(334, 47)
        Me.Button_Cancel.Name = "Button_Cancel"
        Me.Button_Cancel.Size = New System.Drawing.Size(75, 23)
        Me.Button_Cancel.TabIndex = 3
        Me.Button_Cancel.Text = "&Cancel"
        Me.Button_Cancel.UseVisualStyleBackColor = True
        '
        'Form_CreateGroup
        '
        Me.AcceptButton = Me.Button_OK
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(421, 165)
        Me.Controls.Add(Me.Button_Cancel)
        Me.Controls.Add(Me.Button_Help)
        Me.Controls.Add(Me.Button_OK)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Name = "Form_CreateGroup"
        Me.Text = "- GROUP -"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents RadioButton_CommonGroup As RadioButton
    Friend WithEvents RadioButton_PersonalGroup As RadioButton
    Friend WithEvents RadioButton_ProgramItem As RadioButton
    Friend WithEvents Button_OK As Button
    Friend WithEvents Button_Help As Button
    Friend WithEvents Button_Cancel As Button
End Class
