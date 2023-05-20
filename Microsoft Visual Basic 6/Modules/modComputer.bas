Attribute VB_Name = "modComputer"
'-------------------------------------------------------
' Author:   Sibra-Soft Software Production
' Date:     19-10-2016
' Module:   GET:        InstalledMemory
'
' Barcode:  0191021600236
'-------------------------------------------------------

Private Type MEMORYSTATUS
    dwLength As Long
    dwMemoryLoad As Long
    dwTotalPhys As Long
    dwAvailPhys As Long
    dwTotalPageFile As Long
    dwAvailPageFile As Long
    dwTotalVirtual As Long
    dwAvailVirtual As Long
End Type

Private Declare Sub GlobalMemoryStatus Lib "kernel32" _
   (lpBuffer As MEMORYSTATUS)
Public Function InstalledMemory() As String
Dim MS As MEMORYSTATUS
   
MS.dwLength = Len(MS)
GlobalMemoryStatus MS
   
InstalledMemory = MS.dwTotalPhys
End Function
