    .org ObjectGroup_InitJumpTable
;****************************** OBJECT INITIALIZATION ******************************
    
OBJ_SHYGUY    		= $50
OBJ_BRICK           = $51
OBJ_VEGGIEGUY       = $52
OBJ_SNOWGUY         = $53
OBJ_SNOWBALL        = $54
OBJ_SNIFIT          = $55
OBJ_NINJI           = $5
OBJ_BIRDO           = $57
OBJ_PHANTO          = $58
OBJ_SPARK           = $59
OBJ_BOBOMB          = $5A
OBJ_FLOATMINE       = $5B


    .word ObjInit_ShyGuy ; Object $50
    .word ObjInit_Brick ; Object $51
    .word ObjInit_VeggieGuy ; Object $52
    .word ObjInit_SnowGuy ; Object $53
    .word ObjInit_SnowBall ; Object $54
    .word ObjInit_Snifit ; Object $55
    .word ObjInit_Ninji ; Object $56
    .word ObjInit_Birdo ; Object $57
    .word ObjInit_Phanto ; Object $58
    .word ObjInit_Spark ; Object $59
    .word ObjInit_BobOmb ; Object $5A
    .word ObjInit_FloatMine ; Object $5B
    .word ObjInit_DoNothing ; Object $5C
    .word ObjInit_DoNothing ; Object $5D
    .word ObjInit_DoNothing ; Object $5E
    .word ObjInit_DoNothing ; Object $5F
    .word ObjInit_DoNothing ; Object $60
    .word ObjInit_DoNothing ; Object $61
    .word ObjInit_DoNothing ; Object $62
    .word ObjInit_DoNothing ; Object $63


	.org ObjectGroup_NormalJumpTable	; <-- help enforce this table *here*
;****************************** OBJECT GAME LOOP ******************************
    .word ObjNorm_ShyGuy ; Object $50
	.word ObjNorm_Brick ; Object $51
	.word ObjNorm_VeggieGuy ; Object $52
	.word ObjNorm_SnowGuy ; Object $53
	.word ObjNorm_SnowBall ; Object $54
	.word ObjNorm_Snifit ; Object $55
	.word ObjNorm_Ninji ; Object $56
	.word ObjNorm_Birdo ; Object $57
	.word ObjNorm_Phanto ; Object $58
	.word ObjNorm_Spark ; Object $59
	.word ObjNorm_BobOmb ; Object $5A
	.word ObjNorm_FloatMine ; Object $5B
	.word ObjNorm_DoNothing ; Object $5C
	.word ObjNorm_DoNothing ; Object $5D
	.word ObjNorm_DoNothing ; Object $5E
	.word ObjNorm_DoNothing ; Object $5F
	.word ObjNorm_DoNothing ; Object $60
	.word ObjNorm_DoNothing ; Object $61
	.word ObjNorm_DoNothing ; Object $62
	.word ObjNorm_DoNothing ; Object $63

	.org ObjectGroup_CollideJumpTable	; <-- help enforce this table *here*
;****************************** OBJECT PLAYER INTERACTION ******************************
    .word Player_GetHurt ; Object $50
	.word Player_GetHurt ; Object $51
	.word Player_GetHurt ; Object $52
	.word Player_GetHurt ; Object $53
	.word SnowBall_Hit ; Object $54
	.word Player_GetHurt ; Object $55
	.word Player_GetHurt ; Object $56
	.word Birdo_HurtOrStand ; Object $57
	.word Player_GetHurt ; Object $58
	.word Player_GetHurt ; Object $59
	.word Object_Hold ; Object $5A
	.word FloatMine_Expload ; Object $5B
	.word ObjHit_DoNothing ; Object $5C
	.word ObjHit_DoNothing ; Object $5D
	.word ObjHit_DoNothing ; Object $5E
	.word ObjHit_DoNothing ; Object $5F
	.word ObjHit_DoNothing ; Object $60
	.word ObjHit_DoNothing ; Object $61
	.word ObjHit_DoNothing ; Object $62
	.word ObjHit_DoNothing ; Object $63

	.org ObjectGroup_Attributes	; <-- help enforce this table *here*
;****************************** OBJECT PALETTE/SIZE ******************************
    .byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16	 ; Object $50
	.byte OA1_PAL3 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $51
	.byte OA1_PAL2 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $52
	.byte OA1_PAL2 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $53
	.byte OA1_PAL2 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $54
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $55
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $56
	.byte OA1_PAL1 | OA1_HEIGHT32 | OA1_WIDTH16 ; Object $57
	.byte OA1_PAL3 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $58
	.byte OA1_PAL2 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $59
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $5A
	.byte OA1_PAL1 | OA1_HEIGHT32 | OA1_WIDTH48 ; Object $5B
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $5C
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $5D
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $5E
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $5F
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $60
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $61
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $62
	.byte OA1_PAL1 | OA1_HEIGHT16 | OA1_WIDTH16 ; Object $63

	.org ObjectGroup_PatTableSel	; <-- help enforce this table *here*
;****************************** OBJECT PATTERN TABLE ******************************
    .byte OPTS_SETPT5 | $0F ; Object $50
	.byte OPTS_NOCHANGE ; Object $51
	.byte OPTS_SETPT5 | $0F ; Object $52
	.byte OPTS_SETPT5 | $0F ; Object $53
	.byte OPTS_SETPT5 | $0F ; Object $54
	.byte OPTS_SETPT5 | $0F ; Object $55
	.byte OPTS_SETPT5 | $0F ; Object $56
	.byte OPTS_SETPT5 | $4C ; Object $57
	.byte OPTS_SETPT5 | $37 ; Object $58
	.byte OPTS_SETPT5 | $0A ; Object $59
	.byte OPTS_SETPT5 | $0A ; Object $5A
	.byte OPTS_SETPT5 | $1A ; Object $5B
	.byte OPTS_NOCHANGE ; Object $5C
	.byte OPTS_NOCHANGE ; Object $5D
	.byte OPTS_NOCHANGE ; Object $5E
	.byte OPTS_NOCHANGE ; Object $5F
	.byte OPTS_NOCHANGE ; Object $60
	.byte OPTS_NOCHANGE ; Object $61
	.byte OPTS_NOCHANGE ; Object $62
	.byte OPTS_NOCHANGE ; Object $63

	.org ObjectGroup_KillAction	; <-- help enforce this table *here*
;****************************** OBJECT DEATH ROUTINE ******************************
	.byte KILLACT_POOFDEATH ; Object $50
	.byte KILLACT_NORMALANDKILLED ; Object $51
	.byte KILLACT_POOFDEATH ; Object $52
	.byte KILLACT_POOFDEATH ; Object $53
	.byte KILLACT_NORMALANDKILLED ; Object $54
	.byte KILLACT_POOFDEATH ; Object $55
	.byte KILLACT_POOFDEATH ; Object $56
	.byte KILLACT_POOFDEATH ; Object $57
	.byte KILLACT_NORMALSTATE ; Object $58
	.byte KILLACT_POOFDEATH ; Object $59
	.byte KILLACT_POOFDEATH ; Object $5A
	.byte KILLACT_POOFDEATH ; Object $5B
	.byte KILLACT_POOFDEATH ; Object $5C
	.byte KILLACT_POOFDEATH ; Object $5D
	.byte KILLACT_POOFDEATH ; Object $5E
	.byte KILLACT_POOFDEATH ; Object $5F
	.byte KILLACT_POOFDEATH ; Object $60
	.byte KILLACT_POOFDEATH ; Object $61
	.byte KILLACT_POOFDEATH ; Object $62
	.byte KILLACT_POOFDEATH ; Object $63

OG5_POff .func (\1 - ObjectGroup05_PatternSets)

	.org ObjectGroup_PatternStarts	; <-- help enforce this table *here*

	; Index by object group relative index (ObjGroupRel_Idx)
	.byte OG5_POff(ObjP50), OG5_POff(ObjP51), OG5_POff(ObjP52), OG5_POff(ObjP53)
    .byte OG5_POff(ObjP54), OG5_POff(ObjP55), OG5_POff(ObjP56), OG5_POff(ObjP57)
    .byte OG5_POff(ObjP58), OG5_POff(ObjP59), OG5_POff(ObjP5A), OG5_POff(ObjP5B)
    .byte OG5_POff(ObjP5C), OG5_POff(ObjP5D), OG5_POff(ObjP5E), OG5_POff(ObjP5F)
    .byte OG5_POff(ObjP60), OG5_POff(ObjP61), OG5_POff(ObjP62), OG5_POff(ObjP63)

ObjectGroup05_PatternSets:    

ObjP50:
    .byte $85, $87
	.byte $81, $83
	.byte $85, $B7
	.byte $81, $B5
	.byte $B1, $B1

ObjP51:
    .byte $67, $67

ObjP52:
    .byte $85, $87
	.byte $81, $83
	.byte $85, $B7
	.byte $81, $B5
	.byte $BB, $BB
	.byte $B1, $B1

ObjP53:
    .byte $85, $87
	.byte $81, $83
	.byte $85, $B7
	.byte $81, $B5
	.byte $BB, $BB
	.byte $B1, $B1
	.byte $91, $93 

ObjP54:
    .byte $95, $97
	.byte $8D, $8F

ObjP55:
    .byte $A9, $AB
	.byte $AD, $AF

ObjP56:
    .byte $A1, $A3, $A5, $A7, $A5, $A7

ObjP57:
    .byte $81, $83, $89, $8B
	.byte $81, $83, $93, $95
	.byte $85, $87, $89, $8B
	.byte $85, $87, $93, $95
	.byte $9D, $9F, $89, $8B
	.byte $9D, $9F, $93, $95

