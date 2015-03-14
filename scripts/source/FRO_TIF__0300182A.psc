;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname FRO_TIF__0300182A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Float CurrentRP = RS.GetRelationshipPoints(akSpeaker)

PlayerRef.RemoveItem(Gold, 25)
akspeaker.AddItem(Gold, 25)
BeggarReceivedGold.SetValueInt(25)
FavorJobsBeggarsAbility.Cast(PlayerRef, PlayerRef)
FavorJobsBeggarsMessage.Show()

If(CurrentRP < 150)
	If(RS.WouldGiveRP(akSpeaker, 25 * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerGold") + RS.GetRelationshipPoints(akSpeaker)) >= 150)
		RS.SetRelationshipPoints(akSpeaker, 150)
	Else
		RS.ModRelationshipPoints(akSpeaker,  25 * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerGold"))
	EndIf
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_FW_Relationship Property RS Auto

Actor Property PlayerRef Auto
GlobalVariable Property BeggarReceivedGold Auto
MiscObject Property Gold Auto
Spell Property FavorJobsBeggarsAbility Auto
Message Property FavorJobsBeggarsMessage Auto