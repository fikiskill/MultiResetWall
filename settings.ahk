; v0.8
; General settings
global rows := 4 ; Number of row on the wall scene
global cols := 3 ; Number of columns on the wall scene
global mode := "W" ; W = Normal wall, B = Wall bypass (skip to next locked), M = Modern multi (send to wall when none loaded), C = Classic original multi (always force to next instance)
global windowMode := "W" ; W = windowed mode, F = fullscreen mode, B = borderless windowed

; Extra features
global widthMultiplier := 2.5 ; How wide your instances go to maximize visibility :) (set to 0 for no width change)
global coop := False ; Automatically opens to LAN when you load in a world
global sounds := "A" ; A = all, F = only functions, R = only resets, T = only tts, L = only locks, N = no sounds
global obsControl := "H" ; H = hotkeys, A = advanced scene switcher
global audioGui := False ; A simple GUI so the OBS application audio plugin can capture sounds
global theme := "default" ; the name of the folder you wish to use as your macro theme in the global themes folder
global tinder := False ; Set to True if you want to use tinder-style bg resetting

; Delays (Defaults are probably fine)
global spawnProtection := 100 ; Prevent a new instance from being reset for this many milliseconds after the preview is visible
global fullScreenDelay := 100 ; increse if fullscreening issues
global obsDelay := 100 ; increase if not changing scenes in obs
global tinderCheckBuffer := 5 ; When all instances cant reset, how often it checks for an instance in seconds

; Super advanced settings (Read about these settings on the README before changing)

; Affinity
; -1 == use macro math to determine thread counts
global affinityType := "B" ; N = no affinity management, B = basic affinity management, A = advanced affinity mangement (use with locking)
global superHighThreadsOverride := -1 ; Thread count for instance you are playing or locked instances you are loading on wall
global highThreadsOverride := -1 ; Thread count for instances on the 0% dirt screen while on wall
global midThreadsOverride := -1 ; Thread count for instances loading a preview (previewBurstLength) after detecting it
global lowThreadsOverride := -1 ; Thread count for instances loading a preview that has reached (previewLoadPercent) requirement and all idle instances
global bgLoadThreadsOverride := -1 ; Thread count for loading instances, and locked instances in bg
global previewBurstLength := 300 ; The delay before switching from high to mid while on wall or from bgLoad to low while in bg
global previewLoadPercent := 10 ; The percentage of world gen that must be reached before lowering to low

; OBS
global obsSceneControlType := "N" ; N = Numpad hotkeys (up to 9 instances), F = Function hotkeys f13-f24 (up to 12 instances, setup script in utils folder), A = advanced (too many instances)
global obsWallSceneKey := "F12" ; All obs scene control types use wallSceneKey
global obsCustomKeyArray := [] ; Must be used with advanced key array control type. Add keys in quotes separated by commas. The index in the array corresponds to the scene
global obsResetMediaKey := "" ; Key pressed on any instance reset with sound (used for playing reset media file in obs for recordable/streamable resets and requires addition setup to work)
global obsLockMediaKey := "" ; Key pressed on any lock instance with sound (used for playing lock media file in obs for recordable/streamable lock sounds and requires addition setup to work)
global obsUnlockMediaKey := "" ; Key pressed on any unlock instance with sound (used for playing unlock media file in obs for recordable/streamable unlock sounds and requires addition setup to work)

; Reset Management
global beforePauseDelay := 0 ; extra delay before the final pause for a loading instance. May be needed for very laggy loading. Default (0) should be fine
global resetManagementTimeout := -1 ; Milliseconds that can pass before reset manager gives up. Too low might leave instances unpaused. Default (-1, don't timeout)
global manageResetAfter := 300 ; Delay before starting reset management log reading loop. Default (300) likely fine
global resetManagementLoopDelay := 70 ; Buffer time between log lines check in reset management loop. Lowering will decrease possible pause latencies but increase cpu usage of reset managers. Default (70) likely fine
global doubleCheckUnexpectedLoads := True ; If you plan to use the wall without World Preview mod you should disable this. Default (True)

; Attempts
global overallAttemptsFile := "data/ATTEMPTS.txt" ; File to write overall attempt count to
global dailyAttemptsFile := "data/ATTEMPTS_DAY.txt" ; File to write daily attempt count to

; Minecraft
global minecraftWindowNaming := "Minecraft* - Instance #" ; naming sceme used to set window titles on macro reload ('#' is replaced by the instance number)