ObjP58:
    .byte $BD, $BF

ObjP59:
    .byte $AF, $AF, $BF, $BF

ObjP5A:
    .byte $A7, $A9, $AB, $AD, $97, $99, $97, $99

ObjP5B:
    .byte $81, $83, $A1, $A3   

ObjP5C:
ObjP5D:
ObjP5E:
ObjP5F:
ObjP60:
ObjP61:
ObjP62:
ObjP63:


ShyGuy_Frame = Objects_Data1
ShyGuy_Holding = Objects_Data2

ObjInit_ShyGuy:
	LDA #$04
	STA Objects_SpritesRequested, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X

	LDA #(ATTR_STOMPKICKSOUND | ATTR_WINDAFFECTS | ATTR_CARRYANDBUMP)
	STA Objects_BehaviorAttr, X

	JSR Object_CalcBoundBox
	JSR Object_MoveTowardsPlayer

	LDA #$01
	STA Objects_Health, X
	RTS		 ; Return

ObjNorm_ShyGuy:
	LDA <Player_HaltGameZ
	BEQ ShyGuy_Norm
	
	JMP ShyGuy_Draw

ShyGuy_Norm:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE ShGuy_Alive

	LDA ShyGuy_Holding, X
	BEQ ShyGuy_DeadRTS

	JSR ShyGuy_ThrowBlockForced
	LDA #$00
	STA Objects_XVelZ, Y

ShyGuy_DeadRTS:
	JMP Object_Draw

ShGuy_Alive:
	JSR Object_DeleteOffScreen
	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_FacePlayerOnLanding
	JSR ShyGuy_FindBlock
	JSR ShyGuy_GrabBlock
	JSR ShyGuy_ThrowBlock
	JSR Object_AttackOrDefeat

ShyGuy_Animate:
	INC ShyGuy_Frame, X
	LDY #$00

	LDA ShyGuy_Holding, X
	BEQ ShyGuy_NoArms

	INY

ShyGuy_NoArms:
	TYA
	ASL A
	STA <Temp_Var1

	LDA ShyGuy_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA <Temp_Var16
	ORA <Temp_Var1
	STA Objects_Frame, X

ShyGuy_Draw:
	LDA <Objects_YVelZ, X
	BPL ShyGuy_GroundAnim

	LDA #$04
	STA Objects_Frame, X
	JMP Object_DrawMirrored

ShyGuy_GroundAnim:
	JSR Object_Draw
	LDA ShyGuy_Holding, X
	BEQ ShyGuy_DrawDone

	
	LDA #$0E
	ADD <Temp_Var16
	STA <Temp_Var16

	LDA Objects_SpritesVerticallyOffScreen, X
	AND #SPRITE_0_VINVISIBLE
	BNE ShyGuy_DrawDone

	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_0_HINVISIBLE
	BNE ShyGuy_DrawRight


	LDA #$67
	STA Sprite_RAMTile + 8, Y

	LDA Objects_SpriteX, X
	STA Sprite_RAMX + 8, Y

	LDA Objects_SpriteY, X
	SUB <Temp_Var16
	STA Sprite_RAMY + 8, Y

	LDA #SPR_PAL3
	STA Sprite_RAMAttr + 8, Y

ShyGuy_DrawRight:
	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_1_INVISIBLE
	BNE ShyGuy_DrawDone

	LDA #$67
	STA Sprite_RAMTile + 12, Y

	LDA Objects_SpriteX, X
	ADD #$08
	STA Sprite_RAMX + 12, Y

	LDA Objects_SpriteY, X
	SUB <Temp_Var16
	STA Sprite_RAMY + 12, Y

	LDA #(SPR_PAL3 | SPR_HFLIP)
	STA Sprite_RAMAttr + 12, Y

ShyGuy_DrawDone:
	RTS

ShyGuy_ScanAbove:
	.byte $48, $38, $28, $18, $08

ShyGuy_FindBlock:
	LDA ShyGuy_Holding, X
	BNE ShyGuy_FindBlockDone

	LDA <Objects_XZ, X
	AND #$0F
	BNE ShyGuy_FindBlockDone

	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ ShyGuy_FindBlockDone

	LDY #$04
	LDA <Objects_XZ, X
	ADD #$08
	STA Tile_DetectionX

	LDA <Objects_XHiZ, X
	STA Tile_DetectionXHi

ShyGuy_FindLoop:
	STY TempY
	LDA <Objects_YZ, X
	SUB ShyGuy_ScanAbove, Y
	STA Tile_DetectionY

	LDA <Objects_YHiZ, X
	SBC #$00
	STA Tile_DetectionYHi

	JSR Object_DetectTile

	LDA Tile_LastProp
	CMP #TILE_PROP_ITEM
	BCS ShyGuy_JumpForBlock

	LDY TempY
	DEY
	BPL ShyGuy_FindLoop

ShyGuy_FindBlockDone:
	RTS

ShyGuy_JumpForBlock:
	LDA #$B8
	STA <Objects_YVelZ, X

	LDA #$00
	STA <Objects_XVelZ, X
	RTS

ShyGuy_GrabBlock:
	LDA <Objects_TilesDetectZ, X
	AND #HIT_CEILING
	BEQ ShyGuy_GrabBlockDone 

	LDA Object_VertTileProp, X
	CMP #TILE_PROP_ITEM
	BCC ShyGuy_GrabBlockDone

	LDY Block_NeedsUpdate
	BNE ShyGuy_GrabBlockDone

	AND #$0F
	ADD #$01
	STA ShyGuy_Holding, X

	LDA <Objects_XZ, X
	ADD #$08
	STA Tile_DetectionX

	LDA <Objects_XHiZ, X
	ADC #$00
	STA Tile_DetectionXHi

	LDA <Objects_YZ, X
	SUB #$08
	STA Tile_DetectionY

	LDA <Objects_YHiZ, X
	SBC #$00
	STA Tile_DetectionYHi

	LDA Tile_LastValue
	AND #$C0
	ORA #$01

	JSR Object_ChangeBlock

ShyGuy_GrabBlockDone:
	RTS

ShyGuy_ThrowBlock:
	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ ShyGuy_ThrowBlockDone

	LDA ShyGuy_Holding, X
	BEQ ShyGuy_ThrowBlockDone

	JSR Object_XDistanceFromPlayer
	LDA <XDiff
	CMP #$40
	BCS ShyGuy_ThrowBlockDone

ShyGuy_ThrowBlockForced:
	JSR Object_FindEmptyY
	BCC ShyGuy_ThrowBlockDone

	LDA #OBJ_BRICK
	STA Objects_ID, Y

	LDA #(ATTR_FIREPROOF | ATTR_ICEPROOF | ATTR_NINJAPROOF | ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, Y

	LDA #BOUND16x16
	STA Objects_BoundBox, Y

	LDA #SPR_PAL3
	STA Objects_SpriteAttributes, Y

	LDA ShyGuy_Holding, X
	STA Brick_PowerUp, Y

	LDA <Objects_XZ, X
	STA Objects_XZ, Y

	LDA <Objects_XHiZ, X
	STA Objects_XHiZ, Y

	LDA <Objects_YZ, X
	SUB #$10
	STA Objects_YZ, Y

	LDA <Objects_YHiZ, X
	SBC #$00
	STA Objects_YHiZ, Y

	LDA #$D8
	STA Objects_YVelZ, Y

	LDA #$E0
	STA Objects_XVelZ, Y

	LDA Objects_Orientation, X
	AND #SPR_HFLIP
	BEQ ShyGuy_ClearHolding

	LDA Objects_XVelZ, Y
	EOR #$FF
	ADD #$01
	STA Objects_XVelZ, Y

ShyGuy_ClearHolding:
	LDA #$00
	STA ShyGuy_Holding, X

ShyGuy_ThrowBlockDone:
	RTS


ObjInit_Brick:
	LDA #(ATTR_FIREPROOF | ATTR_ICEPROOF | ATTR_NINJAPROOF | ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X
	RTS

Brick_PowerUp = Objects_Data1
Brick_PowerUpMap:
	.byte $00, POWERUP_COIN, POWERUP_FIREFLOWER, POWERUP_SUPERLEAF, POWERUP_ICEFLOWER, POWERUP_FROGSUIT, POWERUP_FOXLEAF, POWERUP_SHELL, POWERUP_MUSHROOM, POWERUP_HAMMERSUIT, POWERUP_NINJASHROOM, POWERUP_STAR, POWERUP_VINE, $00, $00, $00, $FF

ObjNorm_Brick:
	LDA <Player_HaltGameZ
	BEQ Brick_Norm

	JMP Brick_Draw

Brick_Norm:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BEQ Brick_MakeItem

	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_AttackOrDefeat
	JSR Shell_KillOthers
	BCS Brick_MakeItem

	LDA <Objects_TilesDetectZ, X
	BNE Brick_MakeItem

Brick_Draw:
	JMP Object_DrawMirrored

Brick_MakeItem:
	LDA Objects_SpritesHorizontallyOffScreen,X
	ORA Objects_SpritesVerticallyOffScreen,X
	BNE Brick_NoBurst

	LDA <Objects_XZ, X
	STA Debris_X

	LDA <Objects_YZ, X
	STA Debris_Y

	JSR Common_MakeBricks

Brick_NoBurst:
	LDY Brick_PowerUp, X
	LDA Brick_PowerUpMap, Y
	BEQ Brick_Burst
	BPL Brick_MakePower

	JMP Produce_Key

