${SegmentFile}

${SegmentInit}
	${If} $Bits == 32
		Rename "$INSTDIR\App\RapidEE\rapideeX86.exe" "$INSTDIR\App\RapidEE\rapidee.exe"
	${ElseIf} $Bits == 64
		Rename "$INSTDIR\App\RapidEE\rapideeX64.exe" "$INSTDIR\App\RapidEE\rapidee.exe"
	${EndIf}
!macroend

${SegmentPost}
	${If} $Bits == 32
		Rename "$INSTDIR\App\RapidEE\rapidee.exe" "$INSTDIR\App\RapidEE\rapideeX86.exe"
	${ElseIf} $Bits == 64
		Rename "$INSTDIR\App\RapidEE\rapidee.exe" "$INSTDIR\App\RapidEE\rapideeX64.exe"
	${EndIf}
!macroend