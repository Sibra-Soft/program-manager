Attribute VB_Name = "modSettings"
Option Explicit

Private Const REG_SZ                    As Long = 1

Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_CONFIG = &H80000005
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003

Private Const BASE_KEY                  As String = "SOFTWARE"
Private Const KEY_WRITE = &H20006

Private Const ERROR_NONE                As Long = 0
Private Const ERROR_KEY_DOES_NOT_EXIST  As Long = 2
Private Const ERROR_SUCCESS = 0&

Private Const READ_CONTROL              As Long = &H20000
Private Const STANDARD_RIGHTS_READ      As Long = (READ_CONTROL)
Private Const STANDARD_RIGHTS_ALL       As Long = &H1F0000
Private Const KEY_QUERY_VALUE           As Long = &H1
Private Const KEY_SET_VALUE             As Long = &H2
Private Const KEY_CREATE_SUB_KEY        As Long = &H4
Private Const KEY_ENUMERATE_SUB_KEYS    As Long = &H8
Private Const KEY_NOTIFY                As Long = &H10
Private Const KEY_CREATE_LINK           As Long = &H20
Private Const SYNCHRONIZE               As Long = &H100000
Private Const KEY_ALL_ACCESS            As Long = ((STANDARD_RIGHTS_ALL Or _
                                                    KEY_QUERY_VALUE Or _
                                                    KEY_SET_VALUE Or _
                                                    KEY_CREATE_SUB_KEY Or _
                                                    KEY_ENUMERATE_SUB_KEYS Or _
                                                    KEY_NOTIFY Or _
                                                    KEY_CREATE_LINK) _
                                                    And (Not SYNCHRONIZE))
Private Const KEY_READ                  As Long = ((STANDARD_RIGHTS_READ Or _
                                                    KEY_QUERY_VALUE Or _
                                                    KEY_ENUMERATE_SUB_KEYS Or _
                                                    KEY_NOTIFY) _
                                                    And (Not SYNCHRONIZE))
                                                    
Private Declare Function RegEnumKey Lib "advapi32.dll" Alias "RegEnumKeyA" _
    (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpName As String, _
    ByVal cbName As Long) As Long
    
Private Declare Function RegDeleteKey Lib "advapi32.dll" Alias "RegDeleteKeyA" (ByVal hKey As Long, ByVal lpSubKey As String) As Long
    
Private Declare Function RegDeleteValue Lib "advapi32.dll" Alias _
    "RegDeleteValueA" (ByVal hKey As Long, ByVal lpValueName As String) As Long
    
Private Declare Function RegCloseKey _
    Lib "advapi32.dll" _
    (ByVal hKey As Long) As Long
    
Private Declare Function RegEnumValue Lib "advapi32.dll" Alias "RegEnumValueA" _
    (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpValueName As String, _
    lpcbValueName As Long, ByVal lpReserved As Long, lpType As Long, lpData As Byte, _
    lpcbData As Long) As Long
    
Private Declare Function RegCreateKeyEx _
    Lib "advapi32.dll" Alias "RegCreateKeyExA" _
    (ByVal hKey As Long, _
     ByVal lpSubKey As String, _
     ByVal Reserved As Long, _
     ByVal lpClass As String, _
     ByVal dwOptions As Long, _
     ByVal samDesired As Long, _
     ByVal lpSecurityAttributes As Long, _
     phkResult As Long, _
     lpdwDisposition As Long) As Long
     
Private Declare Function RegOpenKeyEx _
    Lib "advapi32.dll" Alias "RegOpenKeyExA" _
    (ByVal hKey As Long, _
     ByVal lpSubKey As String, _
     ByVal ulOptions As Long, _
     ByVal samDesired As Long, _
     phkResult As Long) As Long
     
Private Declare Function RegQueryValueExString _
    Lib "advapi32.dll" Alias "RegQueryValueExA" _
    (ByVal hKey As Long, _
     ByVal lpValueName As String, _
     ByVal lpReserved As Long, _
     lpType As Long, _
     ByVal lpData As String, _
     lpcbData As Long) As Long
     