Brick_MakePower:

	CMP #POWERUP_COIN
	BEQ Brick_Coin

	STA PowerUp_Type, X

	LDA #OBJ_POWERUP
	STA Objects_ID, X

	LDA #OBJSTATE_FRESH
	STA Objects_State, X
	RTS

Brick_Burst:
	JMP Object_Delete

Brick_Coin:
	LDA <Objects_XZ, X
	ADD #$08
	STA <Coin_X

	LDA <Objects_YZ, X
	ADD #$08
	STA <Coin_Y
	JSR Produce_Coin
	JMP Object_Delete
    


VeggieGuy_Frame = Objects_Data1
VeggieGuy_Holding = Objects_Data2
VeggieGuy_PullingVeggie = Objects_Data3

ObjInit_VeggieGuy:
	LDA #$04
	STA Objects_SpritesRequested, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X
	
	JSR Object_CalcBoundBox
	JSR Object_MoveTowardsPlayer

	LDA #$01
	STA Objects_Health, X
	RTS		 ; Return

ObjNorm_VeggieGuy:
	LDA <Player_HaltGameZ
	BEQ VeggieGuy_Norm
	
	JMP VeggieGuy_Draw

VeggieGuy_Norm:
	JSR Object_DeleteOffScreen
	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_FacePlayerOnLanding
	JSR VeggieGuy_FindVeggie
	JSR VeggieGuy_GrabVeggie
	JSR VeggieGuy_ThrowVeggie
	JSR Object_AttackOrDefeat

VeggieGuy_Animate:
	INC VeggieGuy_Frame, X

VeggieGuy_Draw:
	LDY #$00

	LDA VeggieGuy_PullingVeggie, X
	BNE VeggieGuy_DoDraw
	
	LDA VeggieGuy_Holding, X
	BEQ VeggieGuy_NoArms

	INY

VeggieGuy_NoArms:
	TYA
	ASL A
	STA <Temp_Var1

	LDA VeggieGuy_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA <Temp_Var16
	ORA <Temp_Var1
	STA Objects_Frame, X

VeggieGuy_DoDraw:
	LDA <Objects_YVelZ, X
	BPL VeggieGuy_GroundAnim

	LDA #$05
	STA Objects_Frame, X
	JSR Object_DrawMirrored
	JMP VeggieGuy_DrawVeggie

VeggieGuy_GroundAnim:
	LDA Objects_Frame, X
	SUB #$04
	CMP #$02
	BCS VeggieGuy_DrawNorm

	JSR Object_DrawMirrored
	JMP VeggieGuy_DrawVeggie

VeggieGuy_DrawNorm:
	JSR Object_Draw

VeggieGuy_DrawVeggie:

	LDA VeggieGuy_Holding, X
	BEQ VeggieGuy_DrawDone

VeggieGuy_VeggieSprites:
	LDA #$0E
	ADD <Temp_Var16
	STA <Temp_Var16

	LDA Objects_SpritesVerticallyOffScreen, X
	AND #SPRITE_0_VINVISIBLE
	BNE VeggieGuy_DrawDone

	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_0_HINVISIBLE
	BNE VeggieGuy_DrawRight

	LDA #$B3
	STA Sprite_RAMTile + 8, Y

	LDA Objects_SpriteX, X
	STA Sprite_RAMX + 8, Y

	LDA Objects_SpriteY, X
	SUB <Temp_Var16
	STA Sprite_RAMY + 8, Y

	LDA #SPR_PAL2
	STA Sprite_RAMAttr + 8, Y

VeggieGuy_DrawRight:
	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_1_INVISIBLE
	BNE VeggieGuy_DrawDone

	LDA #$B3
	STA Sprite_RAMTile + 12, Y

	LDA Objects_SpriteX, X
	ADD #$08
	STA Sprite_RAMX + 12, Y

	LDA Objects_SpriteY, X
	SUB <Temp_Var16
	STA Sprite_RAMY + 12, Y

	LDA #(SPR_PAL2 | SPR_HFLIP)
	STA Sprite_RAMAttr + 12, Y

VeggieGuy_DrawDone:
	RTS

VeggieGuy_FindVeggie:
	LDA VeggieGuy_Holding, X
	BNE VeggieGuy_FindVeggieDone

	LDA VeggieGuy_PullingVeggie, X
	BNE VeggieGuy_FindVeggieDone

	LDA <Objects_XZ, X
	AND #$0F
	BNE VeggieGuy_FindVeggieDone

	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ VeggieGuy_FindVeggieDone

	LDA Object_BodyTileProp, X
	CMP #TILE_PROP_SOLID_TOP
	BCS VeggieGuy_FindVeggieDone

	AND #$0F
	CMP #TILE_PROP_ENEMY
	BNE VeggieGuy_FindVeggieDone

	LDA #$20
	STA VeggieGuy_PullingVeggie, X
	
VeggieGuy_FindVeggieDone:
	RTS

VeggieGuy_GrabVeggie:
	LDA VeggieGuy_PullingVeggie, X
	BEQ VeggieGuy_GrabVeggieDone
	
	LDA #$00
	STA <Objects_XVelZ, X
	
	DEC VeggieGuy_PullingVeggie, X
	BNE VeggieGuy_KeepPulling

	LDA Block_NeedsUpdate
	BEQ VeggieGuy_Pluck

	INC VeggieGuy_PullingVeggie, X
	RTS

VeggieGuy_Pluck:
	
	LDA #$01
	STA VeggieGuy_Holding, X
	
	LDA #$E0
	STA <Objects_YVelZ, X

	LDA <Objects_XZ, X
	ADD #$08
	STA Block_DetectX

	LDA <Objects_XHiZ, X
	STA Block_DetectXHi

	LDA <Objects_YZ, X
	ADD #$08
	STA Block_DetectY

	LDA <Objects_YHiZ, X
	STA Block_DetectYHi

	LDA Object_BodyTileValue, X
	AND #$C0
	ORA #$01
	JSR Object_ChangeBlock
	RTS
	
VeggieGuy_KeepPulling:
	LDA #$04
	STA Objects_Frame, X
	RTS

VeggieGuy_GrabVeggieDone:
	RTS

VeggieGuy_ThrowVeggie:
	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ VeggieGuy_ThrowVeggieDone

	LDA <Objects_YVelZ, X
	BNE VeggieGuy_ThrowVeggieDone

	LDA VeggieGuy_Holding, X
	BEQ VeggieGuy_ThrowVeggieDone

	JSR Object_XDistanceFromPlayer
	LDA <XDiff
	CMP #$30
	BCS VeggieGuy_ThrowVeggieDone

	JSR Object_YDistanceFromPlayer

	LDA <YDiff
	CMP #$20
	BCS VeggieGuy_ThrowVeggieDone

	JSR Object_PrepProjectile
	BCC VeggieGuy_ThrowVeggieDone
	
	
	LDA #SOBJ_VEGGIE
	STA SpecialObj_ID,Y

	LDA <Objects_XZ, X
	STA SpecialObj_X, Y

	LDA <Objects_XHiZ, X
	STA SpecialObj_XHi, Y

	LDA <Objects_YZ, X
	SUB #$10
	STA SpecialObj_Y, Y

	LDA <Objects_YHiZ, X
	SBC #$00
	STA SpecialObj_YHi, Y

	LDA #$E8
	STA SpecialObj_YVel, Y

	LDA #$E0
	STA SpecialObj_XVel, Y

	LDA <Objects_XVelZ, X
	BMI VeggieGuy_ClearHolding
	
	LDA #$20
	STA SpecialObj_XVel, Y

VeggieGuy_ClearHolding:
	LDA #$00
	STA VeggieGuy_Holding, X

VeggieGuy_ThrowVeggieDone:
	RTS
    


SnowGuy_Frame = Objects_Data1
SnowGuy_Holding = Objects_Data2
SnowGuy_DiggingSnow = Objects_Data3
SnowGuy_ForceDrawSnow =  Objects_Data4

ObjInit_SnowGuy:
	LDA #$04
	STA Objects_SpritesRequested, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X

	JSR Object_CalcBoundBox
	JSR Object_MoveTowardsPlayer

	LDA Objects_Property, X
	STA SnowGuy_Holding, X

	LDA #$01
	STA Objects_Health, X
	RTS		 ; Return

ObjNorm_SnowGuy:
	LDA <Player_HaltGameZ
	BEQ SnowGuy_Norm
	
	JMP SnowGuy_Draw

SnowGuy_Norm:
	JSR Object_DeleteOffScreen
	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_FacePlayerOnLanding
	JSR SnowGuy_FindSnow
	JSR SnowGuy_GrabSnow
	JSR SnowGuy_ThrowSnow
	JSR Object_AttackOrDefeat

SnowGuy_Animate:
	INC SnowGuy_Frame, X
	LDY #$00

	LDA SnowGuy_DiggingSnow, X
	BNE SnowGuy_Draw
	
	LDA SnowGuy_Holding, X
	BEQ SnowGuy_NoArms

	INY

SnowGuy_NoArms:
	TYA
	ASL A
	STA <Temp_Var1

	LDA SnowGuy_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA <Temp_Var16
	ORA <Temp_Var1
	STA Objects_Frame, X

SnowGuy_Draw:
	LDA <Objects_YVelZ, X
	BPL SnowGuy_GroundAnim

	LDA #$05
	STA Objects_Frame, X
	JSR Object_DrawMirrored
	JMP SnowGuy_DrawSnow

SnowGuy_GroundAnim:
	LDA Objects_Frame, X
	SUB #$04
	CMP #$02
	BCS SnowGuy_DrawNorm

	JSR Object_DrawMirrored
	JMP SnowGuy_DrawSnow

