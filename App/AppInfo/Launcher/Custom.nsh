${SegmentFile}

${SegmentInit}
	${If} $Bits == 32
		Rename "$EXEDIR\App\RapidEE\rapideeX86.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
	${ElseIf} $Bits == 64
		Rename "$EXEDIR\App\RapidEE\rapideeX64.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
	${EndIf}
!macroend

${SegmentPost}
	${If} $Bits == 32
		Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX86.exe"
	${ElseIf} $Bits == 64
		Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX64.exe"
	${EndIf}
!macroend