Private Declare Function RegQueryValueExNULL _
    Lib "advapi32.dll" Alias "RegQueryValueExA" _
    (ByVal hKey As Long, _
     ByVal lpValueName As String, _
     ByVal lpReserved As Long, _
     lpType As Long, _
     ByVal lpData As Long, _
     lpcbData As Long) As Long
     
Private Declare Function RegSetValueExString _
    Lib "advapi32.dll" Alias "RegSetValueExA" _
    (ByVal hKey As Long, _
     ByVal lpValueName As String, _
     ByVal Reserved As Long, _
     ByVal dwType As Long, _
     ByVal lpData As String, _
     ByVal cbData As Long) As Long
Public Sub WriteSetting(ByVal sAppName As String, _
                             ByVal sSection As String, _
                             ByVal sKey As String, _
                             ByVal sSetting As String)
                             
    Dim lRetVal         As Long
    Dim sNewKey         As String
    Dim lDisposition    As Long
    Dim lHandle         As Long
    Dim lErrNumber      As Long
    Dim sErrDescription As String
    Dim sErrSource      As String
    
    On Error GoTo ERROR_HANDLER
    
    If Trim(sAppName) = "" Then
        Err.Raise vbObjectError + 1000, , "AppName may not be empty"
    End If
    If Trim(sSection) = "" Then
        Err.Raise vbObjectError + 1001, , "Section may not be empty"
    End If
    If Trim(sKey) = "" Then
        Err.Raise vbObjectError + 1002, , "Key may not be empty"
    End If
    
    sNewKey = BASE_KEY & "\" & Trim(sAppName) & "\" & Trim(sSection)
    
    ' Create the key or open it if it already exists
    lRetVal = RegCreateKeyEx(HKEY_CURRENT_USER, sNewKey, 0, vbNullString, 0, _
        KEY_ALL_ACCESS, 0, lHandle, lDisposition)
        
    If lRetVal <> ERROR_NONE Then
        Err.Raise vbObjectError + 2000 + lRetVal, , _
            "Could not open/create registry section"
    End If
    
    ' Set the key value
    lRetVal = RegSetValueExString(lHandle, sKey, 0, REG_SZ, sSetting, _
        Len(sSetting))
    
    If lRetVal <> ERROR_NONE Then
        Err.Raise vbObjectError + 2000 + lRetVal, , "Could not set key value"
    End If
    
TIDY_UP:
    On Error Resume Next
    
    RegCloseKey lHandle
    
    If lErrNumber <> 0 Then
        On Error GoTo 0
        
        Err.Raise lErrNumber, sErrSource, sErrDescription
    End If
Exit Sub

ERROR_HANDLER:
    lErrNumber = Err.Number
    sErrSource = Err.Source
    sErrDescription = Err.Description
    Resume TIDY_UP
End Sub
Public Function ReadSetting(ByVal sAppName As String, _
                                 ByVal sSection As String, _
                                 ByVal sKey As String, _
                                 Optional ByVal sDefault As String) As String
    Dim lRetVal         As Long
    Dim sFullKey        As String
    Dim lHandle         As Long
    Dim lType           As Long
    Dim lLength         As Long
    Dim sValue          As String
    Dim lErrNumber      As Long
    Dim sErrDescription As String
    Dim sErrSource      As String
    
    On Error GoTo ERROR_HANDLER

    If Trim(sAppName) = "" Then
        Err.Raise vbObjectError + 1000, , "AppName may not be empty"
    End If
    If Trim(sSection) = "" Then
        Err.Raise vbObjectError + 1001, , "Section may not be empty"
    End If
    If Trim(sKey) = "" Then
        Err.Raise vbObjectError + 1002, , "Key may not be empty"
    End If
    
    sFullKey = BASE_KEY & "\" & Trim(sAppName) & "\" & Trim(sSection)

    ' Open up the key
    lRetVal = RegOpenKeyEx(HKEY_CURRENT_USER, sFullKey, 0, KEY_READ, lHandle)
    If lRetVal <> ERROR_NONE Then
        If lRetVal = ERROR_KEY_DOES_NOT_EXIST Then
            ReadSetting = sDefault
            Exit Function
        Else
            Err.Raise vbObjectError + 2000 + lRetVal, , _
                "Could not open registry section"
        End If
    End If
    
    ' Get size and type
    lRetVal = RegQueryValueExNULL(lHandle, sKey, 0, lType, 0, lLength)
    If lRetVal <> ERROR_NONE Then
        ReadSetting = sDefault
        Exit Function
    End If
    
    ' Is it stored as a string in the registry?
    If lType = REG_SZ Then
        sValue = String(lLength, 0)
        
        If lLength = 0 Then
            ReadSetting = ""
        Else
            lRetVal = RegQueryValueExString(lHandle, sKey, 0, lType, _
                sValue, lLength)
            
            If lRetVal = ERROR_NONE Then
                ReadSetting = Left(sValue, lLength - 1)
            Else
                ReadSetting = sDefault
            End If
        End If
    Else
        Err.Raise vbObjectError + 2000 + lType, , _
            "Registry data not a string"
    End If
    