SnowGuy_DrawNorm:
	JSR Object_Draw

SnowGuy_DrawSnow:
	LDA SnowGuy_ForceDrawSnow, X
	BEQ SnowGuy_SnowNotForced 

	LDA #$00
	STA SnowGuy_ForceDrawSnow, X
	BEQ SnowGuy_SnowSprites

SnowGuy_SnowNotForced:
	LDA SnowGuy_Holding, X
	BEQ SnowGuy_DrawDone

SnowGuy_SnowSprites:
	LDA #$0E
	ADD <Temp_Var16
	STA <Temp_Var16

	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_0_HINVISIBLE
	BNE SnowGuy_DrawRight


	LDA #$8D
	STA Sprite_RAMTile + 8, Y

	LDA Objects_SpriteX, X
	STA Sprite_RAMX + 8, Y

	LDA Sprite_RAMY, Y
	SUB <Temp_Var16
	STA Sprite_RAMY + 8, Y

	LDA Sprite_RAMAttr, Y
	AND #SPR_BEHINDBG
	ORA #SPR_PAL2
	STA Sprite_RAMAttr + 8, Y

SnowGuy_DrawRight:
	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_1_INVISIBLE
	BNE SnowGuy_DrawDone

	LDA #$8F
	STA Sprite_RAMTile + 12, Y

	LDA Objects_SpriteX, X
	ADD #$08
	STA Sprite_RAMX + 12, Y

	LDA Sprite_RAMY, Y
	SUB <Temp_Var16
	STA Sprite_RAMY + 12, Y

	LDA Sprite_RAMAttr, Y
	AND #SPR_BEHINDBG
	ORA #SPR_PAL2
	STA Sprite_RAMAttr + 12, Y

SnowGuy_DrawDone:
	RTS

SnowGuy_FindSnow:
	LDA SnowGuy_Holding, X
	BNE SnowGuy_FindSnowDone

	LDA SnowGuy_DiggingSnow, X
	BNE SnowGuy_FindSnowDone

	LDA <Objects_XZ, X
	AND #$0F
	BNE SnowGuy_FindSnowDone

	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ SnowGuy_FindSnowDone

	LDA Object_VertTileProp, X
	CMP #(TILE_PROP_SOLID_ALL | TILE_PROP_ENEMYSOLID)
	BNE SnowGuy_FindSnowDone

	LDA #$40
	STA SnowGuy_DiggingSnow, X
	
SnowGuy_FindSnowDone:
	RTS

SnowGuy_GrabSnow:
	LDA SnowGuy_DiggingSnow, X
	BEQ SnowGuy_GrabSnowDone
	
	LDA #$00
	STA <Objects_XVelZ, X
	DEC SnowGuy_DiggingSnow, X
	BNE SnowGuy_KeepDigging
	
	LDA #$01
	STA SnowGuy_Holding, X
	
	LDA #$E0
	STA <Objects_YVelZ, X
	RTS
	
SnowGuy_KeepDigging:
	LDA SnowGuy_DiggingSnow, X
	CMP #$20
	BCS ShyGuy_DigAnimate
	
	LDA #$06
	STA Objects_Frame, X
	RTS
	
ShyGuy_DigAnimate:
	LSR A
	LSR A
	LSR A
	AND #$01
	ADD #$04
	STA Objects_Frame, X
	
SnowGuy_GrabSnowDone:
	RTS

SnowGuy_ThrowSnow:
	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ SnowGuy_ThrowSnowDone

	LDA <Objects_YVelZ, X
	BNE SnowGuy_ThrowSnowDone

	LDA SnowGuy_Holding, X
	BEQ SnowGuy_ThrowSnowDone

	JSR Object_XDistanceFromPlayer
	LDA <XDiff
	CMP #$50
	BCS SnowGuy_ThrowSnowDone

	JSR Object_FindEmptyY
	BCC SnowGuy_ThrowSnowDone
	
	LDA <Objects_XZ, X
	STA Objects_XZ, Y

	LDA <Objects_XHiZ, X
	STA Objects_XHiZ, Y

	LDA <Objects_YZ, X
	SUB #$10
	STA Objects_YZ, Y

	LDA <Objects_YHiZ, X
	SBC #$00
	STA Objects_YHiZ, Y

	LDA #$E8
	STA Objects_YVelZ, Y

	LDA #OBJ_SNOWBALL
	STA Objects_ID, Y

	LDA #SPR_PAL2
	STA Objects_SpriteAttributes, Y

	LDA #(ATTR_ICEPROOF | ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, Y

	LDA #BOUND16x16
	STA Objects_BoundBox, Y
	
	LDA #$E8
	STA Objects_XVelZ, Y

	LDA Objects_Orientation, X
	AND #SPR_HFLIP
	BEQ SnowGuy_ClearHolding

	LDA Objects_XVelZ, Y
	EOR #$FF
	ADD #$01
	STA Objects_XVelZ, Y

SnowGuy_ClearHolding:
	LDA #$00
	STA SnowGuy_Holding, X

	INC SnowGuy_ForceDrawSnow, X

SnowGuy_ThrowSnowDone:
	RTS        


;***********************************************************************************
; SNOW BALL
;***********************************************************************************
; IMMUNITIES:
;		ICE
;***********************************************************************************
; Rolls along the ground until it hits a wall, then bursts away with ice particle effects.
; Hitting Mario will freeze the player.
;***********************************************************************************
SnowBall_Frame = Objects_Data1

ObjInit_SnowBall:
	LDA #(ATTR_ICEPROOF | ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X
	
	JMP Object_MoveTowardsPlayer

ObjNorm_SnowBall:
	LDA <Player_HaltGameZ
	BEQ SnowBall_Norm

	JMP SnowBall_Draw

SnowBall_Norm:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE SnowBall_Move

	JSR SnowBall_Burst
	JMP Object_Delete

SnowBall_Move:
	JSR Object_DeleteOffScreen
	
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BEQ SnowBall_Burst

	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_FaceDirectionMoving
	JSR Object_InteractWithPlayer
	JSR Shell_KillOthers
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles

	LDA <Objects_TilesDetectZ, X
	AND #(HIT_LEFTWALL | HIT_RIGHTWALL)
	BNE SnowBall_Burst

SnowBall_Animate:
	INC SnowBall_Frame, X
	LDA SnowBall_Frame, X
	LSR A
	LSR A
	AND #$01
	STA Objects_Frame, X

SnowBall_Draw:
	JMP Object_Draw

SnowBall_Hit:
	
	JSR Player_Freeze

	LDA <Objects_XVelZ, X
	STA <Player_XVel

	LDA #$D0
	STA <Player_YVel
	STA <Player_InAir

SnowBall_Burst:
	LDA Objects_SpritesHorizontallyOffScreen,X
	ORA Objects_SpritesVerticallyOffScreen,X
	BNE SnowBall_NoBurst

	LDA <Objects_XZ, X
	STA Debris_X

	LDA <Objects_YZ, X
	STA Debris_Y
	
	JSR Common_MakeDebris

	LDA #$BF
	STA BrickBust_Tile, Y

SnowBall_NoBurst:
	LDA #SPR_PAL2
	STA BrickBust_Pal, Y
	JMP Object_Delete    


ObjInit_Snifit:
	LDA #BOUND16x16
	STA Objects_BoundBox, X

	LDA #$02
	STA Objects_Health, X

	LDA #$40
	STA Objects_Timer, X

	JSR Object_CalcBoundBox
	JSR Object_FacePlayer

	LDA Objects_Property, X
	BNE Snifit_InitRTS

	JSR Object_MoveTowardsPlayer

Snifit_InitRTS:
	RTS

Snifit_Frame = Objects_Data1
Snifit_Action = Objects_Data2
Snifit_ShotsLeft = Objects_Data3
Snifit_ShootTimer = Objects_Data4

Snifit_Shots:
	.byte $03, $02, $01, $04, $02, $01, $02, $03

ObjNorm_Snifit:
	LDA <Player_HaltGameZ
	BEQ Snifit_Norm
	JMP Snifit_Draw

Snifit_Norm:
	JSR Object_DeleteOffScreen
	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_AttackOrDefeat

	LDA Snifit_Action, X
	JSR DynJump

	.word Snifit_March
	.word Snifit_Shoot

Snifit_March:
	LDA Objects_Timer, X
	BNE Snifit_MarchDone

	LDA #$10
	STA Snifit_ShootTimer, X
	INC Snifit_Action, X

	LDA #$00
	STA Objects_XVelZ, X

	LDA RandomN
	AND #$07
	TAY

	LDA Snifit_Shots, Y
	STA Snifit_ShotsLeft, X

Snifit_MarchDone:
	JMP Snifit_Animate

Snifit_ShootXVel:
	.byte $18, $E8

Snifit_WalkTimer:
	.byte $40, $60, $50, $40

Snifit_Draw2:
	JMP Snifit_Draw
	
Snifit_Shoot:
	LDA Snifit_ShootTimer, X
	BEQ Snifit_DoShot

	DEC Snifit_ShootTimer, X
 	BNE Snifit_Draw2

	LDA Snifit_ShotsLeft, X
	BEQ Snifit_Draw2

	LDA RandomN
	AND #$01
	BNE Snifit_Draw2
	

	LDA #$C0
	STA <Objects_YVelZ, X
	BNE Snifit_Draw2

Snifit_DoShot:
	JSR Object_FacePlayer
	LDA Snifit_ShotsLeft, X
	BNE Snifit_CheckYVel

	LDA #$00
	STA Snifit_Action, X

	LDA RandomN
	AND #$03
	TAY 
	
	LDA Snifit_WalkTimer, Y
	STA Objects_Timer, X

	LDA Objects_Property, X
	BEQ Snifit_ShootFacePlayer
	JMP Snifit_Draw

