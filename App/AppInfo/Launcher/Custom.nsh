${SegmentFile}

${Segment.OnInit}
	; Borrowed the following from PAL 2.2, Remove on release of PAL 2.2
		; Work out if it's 64-bit or 32-bit
	System::Call kernel32::GetCurrentProcess()i.s
	System::Call kernel32::IsWow64Process(is,*i.r0)
	${If} $0 == 0
		StrCpy $Bits 32
	${Else}
		StrCpy $Bits 64
	${EndIf}
!macroend

${SegmentPre}
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