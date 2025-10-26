Sub table1_Paused:Controller.Pause = 1:End Sub
Sub table1_unPaused:Controller.Pause = 0:End Sub
Sub table1_exit:Controller.stop:End Sub

' those 3 lines above should end at Line 122 of JP's Viper 6.0.0
' IMPORTANT: The following works with JP's Viper version 6.0.0 or newer
' It does NOT WORK GREAT with 5.5 and previous b/c JP pre 6.0 tables used magnas for LUT control. 
' he now does LUT control with F12 menu. i have the old script that allows LUT, Music, and rotator controller
' somewhere, reach out to me if you need it. rudil24@gmail.com
' *****
' ALSO IMPORTANT: This snippet won't work if you don't have at least Jawbreaker in the folder Music\JP, and it has to be named 
' exactly as below since i specify the filename at table startup. All other music you want in Music\JP can be named whatever you want, 
' thanks to JoGrady7's excellent random music script that I adapted below
' insert the following right after the table exit commands above, and
' REPLACE your KeyDown section (the stuff I do in KeyDown will allow your LMagna/RMagna
' to run the special Viper rotator controller in this table, when the ball is engaged, 
' or next track / stop music when not engaged.
'rudil24 A
 'Start the music

PlayMusic "JP\Judas Priest - Defenders of the Faith - 02 - Jawbreaker.mp3"

Sub MusicOn
'_____________ Gestion de la musique (Music Management) _____________
' Code by Jogrady7 who helped a lot !!!
' Link : https://www.vpforums.org/index.php?showtopic=13501
' Just paste your music files in C:\Visual Pinball\Music\<myMusicFolder> as defined below
' supposing C:\Visual Pinball is your VP software installation directory
    Dim FileSystemObject, folder, r, ct, file, musicPath, myMusicFolder
    myMusicFolder = "JP" ' the directory name where your mp3 files are stored, must be a subfolder of Visual Pinball\music
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

'**********
' Keys
'**********

Sub table1_KeyDown(ByVal Keycode)
    If keycode = LeftTiltKey Then Nudge 90, 5:PlaySound SoundFX("fx_nudge", 0), 0, 1, -0.1, 0.25
    If keycode = RightTiltKey Then Nudge 270, 5:PlaySound SoundFX("fx_nudge", 0), 0, 1, 0.1, 0.25
    If keycode = CenterTiltKey Then Nudge 0, 6:PlaySound SoundFX("fx_nudge", 0), 0, 1, 0, 0.25
    If KeyCode = LeftMagnaSave Then 
'rudil24 B
		WheelDir = -2
		If NOT (Controller.Switch(40)) Then 
			EndMusic  'if no ball in viper, respond to LMagna music commands 
		End If
	End If
'rudil24 B /

    If KeyCode = RightMagnaSave Then
'rudil24 C
		Controller.Switch(4) = 1
		If NOT (Controller.Switch(40)) Then 
			MusicOn 'if no ball in viper, respond to RMagna music commands 
		End If
	End If
'rudil24 C /
   
    If vpmKeyDown(keycode)Then Exit Sub
    If keycode = PlungerKey Then PlaySoundAt "fx_PlungerPull", Plunger:Plunger.Pullback
End Sub

Sub table1_KeyUp(ByVal Keycode)
    If KeyCode = LeftMagnaSave Then WheelDir = 2
    If KeyCode = RightMagnaSave Then Controller.Switch(4) = 0
    If vpmKeyUp(keycode)Then Exit Sub
    If keycode = PlungerKey Then PlaySoundAt "fx_plunger", Plunger:Plunger.Fire
End Sub

'Switches should be the next section (JP Viper 6.0.0)