Snifit_ShootFacePlayer:
	JSR Object_MoveTowardsPlayer
	JMP Snifit_Draw

Snifit_CheckYVel:
	LDA <Objects_YVelZ, X
	BMI Snifit_ShootDone

	LDA Objects_SpritesVerticallyOffScreen, X
	ORA Objects_SpritesHorizontallyOffScreen, X
	BNE Snifit_FireballNoFlip

	JSR Object_PrepProjectile
	BCC Snifit_ShootDone

	LDA #SOBJ_FIREBALL
	STA SpecialObj_ID, Y

	LDA #$01
	STA SpecialObj_Data1, Y
	STA SpecialObj_Data3, Y

	LDA #$E8
	STA SpecialObj_XVel, Y

	LDA #$00
	STA SpecialObj_YVel, Y

	LDA <Objects_XZ, X
	ADD #$04
	STA SpecialObj_X, Y

	LDA <Objects_XHiZ, X
	STA SpecialObj_XHi, Y

	LDA <Objects_YZ, X
	STA SpecialObj_Y, Y

	LDA <Objects_YHiZ, X
	STA SpecialObj_YHi, Y

	LDA Objects_Orientation, X
	BEQ Snifit_FireballNoFlip

	LDA #$18
	STA SpecialObj_XVel, Y

Snifit_FireballNoFlip:
	DEC Snifit_ShotsLeft, X

	LDA #$30
	STA Snifit_ShootTimer, X

Snifit_ShootDone:
	JMP Snifit_Draw

Snifit_Animate:
	LDA Objects_Property, X
	BNE Snifit_AnimateAnyway

	LDA <Objects_XVelZ, X
	BEQ Snifit_Draw

Snifit_AnimateAnyway:
	INC Snifit_Frame, X

	LDA Snifit_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA Objects_Frame, X

Snifit_Draw:
	JMP Object_Draw    


ObjInit_Ninji:
	LDA #$04
	STA Objects_SpritesRequested, X

	LDA Objects_State, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X

	LDA #(ATTR_STOMPKICKSOUND)
	STA Objects_BehaviorAttr, X

	LDA #$20
	STA Objects_Timer, X
	RTS

Ninji_Frame = Objects_Data1
Ninji_Action = Objects_Data2
Ninji_HoldStar = Objects_Data3

ObjNorm_Ninji:
	LDA <Player_HaltGameZ
	BEQ Ninji_Norm

	JMP Ninji_Draw

Ninji_Norm:
	JSR Object_DeleteOffScreen 
	JSR Object_Move
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_AttackOrDefeat
	
	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ Ninji_Grounded

	JSR Object_FacePlayer

Ninji_Grounded:
	JSR Ninji_DoAction

Ninji_Animate:
	LDA Ninji_Action, X
	BNE Ninji_Draw

	INC Ninji_Frame, X
	LDA Ninji_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA Objects_Frame, X

Ninji_Draw:
	JSR Object_Draw

	LDA Ninji_HoldStar, X
	BEQ Ninji_DrawStar2

	LDA Objects_SpritesVerticallyOffScreen,X
	AND #SPRITE_0_VINVISIBLE
	BNE Ninji_DrawStar2

	LDA Objects_SpritesHorizontallyOffScreen,X
	AND #SPRITE_0_HINVISIBLE
	BNE Ninji_DrawStar1

	LDA Objects_SpriteX, X
	STA Sprite_RAMX + 8, Y

	LDA Objects_SpriteY, X
	SUB #$0C
	STA Sprite_RAMY  + 8, Y

	LDA #$B9
	STA Sprite_RAMTile + 8, Y

	LDA #SPR_PAL3
	STA Sprite_RAMAttr + 8, Y

Ninji_DrawStar1:
	LDA Objects_SpritesHorizontallyOffScreen,X
	AND #SPRITE_1_INVISIBLE
	BNE Ninji_DrawStar2
	
	LDA Objects_SpriteX, X
	ADD #$08
	STA Sprite_RAMX + 12, Y

	LDA Objects_SpriteY, X
	SUB #$0C
	STA Sprite_RAMY  + 12, Y

	LDA #$B9
	STA Sprite_RAMTile + 12, Y

	LDA #(SPR_PAL3 | SPR_HFLIP | SPR_VFLIP)
	STA Sprite_RAMAttr + 12, Y

Ninji_DrawStar2:
	RTS

Ninji_DoAction:
	LDA Ninji_Action, X
	JSR DynJump

	.word Ninji_Idle
	.word Ninji_Jump
	.word Ninji_Hover
	.word Ninji_ThrowStar
	.word Ninji_Fall

Ninji_Jumps: .byte $B0, $BC, $C8, $D4

Ninji_Idle:
	LDA Objects_Timer, X
	BNE Ninji_IdleDone

	INC Ninji_Action, X
	
	LDA RandomN, X
	AND #$03
	TAY

	LDA Ninji_Jumps, Y
	STA <Objects_YVelZ, X

	LDA #$01
	STA Objects_Frame, X
	STA Ninji_HoldStar, X

Ninji_IdleDone:
	RTS

Ninji_Jump:
	LDA <Objects_YVelZ, X
	BMI Ninji_JumpDone

	INC Ninji_Action, X

	LDA #$08
	STA Objects_Timer, X

Ninji_JumpDone:
	RTS

Ninji_Hover:
	LDA #$00
	STA <Objects_YVelZ, X

	LDA Objects_Timer, X
	BNE Ninji_HoverDone

	INC Ninji_Action, X

Ninji_HoverDone:
	RTS

Ninji_ThrowStar:
	LDA #$00
	STA Objects_Frame, X
	STA <Objects_YVelZ, X
	STA Ninji_HoldStar, X

	LDA Objects_SpritesHorizontallyOffScreen,X
	ORA Objects_SpritesVerticallyOffScreen,X
	BNE Ninji_ThrowDone

	JSR Object_PrepProjectile	

	LDA #SOBJ_NINJASTAR
	STA SpecialObj_ID,Y

	LDA <Objects_XZ, X
	STA SpecialObj_X, Y

	LDA <Objects_XHiZ, X
	STA SpecialObj_XHi, Y

	LDA <Objects_YZ, X
	SUB #$0C
	STA SpecialObj_Y, Y

	LDA <Objects_YHiZ, X
	SBC #$00
	STA SpecialObj_YHi, Y

	JSR Object_AimProjectile

	LDA SpecialObj_XVel, Y
	JSR Double_Value
	STA SpecialObj_XVel, Y

	LDA SpecialObj_YVel, Y
	JSR Double_Value
	STA SpecialObj_YVel, Y

Ninji_ThrowDone:
	INC Ninji_Action, X
	LDA #$00
	STA Objects_Frame, X
	RTS		 ; Return

Ninji_Fall:
	LDA <Objects_TilesDetectZ, X
	AND #HIT_GROUND
	BEQ Ninji_FallDone

	LDA #$60
	STA Objects_Timer, X
	
	LDA #$00
	STA Ninji_Action, X
	STA Objects_Frame, X

Ninji_FallDone:
	RTS

NinjiIdleTimes:
	.byte $30, $40, $38, $48
	    


Birdo_WalkTicker = Objects_Data1
Birdo_Pause = Objects_Data2
Birdo_HurtTimer = Objects_Data3
Birdo_PrevHealth = Objects_Data4
Birdo_PalState = Objects_Data5
Birdo_TickIndex = Objects_Data6

Birdo_FireBallYVel:
	.byte $00, $03, $06, $09
	.byte $00, $FD, $FA, $F7

Birdo_Pal:
	.byte SPR_PAL1, SPR_PAL2

ObjInit_Birdo:
	LDA #$04
	STA Objects_SpritesRequested, X

	LDA #BOUND16x32TALL
	STA Objects_BoundBox, X

	LDA #(ATTR_ICEPROOF)
	STA Objects_WeaponAttr, X

	LDA #(ATTR_NOICE | ATTR_BUMPNOKILL)
	STA Objects_BehaviorAttr, X

	LDA RandomN
	AND #$03
	TAY

	LDA Birdo_ShootTimers, Y
	STA Objects_Timer, X

	LDA #$08
	STA Objects_ExpPoints, X

	LDA #$04
	STA Objects_Health, X
	STA Birdo_PrevHealth, X

	LDY Objects_Property, X

	LDA Birdo_Pal, Y
	STA Objects_SpriteAttributes, X
	STA Birdo_PalState, X
	RTS

Birdo_Walk:
	.byte $00, $0C, $00, $F4
	.byte $01, $01, $FF, $FF

Birdo_EggShoot:
	.byte $E0, $20

Birdo_ShootTimers:
	.byte $80, $C0, $A0, $E0

ObjNorm_Birdo:
	LDA <Player_HaltGameZ
	BEQ ObjNorm_Birdo1
	JMP Birdo_Draw

ObjNorm_Birdo1:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE ObjNorm_Birdo2
	
	JMP Object_Draw16x32

ObjNorm_Birdo2:
	JSR Object_DeleteOffScreen

	LDA Objects_Health, X
	CMP Birdo_PrevHealth, X
	BEQ Birdo_NotHit

	LDA Birdo_HurtTimer, X
	BEQ Birdo_Hit
	
	LDA Birdo_PrevHealth, X
	STA Objects_Health, X
	JMP Birdo_NotHit

Birdo_Hit:
	LDA Objects_Health, X
	STA Birdo_PrevHealth, X
	
	LDA #$1F
	STA Birdo_HurtTimer, X
	STA Objects_Timer2, X

