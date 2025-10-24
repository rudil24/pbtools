Sub m01_Timer
    Dim SoundShuffle
    SoundShuffle = INT(15 * RND(1) ) 'switched from int(5 to int(15 for total of songs
    Select Case SoundShuffle   
		Case 0:PlayMusic"LuckyLuke\FD_1.mp3":m01.enabled=true:m01.interval=178953    '2:58.953	Titoli
		Case 1:PlayMusic"LuckyLuke\FD_2.mp3":m01.enabled=true:m01.interval=162653    '2:42.653	The Good The Bad and The Ugly
		Case 2:PlayMusic"LuckyLuke\FD_3.mp3":m01.enabled=true:m01.interval=186215    '3:06.215	La resa dei conti
		Case 3:PlayMusic"LuckyLuke\FD_4.mp3":m01.enabled=true:m01.interval=150636    '2:30.636	For a few $ more
		Case 4:PlayMusic"LuckyLuke\FD_5.mp3":m01.enabled=true:m01.interval=171038    '2:51.038	Titoli alt version
		Case 5:PlayMusic"LuckyLuke\FD_6.mp3":m01.enabled=true:m01.interval=91443     '1:31.443	Surly Joe
		Case 6:PlayMusic"LuckyLuke\FD_7.mp3":m01.enabled=true:m01.interval=237258    '3:57.258	Big Iron
		Case 7:PlayMusic"LuckyLuke\FD_8.mp3":m01.enabled=true:m01.interval=130208    '2:10.208	Running Gun
		Case 8:PlayMusic"LuckyLuke\FD_9.mp3":m01.enabled=true:m01.interval=259959    '4:19.959	El Paso
		Case 9:PlayMusic"LuckyLuke\FD_10.mp3":m01.enabled=true:m01.interval=301180   '5:01.180  Mr. Shorty
		Case 10:PlayMusic"LuckyLuke\FD_11.mp3":m01.enabled=true:m01.interval=162496  '2:42.496	The Game
		Case 11:PlayMusic"LuckyLuke\FD_12.mp3":m01.enabled=true:m01.interval=168426  '2:48.426	The Last Gunfighter Ballad
		Case 12:PlayMusic"LuckyLuke\FD_13.mp3":m01.enabled=true:m01.interval=177934  '2:57.934  The Man Who Shot Liberty Valance
		Case 13:PlayMusic"LuckyLuke\FD_14.mp3":m01.enabled=true:m01.interval=193992  '3:13.992  Ringo
		Case 14:PlayMusic"LuckyLuke\FD_15.mp3":m01.enabled=true:m01.interval=258208	 '4:18.208  Me & My Uncle
'FD_0.mp3 is the attract song - Pat Woods I'm A Poor Lonesome Cowboy (full version)
'FD_99.mp3 is now the closing song - Buster Scruggs When A Cowboy Trades His Spurs For Wings
    End Select
End Sub