function getClientInfo()
    return {
      name = "ClearParameter",
      author = "Tart",
      versionNumber = 1,
      minEditorVersion = 65540
    }
  end
  
  local form = {
      title = "ClearParameter",
      message = "All parameters cleared!",
      buttons = "Cancel"
  }

  function main()
    local mainRef = SV:getProject():getTrack(1):getGroupReference(1)
    local mainGroup = mainRef:getTarget()

    local myPitchbend = mainGroup:getParameter("PitchDelta")
    local myVibratoEnv = mainGroup:getParameter("vibratoEnv")
    local myLoudness = mainGroup:getParameter("loudness")
    local myTension = mainGroup:getParameter("tension")
    local myBreathiness = mainGroup:getParameter("breathiness")
    local myVoicing = mainGroup:getParameter("voicing")
    local myGender = mainGroup:getParameter("gender")

    myPitchbend:removeAll()
    myVibratoEnv:removeAll()
    myLoudness:removeAll()
    myTension:removeAll()
    myBreathiness:removeAll()
    myVoicing:removeAll()
    myGender:removeAll()

    SV:showCustomDialog(form)

    SV:finish()
  end