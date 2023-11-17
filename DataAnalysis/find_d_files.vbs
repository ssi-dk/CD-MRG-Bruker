Dim objShell, objFolder, strFolderPath, objFSO, objSubFolder, folderList
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.BrowseForFolder(0, "Select a folder", 0)

Dim open_analysis

If Not objFolder Is Nothing Then
    strFolderPath = objFolder.Items().Item().Path
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFolder = objFSO.GetFolder(strFolderPath)
    Set folderList = CreateObject("Scripting.Dictionary")

    For Each objSubFolder In objFolder.SubFolders
        If Right(objSubFolder.Name, 2) = ".d" Then
            folderList.Add objSubFolder.Path, objSubFolder.Path
        End If
    Next

    ' Loop through the list
    For Each path In folderList.Keys
        ' You can use 'path' for the rest of your script
        set open_analysis = Application.Analyses.Open(path + "\analysis.baf") 

        WScript.Echo path

        open_analysis.close
    Next
End If