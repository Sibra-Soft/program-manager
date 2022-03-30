<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Main
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_Main))
        Me.MenuStrip = New System.Windows.Forms.MenuStrip()
        Me.MenuStrip_File = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_New = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Open = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Move = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Copy = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Delete = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Properties = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.MenuStrip_File_Run = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.MenuStrip_File_Logoff = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Shutdown = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_File_Exit = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Options = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Options_AutoArrange = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Options_MinimizeOnUse = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Options_SaveOnExit = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator3 = New System.Windows.Forms.ToolStripSeparator()
        Me.MenuStrip_Options_SaveNow = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator()
        Me.MenuStrip_Options_UpdateGroups = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Window = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Window_Cascade = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Window_Title = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Window_ArrangeIcons = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStripSeparator5 = New System.Windows.Forms.ToolStripSeparator()
        Me.MenuStrip_Help = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip_Help_About = New System.Windows.Forms.ToolStripMenuItem()
        Me.Timer_Main = New System.Windows.Forms.Timer(Me.components)
        Me.MenuStrip.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip
        '
        Me.MenuStrip.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MenuStrip_File, Me.MenuStrip_Options, Me.MenuStrip_Window, Me.MenuStrip_Help})
        Me.MenuStrip.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip.MdiWindowListItem = Me.MenuStrip_Window
        Me.MenuStrip.Name = "MenuStrip"
        Me.MenuStrip.Padding = New System.Windows.Forms.Padding(7, 2, 0, 2)
        Me.MenuStrip.RenderMode = System.Windows.Forms.ToolStripRenderMode.System
        Me.MenuStrip.Size = New System.Drawing.Size(746, 24)
        Me.MenuStrip.TabIndex = 1
        Me.MenuStrip.Text = "MenuStrip1"
        '
        'MenuStrip_File
        '
        Me.MenuStrip_File.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MenuStrip_File_New, Me.MenuStrip_File_Open, Me.MenuStrip_File_Move, Me.MenuStrip_File_Copy, Me.MenuStrip_File_Delete, Me.MenuStrip_File_Properties, Me.ToolStripSeparator1, Me.MenuStrip_File_Run, Me.ToolStripSeparator2, Me.MenuStrip_File_Logoff, Me.MenuStrip_File_Shutdown, Me.MenuStrip_File_Exit})
        Me.MenuStrip_File.Name = "MenuStrip_File"
        Me.MenuStrip_File.Size = New System.Drawing.Size(37, 20)
        Me.MenuStrip_File.Text = "&File"
        '
        'MenuStrip_File_New
        '
        Me.MenuStrip_File_New.Name = "MenuStrip_File_New"
        Me.MenuStrip_File_New.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.N), System.Windows.Forms.Keys)
        Me.MenuStrip_File_New.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_New.Text = "&New"
        '
        'MenuStrip_File_Open
        '
        Me.MenuStrip_File_Open.Name = "MenuStrip_File_Open"
        Me.MenuStrip_File_Open.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Open.Text = "&Open"
        '
        'MenuStrip_File_Move
        '
        Me.MenuStrip_File_Move.Name = "MenuStrip_File_Move"
        Me.MenuStrip_File_Move.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Move.Text = "&Move"
        '
        'MenuStrip_File_Copy
        '
        Me.MenuStrip_File_Copy.Name = "MenuStrip_File_Copy"
        Me.MenuStrip_File_Copy.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Copy.Text = "&Copy"
        '
        'MenuStrip_File_Delete
        '
        Me.MenuStrip_File_Delete.Name = "MenuStrip_File_Delete"
        Me.MenuStrip_File_Delete.ShortcutKeys = System.Windows.Forms.Keys.Delete
        Me.MenuStrip_File_Delete.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Delete.Text = "&Delete"
        '
        'MenuStrip_File_Properties
        '
        Me.MenuStrip_File_Properties.Name = "MenuStrip_File_Properties"
        Me.MenuStrip_File_Properties.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Properties.Text = "&Properties"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(138, 6)
        '
        'MenuStrip_File_Run
        '
        Me.MenuStrip_File_Run.Name = "MenuStrip_File_Run"
        Me.MenuStrip_File_Run.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Run.Text = "&Run"
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(138, 6)
        '
        'MenuStrip_File_Logoff
        '
        Me.MenuStrip_File_Logoff.Name = "MenuStrip_File_Logoff"
        Me.MenuStrip_File_Logoff.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Logoff.Text = "&Logoff"
        '
        'MenuStrip_File_Shutdown
        '
        Me.MenuStrip_File_Shutdown.Name = "MenuStrip_File_Shutdown"
        Me.MenuStrip_File_Shutdown.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Shutdown.Text = "&Shutdown"
        '
        'MenuStrip_File_Exit
        '
        Me.MenuStrip_File_Exit.Name = "MenuStrip_File_Exit"
        Me.MenuStrip_File_Exit.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.Q), System.Windows.Forms.Keys)
        Me.MenuStrip_File_Exit.Size = New System.Drawing.Size(141, 22)
        Me.MenuStrip_File_Exit.Text = "&Exit"
        '
        'MenuStrip_Options
        '
        Me.MenuStrip_Options.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MenuStrip_Options_AutoArrange, Me.MenuStrip_Options_MinimizeOnUse, Me.MenuStrip_Options_SaveOnExit, Me.ToolStripSeparator3, Me.MenuStrip_Options_SaveNow, Me.ToolStripSeparator4, Me.MenuStrip_Options_UpdateGroups})
        Me.MenuStrip_Options.Name = "MenuStrip_Options"
        Me.MenuStrip_Options.Size = New System.Drawing.Size(61, 20)
        Me.MenuStrip_Options.Text = "&Options"
        '
        'MenuStrip_Options_AutoArrange
        '
        Me.MenuStrip_Options_AutoArrange.Checked = True
        Me.MenuStrip_Options_AutoArrange.CheckState = System.Windows.Forms.CheckState.Checked
        Me.MenuStrip_Options_AutoArrange.Name = "MenuStrip_Options_AutoArrange"
        Me.MenuStrip_Options_AutoArrange.Size = New System.Drawing.Size(208, 22)
        Me.MenuStrip_Options_AutoArrange.Text = "&Auto Arrange"
        '
        'MenuStrip_Options_MinimizeOnUse
        '
        Me.MenuStrip_Options_MinimizeOnUse.Name = "MenuStrip_Options_MinimizeOnUse"
        Me.MenuStrip_Options_MinimizeOnUse.Size = New System.Drawing.Size(208, 22)
        Me.MenuStrip_Options_MinimizeOnUse.Text = "&Minimize on use"
        '
        'MenuStrip_Options_SaveOnExit
        '
        Me.MenuStrip_Options_SaveOnExit.Checked = True
        Me.MenuStrip_Options_SaveOnExit.CheckState = System.Windows.Forms.CheckState.Checked
        Me.MenuStrip_Options_SaveOnExit.Name = "MenuStrip_Options_SaveOnExit"
        Me.MenuStrip_Options_SaveOnExit.Size = New System.Drawing.Size(208, 22)
        Me.MenuStrip_Options_SaveOnExit.Text = "Save settings on exit"
        '
        'ToolStripSeparator3
        '
        Me.ToolStripSeparator3.Name = "ToolStripSeparator3"
        Me.ToolStripSeparator3.Size = New System.Drawing.Size(205, 6)
        '
        'MenuStrip_Options_SaveNow
        '
        Me.MenuStrip_Options_SaveNow.Name = "MenuStrip_Options_SaveNow"
        Me.MenuStrip_Options_SaveNow.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.S), System.Windows.Forms.Keys)
        Me.MenuStrip_Options_SaveNow.Size = New System.Drawing.Size(208, 22)
        Me.MenuStrip_Options_SaveNow.Text = "Save settings now"
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(205, 6)
        '
        'MenuStrip_Options_UpdateGroups
        '
        Me.MenuStrip_Options_UpdateGroups.Name = "MenuStrip_Options_UpdateGroups"
        Me.MenuStrip_Options_UpdateGroups.Size = New System.Drawing.Size(208, 22)
        Me.MenuStrip_Options_UpdateGroups.Text = "&Update program groups"
        '
        'MenuStrip_Window
        '
        Me.MenuStrip_Window.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MenuStrip_Window_Cascade, Me.MenuStrip_Window_Title, Me.MenuStrip_Window_ArrangeIcons, Me.ToolStripSeparator5})
        Me.MenuStrip_Window.Name = "MenuStrip_Window"
        Me.MenuStrip_Window.Size = New System.Drawing.Size(63, 20)
        Me.MenuStrip_Window.Text = "&Window"
        '
        'MenuStrip_Window_Cascade
        '
        Me.MenuStrip_Window_Cascade.Name = "MenuStrip_Window_Cascade"
        Me.MenuStrip_Window_Cascade.Size = New System.Drawing.Size(180, 22)
        Me.MenuStrip_Window_Cascade.Text = "&Cascade"
        '
        'MenuStrip_Window_Title
        '
        Me.MenuStrip_Window_Title.Name = "MenuStrip_Window_Title"
        Me.MenuStrip_Window_Title.Size = New System.Drawing.Size(180, 22)
        Me.MenuStrip_Window_Title.Text = "&Title"
        '
        'MenuStrip_Window_ArrangeIcons
        '
        Me.MenuStrip_Window_ArrangeIcons.Name = "MenuStrip_Window_ArrangeIcons"
        Me.MenuStrip_Window_ArrangeIcons.Size = New System.Drawing.Size(180, 22)
        Me.MenuStrip_Window_ArrangeIcons.Text = "&Arrange icons"
        '
        'ToolStripSeparator5
        '
        Me.ToolStripSeparator5.Name = "ToolStripSeparator5"
        Me.ToolStripSeparator5.Size = New System.Drawing.Size(177, 6)
        '
        'MenuStrip_Help
        '
        Me.MenuStrip_Help.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MenuStrip_Help_About})
        Me.MenuStrip_Help.Name = "MenuStrip_Help"
        Me.MenuStrip_Help.Size = New System.Drawing.Size(44, 20)
        Me.MenuStrip_Help.Text = "&Help"
        '
        'MenuStrip_Help_About
        '
        Me.MenuStrip_Help_About.Name = "MenuStrip_Help_About"
        Me.MenuStrip_Help_About.Size = New System.Drawing.Size(107, 22)
        Me.MenuStrip_Help_About.Text = "&About"
        '
        'Timer_Main
        '
        Me.Timer_Main.Enabled = True
        Me.Timer_Main.Interval = 10
        '
        'Form_Main
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(746, 451)
        Me.Controls.Add(Me.MenuStrip)
        Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.IsMdiContainer = True
        Me.MainMenuStrip = Me.MenuStrip
        Me.Name = "Form_Main"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Program Manager"
        Me.MenuStrip.ResumeLayout(False)
        Me.MenuStrip.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents MenuStrip As MenuStrip
    Friend WithEvents MenuStrip_File As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_New As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Open As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Move As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Copy As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Delete As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Properties As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator1 As ToolStripSeparator
    Friend WithEvents MenuStrip_File_Run As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator2 As ToolStripSeparator
    Friend WithEvents MenuStrip_File_Logoff As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Shutdown As ToolStripMenuItem
    Friend WithEvents MenuStrip_File_Exit As ToolStripMenuItem
    Friend WithEvents MenuStrip_Options As ToolStripMenuItem
    Friend WithEvents MenuStrip_Options_AutoArrange As ToolStripMenuItem
    Friend WithEvents MenuStrip_Options_MinimizeOnUse As ToolStripMenuItem
    Friend WithEvents MenuStrip_Options_SaveOnExit As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator3 As ToolStripSeparator
    Friend WithEvents MenuStrip_Options_SaveNow As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator4 As ToolStripSeparator
    Friend WithEvents MenuStrip_Options_UpdateGroups As ToolStripMenuItem
    Friend WithEvents MenuStrip_Window As ToolStripMenuItem
    Friend WithEvents MenuStrip_Window_Cascade As ToolStripMenuItem
    Friend WithEvents MenuStrip_Window_Title As ToolStripMenuItem
    Friend WithEvents MenuStrip_Window_ArrangeIcons As ToolStripMenuItem
    Friend WithEvents MenuStrip_Help As ToolStripMenuItem
    Friend WithEvents MenuStrip_Help_About As ToolStripMenuItem
    Friend WithEvents ToolStripSeparator5 As ToolStripSeparator
    Friend WithEvents Timer_Main As Timer
End Class
