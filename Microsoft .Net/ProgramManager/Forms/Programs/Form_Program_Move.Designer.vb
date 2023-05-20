<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Program_Move
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
        Me.Button_Cancel = New System.Windows.Forms.Button()
        Me.Button_OK = New System.Windows.Forms.Button()
        Me.Combox_MoveTo = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label_FromGroup = New System.Windows.Forms.Label()
        Me.Label_ProgramItem = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'Button_Cancel
        '
        Me.Button_Cancel.Location = New System.Drawing.Point(280, 68)
        Me.Button_Cancel.Name = "Button_Cancel"
        Me.Button_Cancel.Size = New System.Drawing.Size(86, 25)
        Me.Button_Cancel.TabIndex = 15
        Me.Button_Cancel.Text = "Cancel"
        Me.Button_Cancel.UseVisualStyleBackColor = True
        '
        'Button_OK
        '
        Me.Button_OK.Location = New System.Drawing.Point(280, 37)
        Me.Button_OK.Name = "Button_OK"
        Me.Button_OK.Size = New System.Drawing.Size(86, 25)
        Me.Button_OK.TabIndex = 14
        Me.Button_OK.Text = "OK"
        Me.Button_OK.UseVisualStyleBackColor = True
        '
        'Combox_MoveTo
        '
        Me.Combox_MoveTo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.Combox_MoveTo.FormattingEnabled = True
        Me.Combox_MoveTo.Location = New System.Drawing.Point(16, 95)
        Me.Combox_MoveTo.Name = "Combox_MoveTo"
        Me.Combox_MoveTo.Size = New System.Drawing.Size(226, 21)
        Me.Combox_MoveTo.TabIndex = 13
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(13, 79)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(62, 13)
        Me.Label3.TabIndex = 12
        Me.Label3.Text = "To group:"
        '
        'Label_FromGroup
        '
        Me.Label_FromGroup.AutoSize = True
        Me.Label_FromGroup.Location = New System.Drawing.Point(166, 29)
        Me.Label_FromGroup.Name = "Label_FromGroup"
        Me.Label_FromGroup.Size = New System.Drawing.Size(12, 13)
        Me.Label_FromGroup.TabIndex = 11
        Me.Label_FromGroup.Text = "-"
        '
        'Label_ProgramItem
        '
        Me.Label_ProgramItem.AutoSize = True
        Me.Label_ProgramItem.Location = New System.Drawing.Point(166, 12)
        Me.Label_ProgramItem.Name = "Label_ProgramItem"
        Me.Label_ProgramItem.Size = New System.Drawing.Size(12, 13)
        Me.Label_ProgramItem.TabIndex = 10
        Me.Label_ProgramItem.Text = "-"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(13, 29)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(131, 13)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "From program group:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(13, 12)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(124, 13)
        Me.Label1.TabIndex = 8
        Me.Label1.Text = "Move program item:"
        '
        'Form_Program_Move
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(388, 136)
        Me.Controls.Add(Me.Button_Cancel)
        Me.Controls.Add(Me.Button_OK)
        Me.Controls.Add(Me.Combox_MoveTo)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label_FromGroup)
        Me.Controls.Add(Me.Label_ProgramItem)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Name = "Form_Program_Move"
        Me.Text = "- MOVE -"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button_Cancel As Button
    Friend WithEvents Button_OK As Button
    Friend WithEvents Combox_MoveTo As ComboBox
    Friend WithEvents Label3 As Label
    Friend WithEvents Label_FromGroup As Label
    Friend WithEvents Label_ProgramItem As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
End Class