TIDY_UP:
    On Error Resume Next
    
    RegCloseKey lHandle
    
    If lErrNumber <> 0 Then
        On Error GoTo 0
        
        Err.Raise lErrNumber, sErrSource, sErrDescription
    End If
Exit Function

ERROR_HANDLER:
    lErrNumber = Err.Number
    sErrSource = Err.Source
    sErrDescription = Err.Description
    Resume TIDY_UP
End Function
Public Function DeleteRegistryValue(ByVal hKey As Long, ByVal KeyName As String, ByVal ValueName As String) As Boolean
Dim handle As Long

If RegOpenKeyEx(hKey, KeyName, 0, KEY_WRITE, handle) Then Exit Function

DeleteRegistryValue = (RegDeleteValue(handle, ValueName) = 0)
    
RegCloseKey handle
End Function
Function EnumRegistryKeys(ByVal hKey As Long, ByVal KeyName As String) As Collection
Dim handle As Long
Dim length As Long
Dim index As Long
Dim subkeyName As String
    
Set EnumRegistryKeys = New Collection
    
If Len(KeyName) Then
    If RegOpenKeyEx(hKey, KeyName, 0, KEY_READ, handle) Then Exit Function
    hKey = handle
End If

Do
    length = 260
    subkeyName = Space$(length)
    
    If RegEnumKey(hKey, index, subkeyName, length) Then Exit Do
    
    subkeyName = Left$(subkeyName, InStr(subkeyName, vbNullChar) - 1)
    EnumRegistryKeys.Add subkeyName, subkeyName
    
    index = index + 1
Loop

If handle Then RegCloseKey handle
End Function
Public Function EnumRegistryValues(ByVal inMainKey As Long, ByVal inSubKey As String) As Collection
Dim mMainKey As Long
Dim mIndent As Integer
Dim mStopFlag As Boolean
Dim mAccumText As String                 ' To avoid blinks (if changing Text1 every time)
Dim mResult As Long

Dim mKey As Long
Dim mIndex As Long
Dim mReturnEntry As String
Dim mEntry As String
Dim mEntryLength As Long
Dim mDataType As Long
Dim arrDataByte(1 To 1024) As Byte
Dim mDataByteLength As Long
Dim mDataByteValue As String
Dim i As Integer
Dim j
Dim y
Dim tmp As String, mChr As String
Dim mAlignPos, mAlignPos0, mAlignPos1
    