Birdo_NotHit:
	LDA Birdo_HurtTimer, X
	BEQ Birdo_CheckPause

	DEC Birdo_HurtTimer, X
	JMP ObjNorm_BirdoDraw

Birdo_CheckPause:
	LDA Birdo_Pause, X
	BNE Birdo_PauseShoot

Birdo_Waltz:
	INC Birdo_WalkTicker, X
	LDA Birdo_WalkTicker, X
	AND #$C0
	CLC
	ROL A
	ROL A
	ROL A
	TAY

	STA Birdo_TickIndex, X

	LDA Birdo_Walk, Y
	STA Objects_XVelZ, X 

	LDA Objects_Timer, X
	BEQ Birdo_ResetTimer
	
	JMP Birdo_Norm
	
Birdo_ResetTimer:
	LDA #$20
	STA Objects_Timer, X

	LDA #$00
	STA Objects_XVelZ, X

	LDA #$02
	STA Birdo_Pause, X
	JMP Birdo_Norm

Birdo_PauseShoot:
	LDA Objects_Timer, X
	BNE Birdo_TryShoot

	LDA RandomN
	AND #$03
	TAY

	LDA Birdo_ShootTimers, Y
	STA Objects_Timer, X

	LDA #$00
	STA Birdo_Pause, X

Birdo_TryShoot:
	CMP #$08
	BNE Birdo_Norm

	LDA Objects_SpritesVerticallyOffScreen,X
	ORA Objects_SpritesHorizontallyOffScreen,X
	BNE Birdo_Norm

	LDY #$00
	LDA Objects_Orientation, X
	BEQ Birdo_EggNoFlip
	
	INY

Birdo_EggNoFlip:
	LDA Birdo_EggShoot, Y
	STA <Temp_Var16

	JSR SpecialObject_FindEmpty
	CPY #$FF
	BEQ Birdo_Norm

	LDA #$00
	STA SpecialObj_YVel,Y

	LDA Objects_Property, X
	BEQ Birdo_ShootEgg
	 
	LDA RandomN
	AND #$07
	TAX

	LDA Birdo_FireBallYVel, X
	STA SpecialObj_YVel,Y

	LDX <CurrentObjectIndexZ

	LDA #SOBJ_BIGFIREBALL
	BNE Birdo_Shoot

Birdo_ShootEgg:
	LDA #SOBJ_EGG

Birdo_Shoot:
	STA SpecialObj_ID,Y

	LDA #$10
	STA SpecialObj_Timer,Y

	LDA #$00
	STA SpecialObj_HurtEnemies, Y
	
	STA Egg_HitWall, Y

	LDA <Objects_XZ,X
	STA SpecialObj_X,Y

	LDA <Objects_XHiZ,X
	STA SpecialObj_XHi,Y

	LDA <Objects_YZ,X
	ADD #$00
	STA SpecialObj_Y,Y

	LDA <Objects_YHiZ, X
	ADC #$00
	STA SpecialObj_YHi,Y

	LDA <Temp_Var16
	STA SpecialObj_XVel,Y

	LDA RandomN
	AND #$01
	BNE Birdo_Norm

	LDA #$28
	STA Objects_Timer, X

Birdo_Norm:
	JSR Object_Move
	JSR Object_CalcBoundBoxForced

	
	LDY Birdo_TickIndex, X
	LDA Birdo_Walk + 4,Y
	STA Objects_EffectiveXVel, X

	JSR Object_DetectTiles
	JSR Object_InteractWithTiles

	LDA <Objects_TilesDetectZ, X
	AND #(HIT_LEFTWALL | HIT_RIGHTWALL)
	BEQ Birdo_InteractPlayer

	LDA Birdo_WalkTicker, X
	ADD #$40
	AND #$C0
	STA Birdo_WalkTicker, X

Birdo_InteractPlayer:
	JSR Object_FacePlayer
	JSR Object_InteractWithPlayer

ObjNorm_BirdoDraw:
	LDA <Objects_XZ, X
	LSR A
	LSR A
	AND #$01
	ORA Birdo_Pause, X
	STA Objects_Frame, X

	LDA Birdo_HurtTimer, X
	BEQ Birdo_Draw

	EOR #$02
	AND #$02
	BEQ Birdo_Flash

	LDA Birdo_PalState, X

Birdo_Flash:
	STA Objects_SpriteAttributes, X

	LDA Objects_Frame, X
	AND #$01
	ORA #$04
	STA Objects_Frame, X
	JMP Object_Draw16x32

Birdo_Draw:
	JMP Object_Draw16x32

Birdo_HurtOrStand:
	LDA HitTest_Result
	AND #HITTEST_BOTTOM
	BEQ Birdo_Hurt

	LDA <Player_YVel
	BMI Birdo_StandRTS

	LDA Player_BoundBottom
	SUB Objects_BoundTop, X
	CMP #$04
	BCS Birdo_Hurt
	
	LDA <Objects_YZ,X	 
	SUB #$1D
	STA <Player_Y

	LDA <Objects_YHiZ,X
	SBC #$00
	STA <Player_YHi

	LDA #$00
	STA Player_InAir
	STA PlayerProj_YVelFrac
	STA <Player_YVel

	LDA <Objects_XVelZ, X
	STA Player_CarryXVel
	
Birdo_StandRTS:
	RTS

Birdo_Hurt:	
	JMP Player_GetHurt

        

ObjInit_Phanto:

	LDA #BOUND16x16
	STA Objects_BoundBox, X

	JMP Object_NoInteractions

ObjInit_PhantoFlip:

	RTS		 ; Return    


Phanto_ChaseTimer = Objects_Data3
Phanto_Action = Objects_Data4
Phanto_Shaker = Objects_Data5

ObjNorm_Phanto:
	LDA <Player_HaltGameZ
	BEQ ObjNorm_Phanto1
	
	JMP Phanto_Draw

ObjNorm_Phanto1:
	LDA Phanto_Action, X
	JSR DynJump

	.word Phanto_Wait
	.word Phanto_Wake
	.word Phanto_Chase
	.word Phanto_Hover

Phanto_FindKey:
	LDY #07

Phanto_KeyLooking:
	LDA Objects_ID, Y
	CMP #OBJ_KEY
	BEQ Phanto_KeyFound

	DEY
	BPL Phanto_KeyLooking

Phanto_KeyNotFound:
	CLC
	RTS

Phanto_KeyFound:
	LDA Objects_BeingHeld, Y
	BEQ Phanto_KeyNotFound

	SEC
	RTS

Phanto_Wait:
	JSR Phanto_FindKey
	BCC Phanto_Wait_End

	INC Phanto_Action, X

	LDA #$40
	STA Objects_Timer, X

Phanto_Wait_End:
	JMP Object_Draw

Phanto_Wake:
	LDA Objects_Timer, X
	BNE Phanto_Wake1

	INC Phanto_Action, X
	
	LDA #(ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, X

Phanto_Wake1:
	JSR Object_Draw

	INC Phanto_Shaker, X
	LDA Phanto_Shaker, X
	AND #$08
	BNE Phanto_Wake2

	LDA #SND_LEVELCRUMBLE
	STA Sound_QLevel2

Phanto_Wake2:
	LDA Phanto_Shaker, X
	AND #$01
	BNE Phanto_Wake_End
	
	TYA
	TAX
	
	INC  Sprite_RAMX, X
	INC  Sprite_RAMX + 4,X

Phanto_Wake_End:
	RTS

Phanto_Chase:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE Phanto_ChaseNormal

	JSR Phanto_Poof
	
	LDA #$FF
	STA Objects_Timer, X
	
	LDA #OBJSTATE_NORMAL
	STA Objects_State, X
	RTS

Phanto_ChaseNormal:	
	JSR Phanto_FindKey
	BCS Phanto_ChaseHover

	JMP Phanto_Poof

Phanto_ChaseHover:
	LDA #$D0
	STA ChaseVel_LimitLo, X

	LDA #$30
	STA ChaseVel_LimitHi, X

	JSR Object_ChasePlayerX

	LDA #$F0
	STA ChaseVel_LimitLo, X

	LDA #$10
	STA ChaseVel_LimitHi, X
	
	JSR Object_ChasePlayerY

	JSR Object_CalcBoundBox
	JSR Object_AttackOrDefeat

Phanto_Draw:
	LDA #$00
	STA Objects_Frame, X

	JMP Object_Draw

Phanto_Poof:
	LDA Objects_SpritesHorizontallyOffScreen, X
	ORA Objects_SpritesVerticallyOffScreen, X
	BNE Phanto_SetHover

	LDA <Objects_XZ, X
	STA Poof_X

	LDA <Objects_YZ, X
	STA Poof_Y

	LDA #$FF
	STA <Objects_YHiZ, X
	
	JSR Common_MakePoof

Phanto_SetHover:
	LDA #$03
	STA Phanto_Action, X
	RTS

Phanto_HoverStartX:
	.byte $E0, $20

Phanto_Hover:
	LDA Objects_Timer, X
	BNE Phanto_HoverRTS

	JSR Phanto_FindKey
	BCC Phanto_HoverRTS

	LDY #$00
	LDA <Player_XVel
	BEQ Phanto_Facing
	BPL Phanto_Reappear

	INY
	BNE Phanto_Reappear

Phanto_Facing:
	LDY Player_Direction


