extrn ExitProcess :proc,
      MessageBoxA :proc

.data
caption db '64-bit hello!', 0
message db 'Hello World!',  0

.code
Start proc
  sub RSP, 8*5

  xor RCX, RCX
  lea RDX, message
  lea R8, caption
  xor R9, R9

  call MessageBoxA

  xor RCX, RCX

  call ExitProcess
Start endp
end