Set EnumRegistryValues = New Collection
    
    mResult = RegOpenKeyEx(inMainKey, inSubKey, 0&, KEY_ALL_ACCESS, mKey)
    If mResult <> 0 Then
        MsgBox "Error RegOpenKeyEx for " & inSubKey
        Exit Function
    End If
    
    tmp = ""
    For i = Len(inSubKey) To 1 Step -1
        mChr = Mid(inSubKey, i, 1)
        If mChr = "\" Then
            Exit For
        End If
        tmp = mChr & tmp
    Next i
    
      ' Display subkey (without its parent) and its own entries (& values),
      ' at a position of mIndent
    mAccumText = mAccumText & Space(mIndent) & tmp
    
    mAlignPos0 = 5
    mAlignPos1 = mAlignPos0 + mIndent + Len(tmp)
    
    mIndex = 0
    Do
        If mIndex = 0 Then
             mAlignPos = mAlignPos0
        Else
             mAlignPos = mAlignPos1
        End If
    
        mEntryLength = 1024
        mDataByteLength = 1024
        mEntry = Space$(mEntryLength)
        mResult = RegEnumValue(mKey, mIndex, mEntry, mEntryLength, 0, _
             mDataType, arrDataByte(1), mDataByteLength)
        If mResult <> 0 Then                  ' No more
             Exit Do
        End If

        mEntry = Left$(mEntry, mEntryLength)
        
          ' Note if value is "(No value set)" then the following
          ' will not be display, i.e. as if no entry exists.
        If mEntry = "" And mDataByteLength > 0 Then
             mEntry = "[Default]"
        End If
        
        mDataByteValue = ""
        Select Case mDataType
            Case REG_SZ
                For i = 1 To mDataByteLength - 1
                    mDataByteValue = mDataByteValue & Chr$(arrDataByte(i))
                Next
                
                If Left(mEntry, 1) = "@" Then
                
                Else
                    EnumRegistryValues.Add mEntry & ";" & mDataByteValue
                End If
        End Select
        mIndex = mIndex + 1
    Loop
End Function
Public Sub DeleteRegistryKey(ByVal section As Long, ByVal key_name As String)
Dim pos As Integer
Dim parent_key_name As String
Dim parent_hKey As Long

If Right$(key_name, 1) = "\" Then key_name = Left$(key_name, Len(key_name) - 1)

' Delete the key's subkeys.
DeleteRegistrySubkeys section, key_name

' Get the parent's name.
pos = InStrRev(key_name, "\")
If pos = 0 Then
    ' This is a top-level key.
    ' Delete it from the section.
    RegDeleteKey section, key_name
Else
    ' This is not a top-level key.
    ' Find the parent key.
    parent_key_name = Left$(key_name, pos - 1)
    key_name = Mid$(key_name, pos + 1)

    ' Open the parent key.
    If RegOpenKeyEx(section, _
        parent_key_name, _
        0&, KEY_ALL_ACCESS, parent_hKey) <> _
            ERROR_SUCCESS _
    Then
        MsgBox "Error opening parent key"
    Else
        ' Delete the key from its parent.
        RegDeleteKey parent_hKey, key_name

        ' Close the parent key.
        RegCloseKey parent_hKey
    End If
End If
End Sub
Public Sub DeleteRegistrySubkeys(ByVal section As Long, ByVal key_name As String)
Dim hKey As Long
Dim subkeys As Collection
Dim subkey_num As Long
Dim length As Long
Dim subkey_name As String

' Open the key.
If RegOpenKeyEx(section, key_name, 0&, KEY_ALL_ACCESS, hKey) <> ERROR_SUCCESS Then
    MsgBox "Error opening key '" & key_name & "'"
    Exit Sub
End If

' Enumerate the subkeys.
Set subkeys = New Collection
subkey_num = 0
Do
    ' Enumerate subkeys until we get an error.
    length = 256
    subkey_name = Space$(length)
    If RegEnumKey(hKey, subkey_num, _
        subkey_name, length) _
            <> ERROR_SUCCESS Then Exit Do
    subkey_num = subkey_num + 1

    subkey_name = Left$(subkey_name, InStr(subkey_name, _
        Chr$(0)) - 1)
    subkeys.Add subkey_name
Loop

' Recursively delete the subkeys and their subkeys.
For subkey_num = 1 To subkeys.Count
    ' Delete the subkey's subkeys.
    DeleteRegistrySubkeys section, key_name & "\" & subkeys(subkey_num)

    ' Delete the subkey.
    RegDeleteKey hKey, subkeys(subkey_num)
Next subkey_num

' Close the key.
RegCloseKey hKey
End Sub