Phanto_Reappear:
	LDA <Horz_Scroll
	ADD Phanto_HoverStartX, Y
	STA <Objects_XZ, X
	STA <Poof_X

	LDA <Horz_Scroll_Hi
	ADC #$00
	STA <Objects_XHiZ, X

	LDA <Vert_Scroll
	ADD #$80
	STA <Objects_YZ, X
	STA <Poof_Y

	LDA <Vert_Scroll_Hi
	ADC #$00
	STA <Objects_YHiZ, X

	LDA #$00
	STA <Objects_XVelZ, X
	STA <Objects_YVelZ, X

	LDA #$02
	STA Phanto_Action, X
	JMP Common_MakePoof

Phanto_HoverRTS:
	RTS
            



Spark_Direction = Objects_Data2
Spark_Speed = Objects_Data3
Spark_HitDetect = Objects_Data4

ObjInit_Spark:
	LDA #BOUND16x16BLOCK
	STA Objects_BoundBox, X

	LDA #(ATTR_FIREPROOF | ATTR_ICEPROOF | ATTR_HAMMERPROOF | ATTR_TAILPROOF | ATTR_STOMPPROOF)
	STA Objects_WeaponAttr, X

	LDA #$02
	STA Objects_Health, X

	LDA Objects_Property, X
	AND #$01
	STA Spark_Direction, X

	LDA Objects_Property, X
	AND #$FE
	LSR A
	STA Spark_Speed, X

	LDA #$00
	STA Spark_HitDetect, X
	RTS

; this basically detects certain corners based on current movement direction
SparkDetects:
	.byte (HIT_RIGHTWALL | HIT_GROUND), (HIT_LEFTWALL | HIT_GROUND), (HIT_CEILING | HIT_LEFTWALL), (HIT_RIGHTWALL | HIT_CEILING)
	.byte (HIT_LEFTWALL | HIT_GROUND), (HIT_RIGHTWALL | HIT_GROUND), (HIT_CEILING | HIT_RIGHTWALL), (HIT_LEFTWALL | HIT_CEILING)

SparkYVel:
	.byte $10, $10, $F0, $F0
	.byte $10, $10, $F0, $F0

SparkXVel:
	.byte $10, $F0, $F0, $10
	.byte $F0, $10, $10, $F0

ObjNorm_Spark:
	LDA <Player_HaltGameZ
	BEQ SparkNorm

	JMP Spark_Draw

SparkNorm:
	JSR Object_DeleteOffScreen

	LDA Spark_Speed, X
	STA TempA

ObjNorm_Spark1:
	JSR Spark_Move
	DEC TempA
	BPL ObjNorm_Spark1

	JSR Object_AttackOrDefeat
	JMP Spark_Animate

Spark_Move:
	LDA Spark_Direction, X
	ASL A
	ASL A
	ORA Spark_HitDetect, X
	TAY

	LDA SparkXVel, Y
	STA <Objects_XVelZ, X
	STA Objects_EffectiveXVel,X

	LDA SparkYVel, Y
	STA <Objects_YVelZ, X

	TYA
	AND #$01			; only odd numbered states move vertically, even move horzontally
	BNE NoSparkXVel

	LDA <Objects_YZ, X
	AND #$0F
	BNE ApplySparkX

	JSR Object_ApplyYVel_NoGravity

ApplySparkX:
	JSR Object_ApplyXVel
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles

	LDA Objects_TilesDetectZ, X
	JSR Object_CheckForeground

	LDA <Objects_XZ, X
	AND #$0F
	CMP #$0F
	BEQ SparkHitDetection

	CMP #$01
	BEQ SparkHitDetection
	BNE KeepGoing

NoSparkXVel:
	LDA <Objects_XZ, X
	AND #$0F
	BNE ApplySparkY

	JSR Object_ApplyXVel

ApplySparkY:
	JSR Object_ApplyYVel_NoGravity
	JSR Object_CalcBoundBox
	JSR Object_DetectTiles

	LDA Objects_TilesDetectZ, X
	JSR Object_CheckForeground

	LDA <Objects_YZ, X
	AND #$0F
	CMP #$0E
	BEQ SparkHitDetection

	CMP #$01
	BEQ SparkHitDetection
	BNE KeepGoing

SparkHitDetection:
	LDA Spark_Direction, X		; var1 = 0 -> clockwise movement, var1 = 1 -> counter clockwise
	ASL A
	ASL A
	ORA Spark_HitDetect, X
	TAY

	LDA <Objects_TilesDetectZ, X
	AND SparkDetects, Y  
	BNE WallCeilGrndDet

	LDA Spark_HitDetect, X	; neither corner was detected (no ground or wall) so we need to wrap around the tile
	ADD #$01
	AND #$03
	STA Spark_HitDetect, X
	RTS

WallCeilGrndDet:
	CMP SparkDetects, Y
	BNE KeepGoing
	
	LDA Spark_HitDetect, X		; both corners were detected, we need to crawl against the tile
	SUB #$01
	AND #$03
	STA Spark_HitDetect, X

KeepGoing:						; if we only detected one ground or wall we keep going in the same direction
	RTS

Spark_Animate:
	LDA <Counter_1
	AND #$04
	LSR A
	LSR A
	STA Objects_Frame, X

Spark_Draw:
	LDA Object_SpriteRAMOffset, X
	JMP Object_DrawMirrored    
            


ObjInit_BobOmb:
	LDA #BOUND16x16
	STA Objects_BoundBox, X

	LDA #(ATTR_FIREPROOF | ATTR_ICEPROOF | ATTR_NINJAPROOF)
	STA Objects_WeaponAttr, X

	LDA #(ATTR_STOMPKICKSOUND | ATTR_WINDAFFECTS | ATTR_BUMPNOKILL | ATTR_CARRYANDBUMP)
	STA Objects_BehaviorAttr, X

	JSR Object_CalcBoundBox
	JSR Object_MoveTowardsPlayer
	RTS		 ; Return

BobOmb_Action = Objects_Data1
BobOmb_BehindTimer = Objects_Data2
BobOmb_Frame = Objects_Data3
BobOmb_Activated = Objects_Data4
BobOmb_Unstable = Objects_Data5

ObjNorm_BobOmb:
	LDA <Player_HaltGameZ
	BEQ BobOmb_DoAction

	JMP Object_Draw

BobOmb_DoAction:
	
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED

	BEQ BobOmb_Death

	LDA BobOmb_Action, X
	JSR DynJump

	.word BobOmb_Norm
	.word BobOmb_Left
	.word BobOmb_Right
	.word BobOmb_Raise
	.word BobOmb_Drop

BobOmb_Death:

	LDA Objects_PlayerProjHit, X
	CMP #HIT_FIREBALL
	BNE BobOmb_Death1

	LDA #$01
	STA Explosion_Timer, X

	LDA #OBJSTATE_NORMAL
	STA  Objects_State, X

BobOmb_Death1:
	JMP BobOmb_Draw

BobOmb_Raise:
	LDA Objects_Timer, X
	BEQ BobOmb_PopOut

	CMP #$20
	BCC BobOmb_RaiseDone

	LDA #$F0
	STA <Objects_YVelZ, X
	JSR Object_ApplyYVel_NoGravity
	JMP BobOmb_Draw

BobOmb_PopOut:
	JSR Object_CalcBoundBox
	JSR Object_MoveDirectionFacing
	
	LDA #$D0
	STA <Objects_YVelZ, X

	LDA #$00
	STA BobOmb_Action, X

	LDA #$08
	STA BobOmb_BehindTimer, X

BobOmb_RaiseDone:
	JMP BobOmb_Draw

BobOmb_Drop:
	LDA Objects_Timer, X
	BEQ BobOmb_DropDown

	CMP #$20
	BCC BobOmb_DropDone

	LDA #$10
	STA <Objects_YVelZ, X
	JSR Object_ApplyYVel_NoGravity
	JMP BobOmb_Draw

BobOmb_DropDown:
	JSR Object_CalcBoundBox
	
	LDA #$01
	STA <Objects_YVelZ, X

	LDA #$00
	STA BobOmb_Action, X

	LDA #$08
	STA BobOmb_BehindTimer, X

BobOmb_DropDone:
	JMP BobOmb_Draw

BobOmb_Left:
	LDA Objects_Timer, X
	CMP #$10
	BEQ BobOmb_Out

	LDA #$F8
	STA <Objects_XVelZ, X
	JSR Object_ApplyXVel

	LDA #$00
	STA Objects_Orientation, X

	JMP BobOmb_Animate

BobOmb_Right:
	LDA Objects_Timer, X
	BEQ BobOmb_Out

	LDA #$08
	STA <Objects_XVelZ, X
	JSR Object_ApplyXVel

	LDA #SPR_HFLIP
	STA Objects_Orientation, X

	JMP BobOmb_Animate

BobOmb_Out:
	LDA #$00
	STA BobOmb_Action, X

	LDA #$08
	STA BobOmb_BehindTimer, X
	JMP BobOmb_Animate

BobOmb_Norm:

	JSR Object_DeleteOffScreen	 
	JSR Object_Move
	JSR Object_FaceDirectionMoving
	JSR Object_CalcBoundBox

	LDA <Objects_XVelZ, X
	BNE BobOmb_Norm1

	JSR Object_FacePlayerOnLanding

BobOmb_Norm1:

	LDA Explosion_Timer, X
	ORA BobOmb_Unstable, X
	BEQ BobOmb_Attack

	JSR Object_DetectTiles
	
	LDA BobOmb_Unstable, X
	BNE BobOmb_UnstableCheck

	JSR Object_DampenVelocity
	JSR Object_InteractWithTiles
	JSR Object_InteractWithPlayer
	JSR Object_InteractWithObjects
	
	LDA #$02
	STA Objects_Frame, X
	JMP Object_Draw

