' look for your Controller startup block, usually begins with "With Controller"
' make sure the following 2 lines are inside that block, WITHOUT DELETING any other lines inside that block
With Controller
  .Games(cGameName).Settings.Value("sound") = 1 'rudil24: make sure sound is enabled
  .Games(cGameName).Settings.Value("volume") = 0 'rudil24: 0 volume is default aka 0db aka 100%, -32 is silence, 
                                                 'rudil24: POSITIVE NUMBERS ARE ALLOWED for boosting past 100% volume, as of vpinmame 3.6 
End With

