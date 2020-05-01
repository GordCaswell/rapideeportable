${SegmentFile}

${SegmentInit}
	${If} $Bits == 32
		${If} ${FileExists} "$EXEDIR\App\RapidEE\rapideeX86.exe"
		${AndIf} ${FileExists} "$EXEDIR\App\RapidEE\rapidee.exe"
			Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX64.exe"
			Rename "$EXEDIR\App\RapidEE\rapideeX86.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
		${Else}
			Rename "$EXEDIR\App\RapidEE\rapideeX86.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
		${EndIf}
	${ElseIf} $Bits == 64
		${If} ${FileExists} "$EXEDIR\App\RapidEE\rapideeX64.exe"
		${AndIf} ${FileExists} "$EXEDIR\App\RapidEE\rapidee.exe"
			Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX86.exe"
			Rename "$EXEDIR\App\RapidEE\rapideeX64.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
		${Else}
			Rename "$EXEDIR\App\RapidEE\rapideeX64.exe" "$EXEDIR\App\RapidEE\rapidee.exe"
		${EndIf}
	${EndIf}
!macroend

${SegmentPost}
	${If} $Bits == 32
		Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX86.exe"
	${ElseIf} $Bits == 64
		Rename "$EXEDIR\App\RapidEE\rapidee.exe" "$EXEDIR\App\RapidEE\rapideeX64.exe"
	${EndIf}
!macroend