---@class EngineTagDataVehicleTypeEnum : Enum 

---@class EngineTagDataVehicleTypeHumanTank : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeHumanJeep : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeHumanBoat : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeHumanPlane : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeAlienScout : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeAlienFighter : EngineTagDataVehicleTypeEnum 
---@class EngineTagDataVehicleTypeTurret : EngineTagDataVehicleTypeEnum 

---@alias EngineTagDataVehicleType 
---| EngineTagDataVehicleTypeHumanTank
---| EngineTagDataVehicleTypeHumanJeep
---| EngineTagDataVehicleTypeHumanBoat
---| EngineTagDataVehicleTypeHumanPlane
---| EngineTagDataVehicleTypeAlienScout
---| EngineTagDataVehicleTypeAlienFighter
---| EngineTagDataVehicleTypeTurret

---@class EngineTagDataVehicleTypeTable 
---@field humanTank EngineTagDataVehicleTypeHumanTank
---@field humanJeep EngineTagDataVehicleTypeHumanJeep
---@field humanBoat EngineTagDataVehicleTypeHumanBoat
---@field humanPlane EngineTagDataVehicleTypeHumanPlane
---@field alienScout EngineTagDataVehicleTypeAlienScout
---@field alienFighter EngineTagDataVehicleTypeAlienFighter
---@field turret EngineTagDataVehicleTypeTurret
Engine.tag.vehicleType = {} 

---@class EngineTagDataVehicleFunctionInEnum : Enum 

---@class EngineTagDataVehicleFunctionInNone : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSpeedAbsolute : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSpeedForward : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSpeedBackward : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSlideAbsolute : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSlideLeft : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSlideRight : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInSpeedSlideMaximum : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInTurnAbsolute : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInTurnLeft : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInTurnRight : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInCrouch : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInJump : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInWalk : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityAir : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityWater : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityGround : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityForward : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityLeft : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInVelocityUp : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInLeftTreadPosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInRightTreadPosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInLeftTreadVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInRightTreadVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInFrontLeftTirePosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInFrontRightTirePosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInBackLeftTirePosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInBackRightTirePosition : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInFrontLeftTireVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInFrontRightTireVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInBackLeftTireVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInBackRightTireVelocity : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInWingtipContrail : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInHover : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInThrust : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInEngineHack : EngineTagDataVehicleFunctionInEnum 
---@class EngineTagDataVehicleFunctionInWingtipContrailNew : EngineTagDataVehicleFunctionInEnum 

---@alias EngineTagDataVehicleFunctionIn 
---| EngineTagDataVehicleFunctionInNone
---| EngineTagDataVehicleFunctionInSpeedAbsolute
---| EngineTagDataVehicleFunctionInSpeedForward
---| EngineTagDataVehicleFunctionInSpeedBackward
---| EngineTagDataVehicleFunctionInSlideAbsolute
---| EngineTagDataVehicleFunctionInSlideLeft
---| EngineTagDataVehicleFunctionInSlideRight
---| EngineTagDataVehicleFunctionInSpeedSlideMaximum
---| EngineTagDataVehicleFunctionInTurnAbsolute
---| EngineTagDataVehicleFunctionInTurnLeft
---| EngineTagDataVehicleFunctionInTurnRight
---| EngineTagDataVehicleFunctionInCrouch
---| EngineTagDataVehicleFunctionInJump
---| EngineTagDataVehicleFunctionInWalk
---| EngineTagDataVehicleFunctionInVelocityAir
---| EngineTagDataVehicleFunctionInVelocityWater
---| EngineTagDataVehicleFunctionInVelocityGround
---| EngineTagDataVehicleFunctionInVelocityForward
---| EngineTagDataVehicleFunctionInVelocityLeft
---| EngineTagDataVehicleFunctionInVelocityUp
---| EngineTagDataVehicleFunctionInLeftTreadPosition
---| EngineTagDataVehicleFunctionInRightTreadPosition
---| EngineTagDataVehicleFunctionInLeftTreadVelocity
---| EngineTagDataVehicleFunctionInRightTreadVelocity
---| EngineTagDataVehicleFunctionInFrontLeftTirePosition
---| EngineTagDataVehicleFunctionInFrontRightTirePosition
---| EngineTagDataVehicleFunctionInBackLeftTirePosition
---| EngineTagDataVehicleFunctionInBackRightTirePosition
---| EngineTagDataVehicleFunctionInFrontLeftTireVelocity
---| EngineTagDataVehicleFunctionInFrontRightTireVelocity
---| EngineTagDataVehicleFunctionInBackLeftTireVelocity
---| EngineTagDataVehicleFunctionInBackRightTireVelocity
---| EngineTagDataVehicleFunctionInWingtipContrail
---| EngineTagDataVehicleFunctionInHover
---| EngineTagDataVehicleFunctionInThrust
---| EngineTagDataVehicleFunctionInEngineHack
---| EngineTagDataVehicleFunctionInWingtipContrailNew

