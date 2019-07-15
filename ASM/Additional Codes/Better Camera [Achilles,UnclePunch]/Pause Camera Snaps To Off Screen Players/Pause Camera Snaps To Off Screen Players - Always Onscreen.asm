#To be inserted at 8002cf34
.include "../../../Globals.s"

#Check if player is alive
  load r3,0x8046b6a0
  lbz r3,0x1(r3)
  branchl r12,PlayerBlock_LoadMainCharDataOffset
  lwz r3,0x2C(r3)
  lbz r3,0x221F(r3)
  rlwinm. r3,r3,0,25,25
  bne Dead

Alive:
  li  r3,0
  b Exit
Dead:
  li  r3,1
Exit:
