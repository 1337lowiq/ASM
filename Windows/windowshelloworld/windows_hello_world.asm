;int MessageBoxA (
;    [in, optional]      HWND        hWnd,        pointeur
;    [in, optional]      LPCSTR      lpText,      LPCSTR = pointeur vers une string constante -> txt affiché dans la boite
;    [in, optional]      LPCSTR      lpCaption,                                               -> titre de la boite
;    [in]                UINT        uType        UINT = entier non signé
;)

extrn ExitProcess   :PROC
extrn MessageBoxA   :PROC

.data
    caption     DB "Hello", 0
    msg         DB "World", 0

.code

Start PROC
    SUB     rsp, 28h

    XOR     rcx, rcx                    ; ordre -> rcx, rdx, r8, r9
    LEA     rdx, msg
    LEA     r8, caption
    XOR     r9, r9
    CALL    MessageBoxA

    XOR     rcx, rcx
    CALL    ExitProcess

Start ENDP

End