---@class EngineTagDataVehicleFunctionInTable 
---@field nNone EngineTagDataVehicleFunctionInNone
---@field nSpeedAbsolute EngineTagDataVehicleFunctionInSpeedAbsolute
---@field nSpeedForward EngineTagDataVehicleFunctionInSpeedForward
---@field nSpeedBackward EngineTagDataVehicleFunctionInSpeedBackward
---@field nSlideAbsolute EngineTagDataVehicleFunctionInSlideAbsolute
---@field nSlideLeft EngineTagDataVehicleFunctionInSlideLeft
---@field nSlideRight EngineTagDataVehicleFunctionInSlideRight
---@field nSpeedSlideMaximum EngineTagDataVehicleFunctionInSpeedSlideMaximum
---@field nTurnAbsolute EngineTagDataVehicleFunctionInTurnAbsolute
---@field nTurnLeft EngineTagDataVehicleFunctionInTurnLeft
---@field nTurnRight EngineTagDataVehicleFunctionInTurnRight
---@field nCrouch EngineTagDataVehicleFunctionInCrouch
---@field nJump EngineTagDataVehicleFunctionInJump
---@field nWalk EngineTagDataVehicleFunctionInWalk
---@field nVelocityAir EngineTagDataVehicleFunctionInVelocityAir
---@field nVelocityWater EngineTagDataVehicleFunctionInVelocityWater
---@field nVelocityGround EngineTagDataVehicleFunctionInVelocityGround
---@field nVelocityForward EngineTagDataVehicleFunctionInVelocityForward
---@field nVelocityLeft EngineTagDataVehicleFunctionInVelocityLeft
---@field nVelocityUp EngineTagDataVehicleFunctionInVelocityUp
---@field nLeftTreadPosition EngineTagDataVehicleFunctionInLeftTreadPosition
---@field nRightTreadPosition EngineTagDataVehicleFunctionInRightTreadPosition
---@field nLeftTreadVelocity EngineTagDataVehicleFunctionInLeftTreadVelocity
---@field nRightTreadVelocity EngineTagDataVehicleFunctionInRightTreadVelocity
---@field nFrontLeftTirePosition EngineTagDataVehicleFunctionInFrontLeftTirePosition
---@field nFrontRightTirePosition EngineTagDataVehicleFunctionInFrontRightTirePosition
---@field nBackLeftTirePosition EngineTagDataVehicleFunctionInBackLeftTirePosition
---@field nBackRightTirePosition EngineTagDataVehicleFunctionInBackRightTirePosition
---@field nFrontLeftTireVelocity EngineTagDataVehicleFunctionInFrontLeftTireVelocity
---@field nFrontRightTireVelocity EngineTagDataVehicleFunctionInFrontRightTireVelocity
---@field nBackLeftTireVelocity EngineTagDataVehicleFunctionInBackLeftTireVelocity
---@field nBackRightTireVelocity EngineTagDataVehicleFunctionInBackRightTireVelocity
---@field nWingtipContrail EngineTagDataVehicleFunctionInWingtipContrail
---@field nHover EngineTagDataVehicleFunctionInHover
---@field nThrust EngineTagDataVehicleFunctionInThrust
---@field nEngineHack EngineTagDataVehicleFunctionInEngineHack
---@field nWingtipContrailNew EngineTagDataVehicleFunctionInWingtipContrailNew
Engine.tag.vehicleFunctionIn = {} 

---@class MetaEngineTagDataVehicleFlags 
---@field speedWakesPhysics boolean 
---@field turnWakesPhysics boolean 
---@field driverPowerWakesPhysics boolean 
---@field gunnerPowerWakesPhysics boolean 
---@field controlOppositeSpeedSetsBrake boolean 
---@field slideWakesPhysics boolean 
---@field killsRidersAtTerminalVelocity boolean 
---@field causesCollisionDamage boolean 
---@field aiWeaponCannotRotate boolean 
---@field aiDoesNotRequireDriver boolean 
---@field aiUnused boolean 
---@field aiDriverEnable boolean 
---@field aiDriverFlying boolean 
---@field aiDriverCanSidestep boolean 
---@field aiDriverHovering boolean 
---@field vehicleSteersDirectly boolean 
---@field unused boolean 
---@field hasEbrake boolean 
---@field noncombatVehicle boolean 
---@field noFrictionWithDriver boolean 
---@field canTriggerAutomaticOpeningDoors boolean 
---@field autoaimWhenTeamless boolean 

---@class MetaEngineTagDataVehicle: MetaEngineTagDataUnit  
---@field vehicleFlags MetaEngineTagDataVehicleFlags 
---@field vehicleType EngineTagDataVehicleType 
---@field maximumForwardSpeed number 
---@field maximumReverseSpeed number 
---@field speedAcceleration number 
---@field speedDeceleration number 
---@field maximumLeftTurn number 
---@field maximumRightTurn number 
---@field wheelCircumference number 
---@field turnRate number 
---@field blurSpeed number 
---@field vehicleAIn EngineTagDataVehicleFunctionIn 
---@field vehicleBIn EngineTagDataVehicleFunctionIn 
---@field vehicleCIn EngineTagDataVehicleFunctionIn 
---@field vehicleDIn EngineTagDataVehicleFunctionIn 
---@field maximumLeftSlide number 
---@field maximumRightSlide number 
---@field slideAcceleration number 
---@field slideDeceleration number 
---@field minimumFlippingAngularVelocity number 
---@field maximumFlippingAngularVelocity number 
---@field fixedGunYaw number 
---@field fixedGunPitch number 
---@field aiSideslipDistance number 
---@field aiDestinationRadius number 
---@field aiAvoidanceDistance number 
---@field aiPathfindingRadius number 
---@field aiChargeRepeatTimeout number 
---@field aiStrafingAbortRange number 
---@field aiOversteeringBounds number 
---@field aiSteeringMaximum MetaEngineAngle 
---@field aiThrottleMaximum number 
---@field aiMovePositionTime number 
---@field suspensionSound MetaEngineTagDependency 
---@field crashSound MetaEngineTagDependency 
---@field materialEffects MetaEngineTagDependency 
---@field effect MetaEngineTagDependency 


