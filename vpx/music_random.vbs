'make sure the following 2 lines are at the top of your script:
Option explicit		'not sure what this does
Randomize		      'i think this resets the seed for better use of Rnd function?

'After table init, which USUALLY ends something like this…
  'Sub table1_Paused:Controller.Pause = 1:End Sub
  'Sub table1_unPaused:Controller.Pause = 0:End Sub
  'Sub table1_exit:Controller.stop:End Sub

'rudil24 A
'Start the music

MusicOn
' PlayMusic "Folder\Song.mp3"  'rudil24 THIS LINE IS OPTIONAL - only if you want that song at table startup
Sub MusicOn
'_____________ Gestion de la musique (Music Management) _____________
' Code by Jogrady7 who helped a lot !!!
' Link : https://www.vpforums.org/index.php?showtopic=13501
' Just paste your music files in C:\Visual Pinball\Music\<myMusicFolder> as defined below
' supposing C:\Visual Pinball is your VP software installation directory
    Dim FileSystemObject, folder, r, ct, file, musicPath, myMusicFolder
    myMusicFolder = "CosmicGunfight" ' the directory name where your mp3 files are stored, must be a subfolder of Visual Pinball\music
    Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
    musicPath = FileSystemObject.GetAbsolutePathName(".") ' get path to Visual Pinball\table
    musicPath = Left(musicPath, Len(musicPath) - 6) + "music\" 'get path to Visual Pinball\music
    Set folder = FileSystemObject.GetFolder(musicPath + myMusicFolder)
    Randomize
    r = INT(folder.Files.Count * Rnd + 1)
    ct=1
    For Each file in folder.Files 'get every file in myMusicFolder, for each one count it and see if the count matches the random number
        if ct = r Then  ' random file found
            if (LCase(Right(file,4))) = ".mp3" Then ' can only play mp3 files
               PlayMusic Mid(file, Len(musicPath) + 1, 1000) ' PlayMusic defaults to Visual Pinball\music\, need to get myMusicFolder\song name
            End If 
       End If
   ct = ct + 1
   Next
 End Sub
 
Sub Table1_MusicDone()
    MusicOn
 End Sub
'rudil24 A /

'Then look for your keys section, specifically KeyDown...
'**********
' Keys
'**********

Sub table1_KeyDown(ByVal Keycode)
'rudil24 B
	If KeyCode = RightMagnaSave Then MusicOn	
  	If KeyCode = LeftMagnaSave Then EndMusic
'rudil24 B /

' OR if they use Magna keys for LUTs you’ll need to augment that so they can do the dual function:
	'rudil24 B
  	If KeyCode = LeftMagnaSave Then
		bLutActive = True: 
		Lutbox.text = "level of darkness " & LUTImage + 1
		EndMusic
	End If
	'rudil24 B /
    If keycode = RightMagnaSave Then
        If bLutActive Then NextLUT:End If
	'rudil24 C
		MusicOn
	'rudil24 C /
    End If


' and if you want, you can lock first song in for every time game starts:
	If KeyCode = StartGameKey Then PlayMusic "EM\Stones\RS01_TrackAlt.mp3" 

