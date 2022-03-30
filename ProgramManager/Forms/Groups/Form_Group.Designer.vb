<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Group
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_Group))
        Me.Listview_Items = New System.Windows.Forms.ListView()
        Me.ImageList_Large_Listview = New System.Windows.Forms.ImageList(Me.components)
        Me.ImageList_Small_Listview = New System.Windows.Forms.ImageList(Me.components)
        Me.SuspendLayout()
        '
        'Listview_Items
        '
        Me.Listview_Items.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.Listview_Items.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Listview_Items.HideSelection = False
        Me.Listview_Items.LargeImageList = Me.ImageList_Large_Listview
        Me.Listview_Items.Location = New System.Drawing.Point(0, 0)
        Me.Listview_Items.Name = "Listview_Items"
        Me.Listview_Items.Size = New System.Drawing.Size(517, 333)
        Me.Listview_Items.SmallImageList = Me.ImageList_Small_Listview
        Me.Listview_Items.TabIndex = 0
        Me.Listview_Items.UseCompatibleStateImageBehavior = False
        '
        'ImageList_Large_Listview
        '
        Me.ImageList_Large_Listview.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ImageList_Large_Listview.ImageSize = New System.Drawing.Size(32, 32)
        Me.ImageList_Large_Listview.TransparentColor = System.Drawing.Color.Transparent
        '
        'ImageList_Small_Listview
        '
        Me.ImageList_Small_Listview.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ImageList_Small_Listview.ImageSize = New System.Drawing.Size(16, 16)
        Me.ImageList_Small_Listview.TransparentColor = System.Drawing.Color.Transparent
        '
        'Form_Group
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(517, 333)
        Me.Controls.Add(Me.Listview_Items)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form_Group"
        Me.Text = "- GROUP -"
        Me.WindowState = System.Windows.Forms.FormWindowState.Minimized
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Listview_Items As ListView
    Friend WithEvents ImageList_Large_Listview As ImageList
    Friend WithEvents ImageList_Small_Listview As ImageList
End Class
