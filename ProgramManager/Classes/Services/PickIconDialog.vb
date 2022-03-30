Imports System.Runtime.InteropServices
Imports System.Security

Public Enum MUIFlags As UInteger
    MUI_LANGUAGE_ID = &H4
    MUI_LANGUAGE_NAME = &H8
End Enum

<SuppressUnmanagedCodeSecurity, SecurityCritical>
Friend Class NativeMethods
    <DllImport("Kernel32.dll", SetLastError:=True, CharSet:=CharSet.Unicode)>
    Friend Shared Function SetProcessPreferredUILanguages(dwFlags As MUIFlags, pwszLanguagesBuffer As String, ByRef pulNumLanguages As UInteger) As Boolean
    End Function

    <DllImport("Shell32.dll", SetLastError:=True, CharSet:=CharSet.Auto)>
    Friend Shared Function PickIconDlg(hwnd As IntPtr, pszIconPath As String, cchIconPath As UInteger, ByRef piIconIndex As Integer) As Integer
    End Function
End Class