BobOmb_UnstableCheck:
	JSR Object_InteractWithTiles
	JSR Object_InteractWithPlayer
	JSR Object_RespondToTailAttack

	LDA Objects_BeingHeld, X
	BEQ BobOmb_Normal
	
	JMP BobOmb_ShakeDraw

BobOmb_Normal:
	LDA Objects_PreviousTilesDetect,X
	BNE BobOmb_ShakeDraw

	LDA <Objects_TilesDetectZ,X
	BEQ BobOmb_ShakeDraw

	LDA #$01
	STA Explosion_Timer, X
	BNE BobOmb_ShakeDraw

BobOmb_Attack:
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles
	JSR Object_AttackOrDefeat
	
	LDA Objects_PlayerProjHit, X
	AND #HIT_STOMPED
	BEQ BobOmb_InteractOthers

	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE BobOmb_InteractOthers

	LDA #OBJSTATE_NORMAL
	STA Objects_State, X

	LDA Objects_Orientation, X
	AND #~SPR_VFLIP
	STA Objects_Orientation, X

	LDA Objects_Property, X
	BNE BobOmb_Unstabilize

	LDA #$A0
	STA Explosion_Timer, X
	BNE BobOmb_InteractOthers

BobOmb_Unstabilize:
	LDA #$02
	STA Objects_Frame,X

	LDA #$00
	STA <Objects_XVelZ, X

	INC BobOmb_Unstable, X
	BNE BobOmb_Draw

BobOmb_InteractOthers:
BobOmb_Animate:
	INC BobOmb_Frame, X
	LDA BobOmb_Frame, X
	LSR A
	LSR A
	LSR A
	AND #$01
	STA Objects_Frame,X

BobOmb_Draw:

	LDA BobOmb_Action, X
	ORA BobOmb_BehindTimer, X
	BEQ BobOmb_NotBehind

	LDA Objects_SpriteAttributes, X
	ORA #SPR_BEHINDBG
	STA Objects_SpriteAttributes, X

	LDA BobOmb_BehindTimer, X
	BEQ BobOmb_NotBehind

	DEC BobOmb_BehindTimer, X

BobOmb_NotBehind:
	JMP Object_Draw

BobOmb_ShakeDraw:
	INC BobOmb_Frame, X
	JSR Object_Draw

	LDA BobOmb_Frame, X
	AND #$02
	BEQ BobOmb_ShakeDraw1

	LDA Object_SpriteRAMOffset, X
	TAX
	DEC Sprite_RAMY, X
	DEC Sprite_RAMY + 4, X

BobOmb_ShakeDraw1:
	RTS    

FloatMine_Action = Objects_Data1

ObjInit_FloatMine:
	LDA #$06
	STA Objects_SpritesRequested, X
	
	LDA #(ATTR_NOICE)
	STA Objects_BehaviorAttr, X

	LDA #BOUND16x16
	STA Objects_BoundBox, X

	LDA #$01
	STA ObjSplash_Disabled, X

	LDA <Objects_XZ, X
	SUB #$04
	STA <Objects_XZ, X

	LDA <Objects_XHiZ, X
	SBC #$00
	STA <Objects_XHiZ, X

	LDA Objects_Property, X
	STA FloatMine_Action, X

	CMP #$02
	BCS InitMineMove_Pattern
	RTS

InitMineMove_Pattern:
	LDA #$10
	STA Patrol_ResetTimer, X

	LDA <Objects_XZ, X
	SUB #$01
	STA <Objects_XZ, X

	LDA <Objects_XHiZ, X
	SBC #$00
	STA <Objects_XHiZ, X

	LDA <Objects_YZ, X
	SUB #$01
	STA <Objects_YZ, X

	LDA <Objects_YHiZ, X
	SBC #$00
	STA <Objects_YHiZ, X

	LDA Objects_Property, X
	SUB #$02
	JSR DynJump

	.word InitPatrolHorizontal
	.word InitPatrolVertical
	.word InitCircleCCW
	.word InitCircleCW

ObjNorm_FloatMine:
	LDA <Player_HaltGameZ
	BEQ FloatMine_Norm

	JMP FloatMine_Draw

FloatMine_Norm:
	LDA Objects_State, X
	CMP #OBJSTATE_KILLED
	BNE FloatMine_NotDead
	JSR FloatMine_Expload

FloatMine_NotDead:
	JSR Object_DeleteOffScreen

	JSR FloatMine_CalcBoundBox
	LDA FloatMine_Action, X
	JSR DynJump
	
	.word FloatMine_Chained
	.word FloatMine_Unchained
	.word FloatMine_PatternMove
	.word FloatMine_PatternMove
	.word FloatMine_PatternMove
	.word FloatMine_PatternMove
	.word FloatMine_PatternMoveOnce

FloatMine_PatternMove:
	JSR FloatMine_DoPatternMove
	JSR FloatMine_DoPatternMove
	JSR FloatMine_DoPatternMove

FloatMine_PatternMoveOnce:
	JSR FloatMine_DoPatternMove
	JMP FloatMine_Chained

FloatMine_DoPatternMove:
	LDA FloatMine_Action, X
	SUB #$02
	JSR DynJump

	.word PatrolBackForth
	.word PatrolUpDown
	.word PatrolDiagonal
	.word PatrolDiagonal
	.word PatrolUpDown

FloatMine_Unchained:

    INC Reverse_Gravity
    JMP FloatMine_Move

FloatMine_Bob:
    LDA <Objects_YVelZ, X
    BPL FloatMine_Move

    LDA #$04
    STA <Objects_YVelZ, X

FloatMine_Move:
	JSR Object_Move

FloatMine_Chained:
	JSR Object_InteractWithPlayer
	JSR Object_DetectTiles
	JSR Object_InteractWithTiles

	LDA FloatMine_Action, X
	CMP #$02
	BCS FloatMine_NormMove

	LDA Objects_InWater, X
	BNE FloatMine_NormMove
	
	LDA #$01
	STA Patrol_YVelocityChange, X

	LDA <Objects_YZ, X
	AND #$F0
	ORA #$04
	STA <Objects_YZ, X

	LDA #$00
	STA <Objects_YVelZ, X

	LDA #$04
	STA Patrol_ResetTimer, X
	STA Patrol_YAccelLimit, X

	LDA #$06
	STA FloatMine_Action, X

FloatMine_NormMove:
	LDA TrapSet
	BNE FloatMine_Explode

	LDA <Objects_TilesDetectZ, X
	BEQ FloatMine_NoExplodeYet

FloatMine_Explode:
	JSR FloatMine_Expload

FloatMine_NoExplodeYet:
	LDA FloatMine_Action, X
	BNE FloatMine_Draw

	JSR Object_XDistanceFromPlayer
	LDA <XDiff
	CMP #$30
	BCS FloatMine_Draw

	JSR Object_YDistanceFromPlayer

	LDA <YDiff
	CMP #$30
	BCS FloatMine_Draw

	INC FloatMine_Action, X

FloatMine_Draw:
	LDA #SPR_BEHINDBG
	STA Objects_Orientation, X

	JSR Object_Draw16x32

	LDY Object_SpriteRAMOffset,X

	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_2_HINVISIBLE
	BNE Mine_BottomTile

	LDA Objects_SpritesVerticallyOffScreen, X
	AND #SPRITE_0_VINVISIBLE
	BNE Mine_BottomTile

	LDA Objects_SpriteX, X
	ADD #$10
	STA Sprite_RAMX + 16, Y

	LDA Sprite_RAMTile, Y
	STA Sprite_RAMTile + 16, Y

	LDA Objects_SpriteY, X
	STA Sprite_RAMY + 16, Y

	LDA Sprite_RAMAttr, Y
	ORA #SPR_HFLIP
	STA Sprite_RAMAttr + 16, Y

Mine_BottomTile:
	LDA Objects_SpritesHorizontallyOffScreen, X
	AND #SPRITE_2_HINVISIBLE
	BNE Mine_DrawRTS

	LDA Objects_SpritesVerticallyOffScreen, X
	AND #SPRITE_1_VINVISIBLE
	BNE Mine_DrawRTS

	LDA Objects_SpriteX, X
	ADD #$10
	STA Sprite_RAMX + 20, Y

	LDA Sprite_RAMTile + 8, Y
	STA Sprite_RAMTile + 20, Y

	LDA Objects_SpriteY, X
	ADD #$10
	STA Sprite_RAMY + 20, Y

	LDA Sprite_RAMAttr + 8, Y
	ORA #SPR_HFLIP
	STA Sprite_RAMAttr + 20, Y

Mine_DrawRTS:
	RTS

FloatMine_CalcBoundBox:
	LDA <Objects_XZ,X
	ADD #$04	
	STA Objects_BoundLeft, X

	LDA <Objects_XHiZ, X
	ADC #$00
	STA Objects_BoundLeftHi, X

	LDA <Objects_XZ, X
	ADD #$14
	STA Objects_BoundRight, X
	
	LDA <Objects_XHiZ, X
	ADC #$00
	STA Objects_BoundRightHi, X

	LDA <Objects_YZ,X
	ADD #$04
	STA Objects_BoundTop, X

	LDA <Objects_YHiZ, X
	ADC #$00
	STA Objects_BoundTopHi, X

	LDA <Objects_YZ,X
	ADD #$14
	STA Objects_BoundBottom, X

	LDA <Objects_YHiZ, X
	ADC #$00
	STA Objects_BoundBottomHi, X
	RTS

FloatMine_Expload:
	LDA #OBJSTATE_NORMAL
	STA Objects_State, X
	INC Explosion_Timer, X
	RTS    	
	