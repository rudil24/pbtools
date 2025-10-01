'for this one you have to call out the actual filenames for your music.
'rudil24 A 
' Music Player for Continuous (non-random) Play
' first set up  the directory name where your mp3 files are stored, must be a subfolder of Visual Pinball\Music, 
' and name each track within that folder with a prefix and a continuous count such as 01, 02, OR _01, _02, etc.
' Declare variables at the top of your script so they hold their value
Dim musicNum, myMusicFolder, myTrackPrefix, numTracks
myMusicFolder = "Hamilton"  'the folder under Visual Pinball\Music
myTrackPrefix = "Hamilton_" 'the prefix of every track. Immediately following this prefix should be 01, 02, ... for every track.
numTracks = 46 ' Set the total number of tracks you want to loop through (note: must be <= total tracks in that folder)

' Initialize musicNum to 0 the first time the script runs
If IsEmpty(musicNum) Then musicNum = 0

' Call the sub to play music at startup
NextTrack

' --- Music Player Subroutines ---

Sub NextTrack
  Dim fileId
  Dim trackNumber
  trackNumber = musicNum + 1 ' The actual file number is one higher than the index

  ' Manually format the number to have a leading zero (e.g., "01", "02")
  If trackNumber < 10 Then
    fileId = "0" & trackNumber
  Else
    fileId = CStr(trackNumber) ' CStr ensures it's treated as a string
  End If

  ' Build the file path string using the '&' operator
  PlayMusic myMusicFolder & "\" & myTrackPrefix & fileId & ".mp3"

  ' Advance the counter, using Mod numTracks to loop back to the start
  musicNum = (musicNum + 1) Mod numTracks
End Sub

Sub Table1_MusicDone 'make sure your table script name matches Table1 here, or change this to match your table name
  ' This sub gets called when a track finishes, and it simply calls NextTrack to play the next one
  NextTrack
End Sub
'rudil24 A /

'Borrowing HiRez' keys section, RMagna points to NextTrack...
'**********
' Keys
'**********

Sub table1_KeyDown(ByVal Keycode)
	If KeyCode = RightMagnaSave Then NextTrack	
  	If KeyCode = LeftMagnaSave Then EndMusic
' and if you want, you can lock first song in for every time game starts:
	If KeyCode = StartGameKey Then PlayMusic "Hamilton\Hamilton_start.mp3" 

