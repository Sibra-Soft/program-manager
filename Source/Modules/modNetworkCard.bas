Attribute VB_Name = "modNetworkCard"
'-------------------------------------------------------
' Author:   Sibra-Soft Software Production
' Date:     15-06-2015
' Module:   GET: Hostname, MacAddress, IPAddress
' Barcode:  011506201501
'-------------------------------------------------------
Enum FT
    Hyphens
    Colons
    Dots
End Enum

Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Function Get_Hostname() As String
Dim sComputer As String
Dim lpBuff As String * 1024
    
'Get the Computer Name
GetComputerName lpBuff, Len(lpBuff)
sComputer = Left$(lpBuff, (InStr(1, lpBuff, vbNullChar)) - 1)
lpBuff = ""
    
Get_Hostname = sComputer
End Function
Public Function Get_MAC_Address(ByVal Address As FT) As String
Dim oWMIService As Object
Dim oColAdapters As Object
Dim oObjAdapter As Object

Set oWMIService = GetObject("winmgmts:" & "!\\.\root\cimv2")
Set oColAdapters = oWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each oObjAdapter In oColAdapters
    If Address = Colons Then: Get_MAC_Address = oObjAdapter.MACAddress
    If Address = Dots Then: Get_MAC_Address = Replace(oObjAdapter.MACAddress, ":", ".")
    If Address = Hyphens Then: Get_MAC_Address = Replace(oObjAdapter.MACAddress, ":", "-")
Next

Set oObjAdapter = Nothing
Set oColAdapters = Nothing
Set oWMIService = Nothing
End Function
Public Function Get_Local_IP_Address() As String
Dim oWMIService As Object
Dim oColAdapters As Object
Dim oObjAdapter As Object

Set oWMIService = GetObject("winmgmts:" & "!\\.\root\cimv2")
Set oColAdapters = oWMIService.ExecQuery("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True")

For Each oObjAdapter In oColAdapters
    Get_Local_IP_Address = oObjAdapter.IPAddress(0)
Next

Set oObjAdapter = Nothing
Set oColAdapters = Nothing
Set oWMIService = Nothing
End Function
