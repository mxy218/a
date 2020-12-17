.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioDeviceArray;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$BtProfileConnectionState;,
        Lcom/android/server/audio/AudioService$ConnectionState;,
        Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;,
        Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$RoleObserver;,
        Lcom/android/server/audio/AudioService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final DATA_REPORT_DURATION_MS:I = 0x1b7740

.field protected static final DEBUG_AP:Z = false

.field protected static final DEBUG_DEVICES:Z = false

.field protected static final DEBUG_MODE:Z = false

.field protected static final DEBUG_SCO:Z = true

.field protected static final DEBUG_VOL:Z = false

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG:I = 0x402678c

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field static final LOG_NB_EVENTS_DEVICE_CONNECTION:I = 0x1e

.field static final LOG_NB_EVENTS_DYN_POLICY:I = 0xa

.field static final LOG_NB_EVENTS_FORCE_USE:I = 0x14

.field static final LOG_NB_EVENTS_PHONE_STATE:I = 0x14

.field static final LOG_NB_EVENTS_VOLUME:I = 0x28

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MODE_RESET_DEATH_HANDLER_EMPTY_MAX_RETRY_COUNT:I = 0x3

.field private static final MODE_RESET_KEY1:Ljava/lang/String; = "IsProcessAcitveWithPid"

.field private static final MODE_RESET_KEY2:Ljava/lang/String; = "IsHasAcitveMusicExceptPid"

.field private static final MODE_RESET_LOOP_DURATION_MS:I = 0x3e8

.field private static final MODE_RESET_MAX_COUNT:I = 0xa

.field private static final MODE_RESET_PRE_COUNT:I = 0x3

.field private static final MODE_RESET_STATE_NORMAL:I = 0x0

.field private static final MODE_RESET_STATE_PRE_REESET:I = 0x1

.field private static final MSG_ACCESSORY_PLUG_MEDIA_MUTE:I = 0x1e

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x15

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xb

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0xc

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0xd

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x64

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x17

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x13

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x18

.field private static final MSG_HDMI_VOLUME_CHECK:I = 0x1c

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x14

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MUTE_SET_AFFECT_MUSIC:I = 0x29

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x16

.field private static final MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS:I = 0x1b

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x11

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0xe

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAYBACK_CONFIG_CHANGE:I = 0x1d

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_RINGMODE_SET_AFFECT_MUSIC:I = 0x28

.field private static final MSG_SCREEN_STATE_CHANGED_FOR_AUDIO_ROTATION:I = 0x32

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_STREAM_VOLUME:I = 0x1a

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_LAST_MUSIC_SPEAKER_VOLUME:I = 0x2a

.field private static final MSG_SYSTEM_READY:I = 0x10

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0xf

.field private static final MSG_UNMUTE_STREAM:I = 0x12

.field private static final MSG_UPDATE_RINGER_MODE:I = 0x19

.field private static final MUSIC_ACTIVE_MULT_COEF:[F

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final MUSIC_VOLUME_STEP_THRESHOLD:[I

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SAFE_VOLUME_THRESHOLD_INDEX:I = 0xa

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AS.AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0xdbba00

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mCanResumeNormalStreams:I

.field private static mModeResetCount:I

.field private static mModeResetDeathHandlerEmptyRetryCount:I

.field private static mModeResetState:I

.field private static mModeResetThreadStarted:Z

.field private static final mSoundLevelDB:[F

.field protected static mStreamVolumeAlias:[I

.field private static sDataReportTimaMs:I

.field static final sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

.field static final sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sIndependentA11yVolume:Z

.field private static final sIsProductInternational:Z

.field private static final sPackageNameArray:[Ljava/lang/String;

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I

.field static final sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final LOOP_DURATION_TIME_MS:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private isTencentInFocus:Z

.field mAbsVolumeMultiModeCaseDevices:I

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAssistantUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioPolicies"
        }
    .end annotation
.end field

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioServerWatchdogLock:Ljava/lang/Object;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mCameraSoundForced:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiCecSink:Z

.field private final mHdmiClientLock:Ljava/lang/Object;

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private final mIsSingleVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMainBackTouchSoundPool:Landroid/media/SoundPool;

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNewVolumeUp:Z

.field private mNm:Landroid/app/NotificationManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOldCallState:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPrescaleAbsoluteVolume:[F

.field private mPrevVolDirection:I

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

.field final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:I

.field private final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceBroker.mSetModeLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private final mSpeakerphoneLock:Ljava/lang/Object;

.field private mSpeakerphoneRestoreState:I

.field private mSpeakerphoneRestoreThread:Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private mThreadIsRunning:Z

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mZenModeAffectedStreams:I

.field private unMutePid:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 354
    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_a6

    sput-object v1, Lcom/android/server/audio/AudioService;->mSoundLevelDB:[F

    .line 363
    const/16 v1, 0xb

    new-array v2, v1, [I

    fill-array-data v2, :array_d2

    sput-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 380
    new-array v2, v1, [I

    fill-array-data v2, :array_ec

    sput-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 448
    new-array v1, v1, [I

    fill-array-data v1, :array_106

    sput-object v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 521
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 522
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 523
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 619
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    .line 4078
    const-string v2, "com.android.server.telecom"

    const-string v3, "com.android.phone"

    const-string v4, "android.net.sip"

    const-string v5, "com.android.server.telecom.tests"

    const-string v6, "android.permission.cts"

    const-string v7, "android.media.cts"

    const-string v8, "com.vkei.vservice.meizu"

    const-string v9, "com.vkei.musiccard.meizu"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/AudioService;->sPackageNameArray:[Ljava/lang/String;

    .line 7202
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_120

    sput-object v2, Lcom/android/server/audio/AudioService;->MUSIC_VOLUME_STEP_THRESHOLD:[I

    .line 7203
    new-array v1, v1, [F

    fill-array-data v1, :array_12a

    sput-object v1, Lcom/android/server/audio/AudioService;->MUSIC_ACTIVE_MULT_COEF:[F

    .line 7434
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 7489
    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const/16 v3, 0x1e

    const-string/jumbo v4, "wired/A2DP/hearing aid device connection"

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7492
    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const-string v3, "force use (logged before setForceUse() is executed)"

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7496
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v2, 0x28

    const-string/jumbo v3, "volume changes (logged when command received by AudioService)"

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7502
    const-string v0, "SILENT"

    const-string v2, "VIBRATE"

    const-string v3, "NORMAL"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    .line 8761
    const/16 v0, 0x26

    sput v0, Lcom/android/server/audio/AudioService;->mCanResumeNormalStreams:I

    .line 9036
    sput v1, Lcom/android/server/audio/AudioService;->mModeResetCount:I

    .line 9039
    sput v1, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    .line 9047
    sput v1, Lcom/android/server/audio/AudioService;->mModeResetState:I

    .line 9049
    sput-boolean v1, Lcom/android/server/audio/AudioService;->mModeResetThreadStarted:Z

    return-void

    nop

    :array_a6
    .array-data 4
        -0x3dfc0000  # -33.0f
        -0x3e000000  # -32.0f
        -0x3e080000  # -31.0f
        -0x3e100000  # -30.0f
        -0x3e180000  # -29.0f
        -0x3e200000  # -28.0f
        -0x3e280000  # -27.0f
        -0x3e300000  # -26.0f
        -0x3e380000  # -25.0f
        -0x3e400000  # -24.0f
        -0x3e500000  # -22.0f
        -0x3e600000  # -20.0f
        -0x3e700000  # -18.0f
        -0x3e800000  # -16.0f
        -0x3ea00000  # -14.0f
        -0x3ec00000  # -12.0f
        -0x3ee00000  # -10.0f
        -0x3f000000  # -8.0f
        -0x3f400000  # -6.0f
        -0x3f800000  # -4.0f
    .end array-data

    :array_d2
    .array-data 4
        0x7
        0xf
        0xf
        0x3c
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_ec
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_106
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x40
    .end array-data

    :array_120
    .array-data 4
        0x6
        0xd
        0xf
    .end array-data

    :array_12a
    .array-data 4
        0x3f800000  # 1.0f
        0x3fc00000  # 1.5f
        0x40000000  # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 27
    .param p1, "context"  # Landroid/content/Context;

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 254
    new-instance v1, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 327
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 329
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 332
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSpeakerphoneLock:Ljava/lang/Object;

    .line 344
    iput v8, v0, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    .line 350
    const/4 v9, 0x2

    const/16 v1, 0xb

    filled-new-array {v1, v9}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 403
    new-array v2, v1, [I

    fill-array-data v2, :array_450

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 416
    new-array v2, v1, [I

    fill-array-data v2, :array_46a

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 429
    new-array v2, v1, [I

    fill-array-data v2, :array_484

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 471
    new-instance v2, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 495
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 499
    iput v8, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 501
    iput v8, v0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 527
    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    .line 561
    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 565
    iput v8, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 568
    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 572
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 573
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 577
    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 582
    const v3, 0x2c1c00

    iput v3, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 589
    iput v8, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 593
    const/high16 v3, 0x8000000

    iput v3, v0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    .line 597
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 599
    iput v8, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 611
    const/4 v11, 0x3

    new-array v3, v11, [F

    fill-array-data v3, :array_49e

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    .line 624
    sget-object v3, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 629
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 631
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    .line 632
    iput v2, v0, Lcom/android/server/audio/AudioService;->unMutePid:I

    .line 633
    iput v8, v0, Lcom/android/server/audio/AudioService;->mOldCallState:I

    .line 674
    new-instance v3, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 2454
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2456
    new-instance v3, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    .line 3013
    iput v8, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3014
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 7161
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 7163
    iput v8, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 7178
    const/16 v3, 0x400c

    iput v3, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 7339
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    .line 7342
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 7359
    new-instance v3, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 7483
    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const/16 v4, 0x14

    const-string/jumbo v5, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v3, v4, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7499
    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const/16 v4, 0xa

    const-string v5, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v3, v4, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8248
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 8277
    new-instance v3, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 8700
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 8753
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 8755
    iput v8, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 8873
    new-instance v3, Lcom/android/server/audio/AudioService$6;

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$6;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 8939
    const/16 v3, 0x2710

    iput v3, v0, Lcom/android/server/audio/AudioService;->LOOP_DURATION_TIME_MS:I

    .line 8940
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioServerWatchdogLock:Ljava/lang/Object;

    .line 706
    iput-object v7, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 708
    const-string v3, "appops"

    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 710
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 712
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 714
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 715
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 717
    const-string/jumbo v3, "power"

    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/os/PowerManager;

    .line 718
    .local v12, "pm":Landroid/os/PowerManager;
    const-string v3, "handleAudioEvent"

    invoke-virtual {v12, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 720
    const-string/jumbo v3, "vibrator"

    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 721
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_18a

    move v3, v8

    goto :goto_18e

    :cond_18a
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_18e
    iput-boolean v3, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 727
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1be

    .line 728
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 730
    .local v3, "numStreamTypes":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "streamType":I
    :goto_1a0
    if-ltz v4, :cond_1be

    .line 731
    nop

    .line 732
    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v5

    .line 734
    .local v5, "attr":Landroid/media/AudioAttributes;
    invoke-static {v5}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 735
    .local v6, "maxVolume":I
    if-eq v6, v2, :cond_1b1

    .line 736
    sget-object v13, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v6, v13, v4

    .line 738
    :cond_1b1
    invoke-static {v5}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v13

    .line 739
    .local v13, "minVolume":I
    if-eq v13, v2, :cond_1bb

    .line 740
    sget-object v14, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aput v13, v14, v4

    .line 730
    .end local v5  # "attr":Landroid/media/AudioAttributes;
    .end local v6  # "maxVolume":I
    .end local v13  # "minVolume":I
    :cond_1bb
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a0

    .line 745
    .end local v3  # "numStreamTypes":I
    .end local v4  # "streamType":I
    :cond_1be
    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 746
    .local v13, "maxCallVolume":I
    if-eq v13, v2, :cond_1cb

    .line 747
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v13, v3, v8

    .line 750
    :cond_1cb
    const-string/jumbo v3, "ro.config.vc_call_vol_default"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 751
    .local v14, "defaultCallVolume":I
    const/4 v3, 0x4

    if-eq v14, v2, :cond_1e6

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v8

    if-gt v14, v4, :cond_1e6

    sget-object v4, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v4, v8

    if-lt v14, v4, :cond_1e6

    .line 754
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v14, v4, v8

    goto :goto_1ed

    .line 756
    :cond_1e6
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v5, v13, 0x3

    div-int/2addr v5, v3

    aput v5, v4, v8

    .line 760
    :goto_1ed
    const-string/jumbo v4, "ro.config.media_vol_steps"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 761
    .local v15, "maxMusicVolume":I
    if-eq v15, v2, :cond_1fa

    .line 762
    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v15, v4, v11

    .line 765
    :cond_1fa
    const-string/jumbo v4, "ro.config.media_vol_default"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 766
    .local v6, "defaultMusicVolume":I
    if-eq v6, v2, :cond_214

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v11

    if-gt v6, v4, :cond_214

    sget-object v4, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v4, v11

    if-lt v6, v4, :cond_214

    .line 769
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v6, v4, v11

    goto :goto_223

    .line 771
    :cond_214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v4

    if-eqz v4, :cond_223

    .line 772
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, v11

    div-int/2addr v5, v3

    aput v5, v4, v11

    .line 782
    :cond_223
    :goto_223
    const-string/jumbo v4, "ro.config.alarm_vol_steps"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 783
    .local v5, "maxAlarmVolume":I
    if-eq v5, v2, :cond_230

    .line 784
    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v4, v3

    .line 787
    :cond_230
    const-string/jumbo v4, "ro.config.alarm_vol_default"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 788
    .local v4, "defaultAlarmVolume":I
    if-eq v4, v2, :cond_244

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v16, v3

    if-gt v4, v1, :cond_244

    .line 790
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v4, v1, v3

    goto :goto_250

    .line 793
    :cond_244
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v3

    mul-int/lit8 v16, v16, 0x6

    div-int/lit8 v16, v16, 0x7

    aput v16, v1, v3

    .line 797
    :goto_250
    const-string/jumbo v1, "ro.config.system_vol_steps"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 798
    .local v1, "maxSystemVolume":I
    if-eq v1, v2, :cond_25d

    .line 799
    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v1, v16, v10

    .line 802
    :cond_25d
    const-string/jumbo v9, "ro.config.system_vol_default"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 803
    .local v9, "defaultSystemVolume":I
    if-eq v9, v2, :cond_270

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v10

    if-gt v9, v2, :cond_270

    .line 805
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v9, v2, v10

    .line 814
    :cond_270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x10e00af

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 819
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v10

    .line 822
    .local v10, "cameraSoundForced":Z
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v10}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 823
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v19, 0x8

    const/16 v20, 0x2

    const/16 v21, 0x4

    .line 827
    if-eqz v10, :cond_2a1

    .line 828
    const/16 v22, 0xb

    goto :goto_2a3

    :cond_2a1
    move/from16 v22, v8

    :goto_2a3
    new-instance v3, Ljava/lang/String;

    const-string v8, "AudioService ctor"

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    .line 823
    move-object/from16 v18, v2

    move-object/from16 v23, v3

    invoke-static/range {v18 .. v24}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 840
    iput v11, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 841
    const/16 v2, 0x190

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 843
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 846
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 850
    const-string v2, "AS.AudioService"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 853
    new-instance v2, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 854
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 860
    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v8, 0x4

    aget v3, v3, v8

    invoke-direct {v2, v7, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 863
    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v2, v3, v8}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 865
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 867
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetHifiParam()V

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->MzCreateLoopServerThread()V

    .line 871
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetEarsbackEnabled()V

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetRingCurveVolumeEnabled()V

    .line 877
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {v0, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 881
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 883
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 886
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v2

    .line 897
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v2, "package"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 899
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    .end local v1  # "maxSystemVolume":I
    .local v20, "maxSystemVolume":I
    move-object/from16 v1, p1

    move-object/from16 v21, v3

    .end local v3  # "packageFilter":Landroid/content/IntentFilter;
    .local v21, "packageFilter":Landroid/content/IntentFilter;
    move-object/from16 v3, v17

    move/from16 v17, v4

    .end local v4  # "defaultAlarmVolume":I
    .local v17, "defaultAlarmVolume":I
    move-object/from16 v4, v21

    move/from16 v22, v5

    .end local v5  # "maxAlarmVolume":I
    .local v22, "maxAlarmVolume":I
    move-object/from16 v5, v18

    move/from16 v18, v6

    .end local v6  # "defaultMusicVolume":I
    .local v18, "defaultMusicVolume":I
    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 901
    const-string/jumbo v1, "ro.audio.monitorRotation"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 902
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_3aa

    .line 903
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v1, v2, v0}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/audio/AudioService;)V

    .line 906
    :cond_3aa
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 911
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 914
    const-class v1, Landroid/media/AudioManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 916
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 918
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 920
    new-array v1, v11, [F

    .line 921
    .local v1, "preScale":[F
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130003

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 924
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130004

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v1, v4

    .line 927
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130005

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 930
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_416
    array-length v3, v1

    if-ge v2, v3, :cond_431

    .line 931
    const/4 v3, 0x0

    aget v4, v1, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_42e

    aget v3, v1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_42e

    .line 932
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    aget v4, v1, v2

    aput v4, v3, v2

    .line 930
    :cond_42e
    add-int/lit8 v2, v2, 0x1

    goto :goto_416

    .line 938
    .end local v2  # "i":I
    :cond_431
    new-instance v2, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreThread:Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;

    .line 939
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreThread:Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SpeakerphoneRestoreThread;->start()V

    .line 944
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 945
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 946
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 948
    return-void

    :array_450
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_46a
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_484
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_49e
    .array-data 4
        0x3f000000  # 0.5f
        0x3f333333  # 0.7f
        0x3f59999a  # 0.85f
    .end array-data
.end method

.method private MzCreateLoopServerThread()V
    .registers 3

    .line 8947
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mThreadIsRunning:Z

    if-eqz v0, :cond_5

    return-void

    .line 8948
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mThreadIsRunning:Z

    .line 8949
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    .line 8950
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/audio/AudioService$7;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$7;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8996
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8997
    return-void
.end method

.method private MzLoadMainBackTouchSound()V
    .registers 9

    .line 9002
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_5

    return-void

    .line 9003
    :cond_5
    const-string v0, "AS.AudioService"

    const-string v1, "MzLoadMainBackTouchSound: load effect AudioManager.FX_MAIN_BACK_TOUCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v4, 0xa

    aget-object v3, v3, v4

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 9006
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9007
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_8c

    .line 9008
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 9009
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v7, 0xd

    .line 9011
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 9012
    invoke-virtual {v6, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 9013
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 9010
    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 9014
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    .line 9015
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 9016
    .local v2, "sampleId":I
    if-gtz v2, :cond_85

    .line 9017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MzLoadMainBackTouchSound: load effect faild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9018
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 9019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    goto :goto_8c

    .line 9021
    :cond_85
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v4

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 9024
    .end local v2  # "sampleId":I
    :cond_8c
    :goto_8c
    return-void
.end method

.method private MzModeReset_GetAppProcessName(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"  # I

    .line 9218
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9219
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 9220
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9221
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_25

    .line 9222
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    .line 9223
    .end local v3  # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_25
    goto :goto_12

    .line 9224
    :cond_26
    const-string/jumbo v2, "unknow"

    return-object v2
.end method

.method private MzModeReset_ResetModeParam()V
    .registers 2

    .line 9070
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->mModeResetCount:I

    .line 9071
    sput v0, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    .line 9072
    sput v0, Lcom/android/server/audio/AudioService;->mModeResetState:I

    .line 9073
    return-void
.end method

.method private MzModeReset_ResetModeToNormal()V
    .registers 14

    .line 9051
    const/4 v0, 0x0

    .line 9052
    .local v0, "mode":I
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v0, v1, :cond_42

    .line 9053
    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v1

    .line 9054
    .local v1, "status":I
    const-string v2, "AS.AudioService"

    if-nez v1, :cond_3d

    .line 9055
    iput v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 9056
    const-string v9, "AudioService_ModeResetThread"

    .line 9057
    .local v9, "caller":Ljava/lang/String;
    const/high16 v3, -0x80000000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v10

    .line 9058
    .local v10, "streamType":I
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v11

    .line 9059
    .local v11, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v10

    aget-object v3, v3, v4

    invoke-virtual {v3, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 9060
    .local v12, "index":I
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v10

    const/4 v7, 0x1

    move-object v3, p0

    move v5, v12

    move v6, v11

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 9062
    const/4 v3, 0x1

    invoke-direct {p0, v3, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 9063
    const-string v3, "[MODE_RESET] resetModeToNormal: succeed reset mode to MODE_NORMAL !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9064
    .end local v9  # "caller":Ljava/lang/String;
    .end local v10  # "streamType":I
    .end local v11  # "device":I
    .end local v12  # "index":I
    goto :goto_42

    .line 9065
    :cond_3d
    const-string v3, "[MODE_RESET] resetModeToNormal: failed reset mode to MODE_NORMAL !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9068
    .end local v1  # "status":I
    :cond_42
    :goto_42
    return-void
.end method

.method private MzModeReset_StartModeResetThread()V
    .registers 3

    .line 9075
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzModeReset_ResetModeParam()V

    .line 9076
    sget-boolean v0, Lcom/android/server/audio/AudioService;->mModeResetThreadStarted:Z

    if-nez v0, :cond_14

    .line 9077
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/audio/AudioService$8;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$8;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9214
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9216
    :cond_14
    return-void
.end method

.method private MzReadAndSetEarsbackEnabled()V
    .registers 9

    .line 8814
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string/jumbo v2, "mz_earphone_feedback_enabled_force_disable"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 8816
    .local v0, "forceDisable":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "earphone_feedback"

    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 8818
    .local v1, "earsbackEnable":I
    const-string v4, "AS.AudioService"

    if-lez v0, :cond_2a

    .line 8819
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-static {v6, v2, v7, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8821
    if-lez v1, :cond_2a

    .line 8822
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v5, v7, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8824
    const-string v2, "[FLYME_KARAOKE] MzReadAndSetEarsbackEnabled: force disable only once while upgrade without double clean"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8825
    return-void

    .line 8828
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKaraokeEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FLYME_KARAOKE] MzReadAndSetEarsbackEnabled: setKaraokeEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8830
    return-void
.end method

.method private MzReadAndSetHifiParam()V
    .registers 8

    .line 8790
    const/4 v0, 0x1

    .line 8792
    .local v0, "isHifiOn":Z
    const-string/jumbo v1, "ro.meizu.hardware.hifi"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8793
    .local v1, "hifiEnable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MzReadAndSetHifiParam: hifiEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8794
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return-void

    .line 8796
    :cond_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const-string v6, "hifi_music_param"

    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 8798
    .local v2, "hifiGain":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hifi_gain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8800
    .local v4, "gainKeyPairs":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->MzIsHifiOutDeviceConnected()Z

    move-result v5

    if-eqz v5, :cond_6c

    if-eqz v0, :cond_6c

    .line 8801
    const-string v5, "hifi_state=on"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8802
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MzReadAndSetHifiParam: hifi_state=on | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 8806
    :cond_6c
    const-string v5, "hifi_state=off"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8807
    const-string v5, "MzReadAndSetHifiParam: hifi_state=off"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8809
    :goto_76
    return-void
.end method

.method private MzReadAndSetRingCurveVolumeEnabled()V
    .registers 5

    .line 8834
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mode_ring_up"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 8836
    .local v0, "ringCurveVolumeEnable":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingCurveVolumeEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CURVE_VOLUME] MzReadAndSetRingCurveVolumeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8838
    return-void
.end method

.method private MzcheckResumeRingerModeNormal(IZ)Z
    .registers 8
    .param p1, "streamType"  # I
    .param p2, "isUnMute"  # Z

    .line 8768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MzcheckResumeRingerModeNormal: streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; isUnMute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8769
    const/4 v0, 0x0

    .line 8770
    .local v0, "ret":Z
    const/4 v2, 0x1

    shl-int v3, v2, p1

    sget v4, Lcom/android/server/audio/AudioService;->mCanResumeNormalStreams:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_48

    if-eqz p2, :cond_48

    .line 8772
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    if-eqz v3, :cond_35

    .line 8773
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    if-ne v3, v2, :cond_48

    .line 8774
    :cond_35
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8775
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 8776
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 8777
    const/4 v0, 0x1

    .line 8779
    :cond_48
    const/4 v1, 0x0

    if-eqz p2, :cond_58

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 8780
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 8782
    :cond_58
    return v1
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Ljava/lang/String;
    .param p6, "x6"  # I

    .line 199
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Ljava/lang/String;
    .param p6, "x6"  # I

    .line 199
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$10402(Lcom/android/server/audio/AudioService;[I)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # [I

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$10508(Lcom/android/server/audio/AudioService;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11200()I
    .registers 1

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    return v0
.end method

.method static synthetic access$11212(I)I
    .registers 2
    .param p0, "x0"  # I

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    return v0
.end method

.method static synthetic access$11220(I)I
    .registers 2
    .param p0, "x0"  # I

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    sub-int/2addr v0, p0

    sput v0, Lcom/android/server/audio/AudioService;->sDataReportTimaMs:I

    return v0
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->MzModeReset_GetAppProcessName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11402(Z)Z
    .registers 1
    .param p0, "x0"  # Z

    .line 199
    sput-boolean p0, Lcom/android/server/audio/AudioService;->mModeResetThreadStarted:Z

    return p0
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzModeReset_ResetModeParam()V

    return-void
.end method

.method static synthetic access$11700()I
    .registers 1

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->mModeResetCount:I

    return v0
.end method

.method static synthetic access$11708()I
    .registers 2

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->mModeResetCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/audio/AudioService;->mModeResetCount:I

    return v0
.end method

.method static synthetic access$11800()I
    .registers 1

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    return v0
.end method

.method static synthetic access$11802(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 199
    sput p0, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    return p0
.end method

.method static synthetic access$11808()I
    .registers 2

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/audio/AudioService;->mModeResetDeathHandlerEmptyRetryCount:I

    return v0
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzModeReset_ResetModeToNormal()V

    return-void
.end method

.method static synthetic access$12000()I
    .registers 1

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->mModeResetState:I

    return v0
.end method

.method static synthetic access$12002(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 199
    sput p0, Lcom/android/server/audio/AudioService;->mModeResetState:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"  # Landroid/os/Handler;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # Ljava/lang/Object;
    .param p6, "x6"  # I

    .line 199
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 6
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/os/IBinder;
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/os/Looper;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/media/SoundPool;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerphoneLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    iput p1, p0, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;)[F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)[[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4500()Ljava/util/List;
    .registers 1

    .line 199
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzLoadMainBackTouchSound()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/os/Handler;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # Ljava/lang/Object;
    .param p6, "x6"  # I

    .line 199
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMainBackTouchSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$5200()[F
    .registers 1

    .line 199
    sget-object v0, Lcom/android/server/audio/AudioService;->mSoundLevelDB:[F

    return-object v0
.end method

.method static synthetic access$5300()I
    .registers 1

    .line 199
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaMute(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/util/ArrayList;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateRingerModeServiceInt()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onObserveDevicesForAllStreams()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/util/List;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onPlaybackConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$7202(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/ContentResolver;
    .param p2, "x2"  # Z

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetEarsbackEnabled()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetRingCurveVolumeEnabled()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$8402(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I

    .line 199
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/Context;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/pm/UserInfo;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Landroid/content/Intent;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;ZI)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;ZII)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService;

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .param p1, "direction"  # I
    .param p2, "suggestedStreamType"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;
    .param p6, "uid"  # I

    .line 1758
    move-object/from16 v8, p0

    move/from16 v0, p3

    if-eqz p1, :cond_38

    .line 1759
    sget-object v7, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v9, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1761
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v9

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 1759
    invoke-virtual {v7, v9}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_3e

    .line 1758
    :cond_38
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    .line 1766
    :goto_3e
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, -0x1

    if-eqz v1, :cond_56

    .line 1767
    and-int/lit16 v0, v0, -0x4001

    .line 1768
    .end local p3  # "flags":I
    .local v0, "flags":I
    iget v1, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-nez v1, :cond_54

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getForcedUseForComm()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_54

    .line 1769
    iput v2, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1775
    :cond_54
    move v1, v0

    goto :goto_57

    .line 1766
    .end local v0  # "flags":I
    .restart local p3  # "flags":I
    :cond_56
    move v1, v0

    .line 1775
    .end local p3  # "flags":I
    .local v1, "flags":I
    :goto_57
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1781
    :try_start_5a
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_64

    .line 1782
    iget v0, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_ad

    move/from16 v9, p2

    .local v0, "streamType":I
    goto :goto_86

    .line 1786
    .end local v0  # "streamType":I
    :cond_64
    move/from16 v9, p2

    :try_start_66
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 1796
    .local v0, "maybeActiveStreamType":I
    const/4 v5, 0x0

    if-eq v0, v4, :cond_76

    const/4 v6, 0x5

    if-ne v0, v6, :cond_71

    goto :goto_76

    .line 1800
    :cond_71
    invoke-static {v0, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    .local v5, "activeForReal":Z
    goto :goto_7a

    .line 1798
    .end local v5  # "activeForReal":Z
    :cond_76
    :goto_76
    invoke-direct {v8, v0, v5}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v5

    .line 1802
    .restart local v5  # "activeForReal":Z
    :goto_7a
    if-nez v5, :cond_85

    iget v6, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v6, v2, :cond_81

    goto :goto_85

    .line 1805
    :cond_81
    iget v2, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    move v0, v2

    .end local v5  # "activeForReal":Z
    .local v0, "streamType":I
    goto :goto_86

    .line 1803
    .local v0, "maybeActiveStreamType":I
    .restart local v5  # "activeForReal":Z
    :cond_85
    :goto_85
    move v2, v0

    .line 1808
    .end local v5  # "activeForReal":Z
    .local v0, "streamType":I
    :goto_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_b2

    .line 1810
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v13

    .line 1812
    .local v13, "isMute":Z
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1813
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v2, v0

    .line 1816
    .local v14, "resolvedStream":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_9c

    if-eq v14, v4, :cond_9c

    .line 1818
    and-int/lit8 v1, v1, -0x5

    move v15, v1

    goto :goto_9d

    .line 1831
    :cond_9c
    move v15, v1

    .end local v1  # "flags":I
    .local v15, "flags":I
    :goto_9d
    move-object/from16 v1, p0

    move v2, v0

    move/from16 v3, p1

    move v4, v15

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1832
    return-void

    .line 1808
    .end local v0  # "streamType":I
    .end local v13  # "isMute":Z
    .end local v14  # "resolvedStream":I
    .end local v15  # "flags":I
    .restart local v1  # "flags":I
    :catchall_ad
    move-exception v0

    move/from16 v9, p2

    :goto_b0
    :try_start_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b2

    throw v0

    :catchall_b2
    move-exception v0

    goto :goto_b0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"  # Z

    .line 2893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2894
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2895
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2897
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2898
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "ringerMode"  # I

    .line 5044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5045
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5046
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5048
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5049
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"  # I

    .line 5053
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5055
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5056
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v1

    const-string v2, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5057
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5059
    .end local v0  # "broadcast":Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"  # Ljava/lang/String;

    .line 8035
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private canChangeAccessibilityVolume()Z
    .registers 7

    .line 2417
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 2420
    monitor-exit v0

    return v2

    .line 2422
    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 2423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2424
    .local v1, "callingUid":I
    move v4, v3

    .local v4, "i":I
    :goto_1a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    .line 2425
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_27

    .line 2426
    monitor-exit v0

    return v2

    .line 2424
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2430
    .end local v1  # "callingUid":I
    .end local v4  # "i":I
    :cond_2a
    monitor-exit v0

    return v3

    .line 2431
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private canProjectAudio(Landroid/media/projection/IMediaProjection;)Z
    .registers 8
    .param p1, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 8040
    const/4 v0, 0x0

    const-string v1, "AS.AudioService"

    if-nez p1, :cond_b

    .line 8041
    const-string v2, "MediaProjection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8042
    return v0

    .line 8045
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    .line 8046
    .local v2, "projectionService":Landroid/media/projection/IMediaProjectionManager;
    if-nez v2, :cond_17

    .line 8047
    const-string v3, "Can\'t get service IMediaProjectionManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8048
    return v0

    .line 8052
    :cond_17
    :try_start_17
    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 8053
    const-string v3, "App passed invalid MediaProjection token"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_4d

    .line 8054
    return v0

    .line 8060
    :cond_23
    nop

    .line 8063
    :try_start_24
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v3

    if-nez v3, :cond_30

    .line 8064
    const-string v3, "App passed MediaProjection that can not project audio"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_33

    .line 8065
    return v0

    .line 8071
    :cond_30
    nop

    .line 8073
    const/4 v0, 0x1

    return v0

    .line 8067
    :catch_33
    move-exception v3

    .line 8068
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .canProjectAudio() on valid IMediaProjection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8069
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8068
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8070
    return v0

    .line 8056
    .end local v3  # "e":Landroid/os/RemoteException;
    :catch_4d
    move-exception v3

    .line 8057
    .restart local v3  # "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .isValidMediaProjection() on IMediaProjectionManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8058
    invoke-interface {v2}, Landroid/media/projection/IMediaProjectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8057
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8059
    return v0
.end method

.method private checkAddAllFixedVolumeDevices(ILjava/lang/String;)V
    .registers 8
    .param p1, "device"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 1284
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1285
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_2e

    .line 1286
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1289
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v2, v1

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    .line 1291
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1289
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 1294
    :cond_24
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1296
    .end local v1  # "streamType":I
    :cond_2e
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 8

    .line 1222
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_3
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 1224
    :try_start_6
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1225
    .local v2, "numStreamTypes":I
    const/4 v3, 0x0

    .local v3, "streamType":I
    :goto_b
    if-ge v3, v2, :cond_32

    .line 1226
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AS.AudioService"

    .line 1227
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1229
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1230
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1225
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1233
    .end local v2  # "numStreamTypes":I
    .end local v3  # "streamType":I
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_35

    .line 1234
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    .line 1235
    return-void

    .line 1233
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    :try_start_37
    throw v2

    .line 1234
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .line 1300
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1301
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1302
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1301
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1304
    .end local v1  # "streamType":I
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"  # I

    .line 1307
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1308
    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .registers 15
    .param p1, "oldIndex"  # I
    .param p2, "direction"  # I
    .param p3, "step"  # I
    .param p4, "isMuted"  # Z
    .param p5, "caller"  # Ljava/lang/String;
    .param p6, "flags"  # I

    .line 4678
    const/4 v0, 0x1

    .line 4679
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_108

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_d

    goto/16 :goto_108

    .line 4683
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 4685
    .local v1, "ringerMode":I
    const/16 v2, 0x64

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_b5

    const-string v6, "AS.AudioService"

    if-eq v1, v5, :cond_6b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    .line 4765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 4687
    :cond_36
    if-ne p2, v4, :cond_56

    .line 4688
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_4b

    .line 4694
    if-gt p3, p1, :cond_de

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_de

    .line 4695
    const/4 v1, 0x1

    .line 4696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_de

    .line 4699
    :cond_4b
    if-ne p1, p3, :cond_de

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_de

    .line 4700
    const/4 v1, 0x0

    goto/16 :goto_de

    .line 4703
    :cond_56
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_de

    if-eq p2, v3, :cond_60

    const/16 v2, -0x64

    if-ne p2, v2, :cond_de

    .line 4705
    :cond_60
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_66

    .line 4706
    const/4 v1, 0x1

    goto :goto_67

    .line 4708
    :cond_66
    const/4 v1, 0x0

    .line 4711
    :goto_67
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_de

    .line 4715
    :cond_6b
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_76

    .line 4716
    const-string v2, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    goto/16 :goto_de

    .line 4720
    :cond_76
    if-ne p2, v4, :cond_ab

    .line 4722
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_84

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_84

    if-eqz p4, :cond_84

    .line 4723
    const/4 v1, 0x2

    goto :goto_b2

    .line 4724
    :cond_84
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v4, :cond_b2

    .line 4725
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_a8

    .line 4726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    .line 4728
    .local v2, "diff":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_a7

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4729
    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 4730
    const/4 v1, 0x0

    .line 4732
    .end local v2  # "diff":J
    :cond_a7
    goto :goto_b2

    .line 4733
    :cond_a8
    or-int/lit16 v0, v0, 0x800

    goto :goto_b2

    .line 4736
    :cond_ab
    if-eq p2, v5, :cond_b1

    if-eq p2, v3, :cond_b1

    if-ne p2, v2, :cond_b2

    .line 4739
    :cond_b1
    const/4 v1, 0x2

    .line 4741
    :cond_b2
    :goto_b2
    and-int/lit8 v0, v0, -0x2

    .line 4742
    goto :goto_de

    .line 4744
    :cond_b5
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v6, :cond_c3

    if-ne p2, v4, :cond_c3

    mul-int/lit8 v4, p3, 0x2

    if-lt p1, v4, :cond_c3

    if-eqz p4, :cond_c3

    .line 4746
    const/4 v1, 0x2

    goto :goto_db

    .line 4747
    :cond_c3
    if-eq p2, v5, :cond_c9

    if-eq p2, v3, :cond_c9

    if-ne p2, v2, :cond_db

    .line 4750
    :cond_c9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_d2

    .line 4751
    or-int/lit16 v0, v0, 0x80

    goto :goto_db

    .line 4753
    :cond_d2
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_da

    if-ne p2, v5, :cond_da

    .line 4754
    const/4 v1, 0x1

    goto :goto_db

    .line 4758
    :cond_da
    const/4 v1, 0x2

    .line 4762
    :cond_db
    :goto_db
    and-int/lit8 v0, v0, -0x2

    .line 4763
    nop

    .line 4769
    :cond_de
    :goto_de
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4770
    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_f7

    goto :goto_ff

    .line 4772
    :cond_f7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4775
    :cond_ff
    :goto_ff
    const/4 v2, 0x0

    const-string v3, "AS.AudioService.checkForRingerModeChange"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 4777
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 4779
    return v0

    .line 4680
    .end local v1  # "ringerMode":I
    :cond_108
    :goto_108
    return v0
.end method

.method private checkMonitorAudioServerStatePermission()V
    .registers 3

    .line 8704
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8707
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 8710
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8712
    :cond_1d
    :goto_1d
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .registers 6

    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 1315
    aget-object v1, v1, v0

    .line 1316
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_28

    .line 1317
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_28

    .line 1318
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_28

    .line 1319
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1314
    .end local v1  # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1322
    .end local v0  # "i":I
    :cond_2b
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 7
    .param p1, "streamType"  # I
    .param p2, "index"  # I
    .param p3, "device"  # I

    .line 7275
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7276
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_1b

    and-int/lit16 v1, p3, 0x400c

    if-eqz v1, :cond_1b

    .line 7279
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_1b

    .line 7280
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 7282
    :cond_1b
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 7283
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .registers 10
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "errorMsg"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioPolicies"
        }
    .end annotation

    .line 8130
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8131
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8133
    .local v0, "hasPermissionForPolicy":Z
    :goto_d
    const/4 v1, 0x0

    const-string v2, " / uid "

    const-string v3, " for pid "

    const-string v4, "AS.AudioService"

    if-nez v0, :cond_3f

    .line 8134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8134
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8137
    return-object v1

    .line 8140
    :cond_3f
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8141
    .local v5, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v5, :cond_76

    .line 8142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unregistered policy"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8142
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8145
    return-object v1

    .line 8147
    :cond_76
    return-object v5
.end method

.method private createAudioSystemThread()V
    .registers 2

    .line 1184
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1185
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1186
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1187
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .line 1325
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1326
    .local v0, "numStreamTypes":I
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1328
    .local v1, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1329
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1328
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1333
    .end local v2  # "i":I
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1334
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1335
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1336
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1337
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 2990
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2991
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2992
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2993
    .local v1, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2994
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2995
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2996
    const/4 v2, 0x1

    return v2

    .line 2998
    .end local v1  # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_22
    goto :goto_6

    .line 2999
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 8266
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8267
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8268
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8269
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8270
    .end local v2  # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_12

    .line 8271
    :cond_26
    monitor-exit v0

    .line 8272
    return-void

    .line 8271
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 7509
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7512
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const-string v1, "affected"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 7513
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const-string/jumbo v1, "muted"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 7514
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7515
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "type"  # Ljava/lang/String;
    .param p3, "streams"  # I

    .line 7518
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7519
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7520
    if-eqz p3, :cond_4b

    .line 7521
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7522
    const/4 v0, 0x1

    .line 7523
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3c

    .line 7524
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 7525
    .local v2, "stream":I
    and-int v4, p3, v2

    if-eqz v4, :cond_39

    .line 7526
    if-nez v0, :cond_2f

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 7527
    :cond_2f
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7528
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7529
    const/4 v0, 0x0

    .line 7523
    .end local v2  # "stream":I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 7532
    .end local v1  # "i":I
    :cond_3c
    if-eqz p3, :cond_46

    .line 7533
    if-nez v0, :cond_43

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 7534
    :cond_43
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 7536
    :cond_46
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7538
    .end local v0  # "first":Z
    :cond_4b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7539
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1352
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1354
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_38

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1357
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1359
    .end local v1  # "i":I
    :cond_38
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    return-void
.end method

.method private enforceModifyAudioRoutingPermission()V
    .registers 3

    .line 2328
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2333
    return-void

    .line 2331
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 14
    .param p1, "caller"  # Ljava/lang/String;

    .line 7250
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 7251
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/16 v1, 0x400c

    .line 7252
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 7254
    .local v2, "i":I
    :goto_8
    if-eqz v1, :cond_35

    .line 7255
    add-int/lit8 v9, v2, 0x1

    .end local v2  # "i":I
    .local v9, "i":I
    const/4 v3, 0x1

    shl-int v10, v3, v2

    .line 7256
    .local v10, "device":I
    and-int v2, v10, v1

    if-nez v2, :cond_15

    .line 7257
    move v2, v9

    goto :goto_8

    .line 7259
    :cond_15
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 7260
    .local v11, "index":I
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_31

    .line 7261
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7262
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7270
    :cond_31
    not-int v2, v10

    and-int/2addr v1, v2

    .line 7271
    .end local v10  # "device":I
    .end local v11  # "index":I
    move v2, v9

    goto :goto_8

    .line 7272
    .end local v9  # "i":I
    .restart local v2  # "i":I
    :cond_35
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .registers 5
    .param p1, "action"  # Ljava/lang/String;

    .line 7636
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only SystemUI can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7638
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"  # I

    .line 4894
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2c

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x65

    if-ne p1, v0, :cond_15

    goto :goto_2c

    .line 4903
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4901
    :cond_2c
    :goto_2c
    nop

    .line 4905
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"  # I

    .line 3227
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3230
    return-void

    .line 3228
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"  # I

    .line 4908
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 4911
    return-void

    .line 4909
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .registers 11
    .param p1, "aa"  # Landroid/media/AudioAttributes;
    .param p2, "request"  # I
    .param p3, "uid"  # I

    .line 6939
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_44

    const/4 v1, 0x3

    if-eq p2, v1, :cond_f

    goto :goto_44

    .line 6943
    :cond_f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 6944
    .local v1, "extraInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_43

    .line 6945
    const-string v2, "a11y_force_ducking"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_43

    .line 6948
    :cond_1e
    const/4 v2, 0x1

    if-nez p3, :cond_22

    .line 6949
    return v2

    .line 6951
    :cond_22
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6952
    :try_start_25
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_3e

    .line 6953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 6954
    .local v4, "callingUid":I
    move v5, v0

    .local v5, "i":I
    :goto_2e
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3e

    .line 6955
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3b

    .line 6956
    monitor-exit v3

    return v2

    .line 6954
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 6960
    .end local v4  # "callingUid":I
    .end local v5  # "i":I
    :cond_3e
    monitor-exit v3

    .line 6961
    return v0

    .line 6960
    :catchall_40
    move-exception v0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw v0

    .line 6946
    :cond_43
    :goto_43
    return v0

    .line 6941
    .end local v1  # "extraInfo":Landroid/os/Bundle;
    :cond_44
    :goto_44
    return v0
.end method

.method private getActiveStreamType(I)I
    .registers 10
    .param p1, "suggestedStreamType"  # I

    .line 4946
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_a

    if-ne p1, v1, :cond_a

    .line 4948
    return v2

    .line 4951
    :cond_a
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eq v0, v3, :cond_14

    goto :goto_57

    .line 4953
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4954
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 4957
    return v4

    .line 4960
    :cond_21
    return v6

    .line 4962
    :cond_22
    if-ne p1, v1, :cond_45

    .line 4963
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4966
    return v5

    .line 4968
    :cond_2d
    invoke-direct {p0, v6, v6}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4969
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 4972
    return v4

    .line 4976
    :cond_3a
    return v6

    .line 4978
    :cond_3b
    const/16 v0, 0x12c

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4982
    return v7

    .line 4988
    :cond_44
    return v2

    .line 4990
    :cond_45
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 4991
    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4994
    return v7

    .line 4995
    :cond_4e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4998
    return v5

    .line 5001
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 5002
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_64

    .line 5005
    return v4

    .line 5008
    :cond_64
    return v6

    .line 5010
    :cond_65
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 5013
    return v7

    .line 5014
    :cond_6e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v5, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 5017
    return v5

    .line 5018
    :cond_77
    if-ne p1, v1, :cond_8c

    .line 5019
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5022
    return v7

    .line 5023
    :cond_82
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v5, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 5026
    return v5

    .line 5032
    :cond_8b
    return v2

    .line 5039
    :cond_8c
    return p1
.end method

.method private getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 5
    .param p1, "volumeGroupId"  # I

    .line 2361
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 2362
    .local v1, "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 2363
    return-object v1

    .line 2365
    .end local v1  # "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    :cond_1b
    goto :goto_8

    .line 2367
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": invalid volume group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 2846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2848
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2849
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2849
    return v3

    .line 2853
    .end local v2  # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2850
    :catch_17
    move-exception v2

    .line 2853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2854
    nop

    .line 2855
    const/4 v2, 0x0

    return v2
.end method

.method private getDevicesForStream(I)I
    .registers 3
    .param p1, "stream"  # I

    .line 5125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .registers 5
    .param p1, "stream"  # I
    .param p2, "checkOthers"  # Z

    .line 5129
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 5130
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5131
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 5132
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getHearingAidStreamType(I)I
    .registers 5
    .param p1, "mode"  # I

    .line 2439
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    .line 2448
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2449
    return v1

    .line 2451
    :cond_10
    return v0

    .line 2442
    :cond_11
    return v1
.end method

.method private getNewRingerMode(III)I
    .registers 5
    .param p1, "stream"  # I
    .param p2, "index"  # I
    .param p3, "flags"  # I

    .line 2263
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_9

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2268
    :cond_9
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_19

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_19

    .line 2280
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2271
    :cond_19
    :goto_19
    if-nez p2, :cond_2c

    .line 2272
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_2a

    .line 2273
    :cond_21
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_2a

    .line 2274
    :cond_29
    const/4 v0, 0x2

    :goto_2a
    nop

    .local v0, "newRingerMode":I
    goto :goto_2d

    .line 2276
    .end local v0  # "newRingerMode":I
    :cond_2c
    const/4 v0, 0x2

    .line 2278
    .restart local v0  # "newRingerMode":I
    :goto_2d
    return v0
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 3

    .line 8077
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_11

    .line 8078
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8079
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 8081
    .end local v0  # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .registers 8

    .line 4592
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 4593
    .local v0, "min":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 4595
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 4598
    :goto_1c
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_46

    .line 4599
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 4600
    .local v3, "index":I
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 4602
    .local v4, "gainDB":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 4604
    goto :goto_46

    .line 4605
    :cond_36
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_3e

    .line 4606
    move v0, v3

    .line 4607
    goto :goto_46

    .line 4608
    :cond_3e
    cmpg-float v5, v4, v5

    if-gez v5, :cond_44

    .line 4609
    move v0, v3

    goto :goto_45

    .line 4611
    :cond_44
    move v2, v3

    .line 4613
    .end local v3  # "index":I
    .end local v4  # "gainDB":F
    :goto_45
    goto :goto_1c

    .line 4614
    :cond_46
    :goto_46
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .registers 4
    .param p1, "attributes"  # Landroid/media/AudioAttributes;

    .line 2711
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 2713
    .local v0, "volumeGroupId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 2714
    return v0

    .line 2718
    :cond_d
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I
    .registers 6
    .param p1, "attributes"  # Landroid/media/AudioAttributes;

    .line 2722
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2724
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 2725
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 2726
    .local v3, "volumeGroupId":I
    if-eq v3, v2, :cond_21

    .line 2727
    return v3

    .line 2729
    .end local v1  # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3  # "volumeGroupId":I
    :cond_21
    goto :goto_d

    .line 2730
    :cond_22
    return v2
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 6858
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 6859
    .local v0, "target":Ljava/lang/String;
    const-string v1, "AS.AudioService"

    if-eqz v0, :cond_1d

    .line 6860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6861
    return-void

    .line 6863
    :cond_1d
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6865
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6867
    .local v2, "ril":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_52

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_52

    .line 6868
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 6869
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_52

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_52

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_52

    .line 6870
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6871
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6872
    return-void

    .line 6875
    .end local v3  # "ri":Landroid/content/pm/ResolveInfo;
    :cond_52
    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6876
    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"  # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 7074
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    .line 7075
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AS.AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7083
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    .line 7084
    .local v3, "cameraSoundForced":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_8d

    .line 7085
    :try_start_20
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_28

    move v0, v5

    goto :goto_29

    :cond_28
    move v0, v6

    :goto_29
    move v7, v0

    .line 7086
    .local v7, "cameraSoundForcedChanged":Z
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 7087
    if-eqz v7, :cond_7f

    .line 7088
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_61

    .line 7089
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_8a

    .line 7090
    :try_start_36
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    .line 7091
    .local v0, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v3, :cond_46

    .line 7092
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 7093
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_55

    .line 7096
    :cond_46
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AS.AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 7097
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 7100
    .end local v0  # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_5e

    .line 7102
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_8a

    goto :goto_61

    .line 7100
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    .end local v2  # "config":Landroid/content/res/Configuration;
    .end local v3  # "cameraSoundForced":Z
    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "context":Landroid/content/Context;
    :try_start_60
    throw v0

    .line 7104
    .restart local v2  # "config":Landroid/content/res/Configuration;
    .restart local v3  # "cameraSoundForced":Z
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "context":Landroid/content/Context;
    :cond_61
    :goto_61
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x4

    .line 7105
    if-eqz v3, :cond_69

    .line 7106
    const/16 v6, 0xb

    goto :goto_6a

    :cond_69
    nop

    :goto_6a
    const-string v9, "handleConfigurationChanged"

    .line 7104
    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 7108
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7116
    .end local v7  # "cameraSoundForcedChanged":Z
    :cond_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_8a

    .line 7117
    :try_start_80
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_8d

    .line 7120
    .end local v2  # "config":Landroid/content/res/Configuration;
    .end local v3  # "cameraSoundForced":Z
    goto :goto_95

    .line 7116
    .restart local v2  # "config":Landroid/content/res/Configuration;
    .restart local v3  # "cameraSoundForced":Z
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "context":Landroid/content/Context;
    :try_start_8c
    throw v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_8d

    .line 7118
    .end local v2  # "config":Landroid/content/res/Configuration;
    .end local v3  # "cameraSoundForced":Z
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "context":Landroid/content/Context;
    :catch_8d
    move-exception v0

    .line 7119
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AS.AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7121
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_95
    return-void
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 3004
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3005
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3006
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3007
    const/4 v1, 0x1

    return v1

    .line 3010
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private initA11yMonitoring()V
    .registers 3

    .line 7393
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7394
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7395
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 7396
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 7397
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 7398
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 7399
    return-void
.end method

.method private isAlarm(I)Z
    .registers 3
    .param p1, "streamType"  # I

    .line 3421
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .registers 7
    .param p1, "caller"  # Ljava/lang/String;

    .line 2285
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2286
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2286
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2288
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1c

    const/16 v4, 0x18

    if-lt v2, v4, :cond_1b

    .line 2289
    return v0

    .line 2291
    :cond_1b
    return v3

    .line 2292
    .end local v1  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1c
    move-exception v1

    .line 2293
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isMedia(I)Z
    .registers 3
    .param p1, "streamType"  # I

    .line 3430
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isMuteAdjust(I)Z
    .registers 3
    .param p1, "adjust"  # I

    .line 4914
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x65

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .registers 3
    .param p1, "streamType"  # I

    .line 3425
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private isPlatformVoice()Z
    .registers 3

    .line 242
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z
    .registers 13
    .param p1, "policyConfig"  # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "hasFocusAccess"  # Z
    .param p3, "isVolumeController"  # Z
    .param p4, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 7981
    const/4 v0, 0x0

    .line 7982
    .local v0, "requireValidProjection":Z
    const/4 v1, 0x0

    .line 7983
    .local v1, "requireCaptureAudioOrMediaOutputPerm":Z
    const/4 v2, 0x0

    .line 7985
    .local v2, "requireModifyRouting":Z
    if-nez p2, :cond_15

    if-eqz p3, :cond_8

    goto :goto_15

    .line 7987
    :cond_8
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7989
    or-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 7986
    :cond_15
    :goto_15
    or-int/lit8 v2, v2, 0x1

    .line 7991
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "AS.AudioService"

    const/4 v6, 0x0

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 7993
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedPlaybackCapture()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 7995
    or-int/lit8 v1, v1, 0x1

    .line 7997
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v7

    invoke-static {v7}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v7

    .line 7998
    .local v7, "error":Ljava/lang/String;
    if-eqz v7, :cond_48

    .line 7999
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8000
    return v6

    .line 8006
    .end local v7  # "error":Ljava/lang/String;
    :cond_48
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_54

    if-eqz p4, :cond_54

    .line 8007
    or-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 8009
    :cond_54
    or-int/lit8 v2, v2, 0x1

    .line 8011
    .end local v4  # "mix":Landroid/media/audiopolicy/AudioMix;
    :goto_56
    goto :goto_1f

    .line 8013
    :cond_57
    if-eqz v1, :cond_6f

    .line 8014
    const-string v3, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 8015
    const-string v3, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 8016
    const-string v3, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8018
    return v6

    .line 8021
    :cond_6f
    if-eqz v0, :cond_78

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->canProjectAudio(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 8022
    return v6

    .line 8025
    :cond_78
    if-eqz v2, :cond_88

    .line 8026
    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 8027
    const-string v3, "Can not capture audio without MODIFY_AUDIO_ROUTING"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8028
    return v6

    .line 8031
    :cond_88
    const/4 v3, 0x1

    return v3
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .registers 5
    .param p1, "streamType"  # I

    .line 4809
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private isSystem(I)Z
    .registers 3
    .param p1, "streamType"  # I

    .line 3435
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .registers 13
    .param p1, "oldUser"  # Landroid/content/pm/UserInfo;

    .line 6879
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6882
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 6883
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 6884
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    .line 6885
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 6887
    :cond_1b
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 6890
    .local v2, "permissions":[Ljava/lang/String;
    :try_start_21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 6891
    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_91

    .line 6894
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 6895
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_37
    if-ltz v4, :cond_90

    .line 6896
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 6898
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_4c

    .line 6899
    goto :goto_8d

    .line 6902
    :cond_4c
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_57

    .line 6904
    goto :goto_8d

    .line 6906
    :cond_57
    if-eqz v1, :cond_6e

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6907
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6908
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 6909
    goto :goto_8d

    .line 6912
    :cond_6e
    :try_start_6e
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6913
    .local v6, "uid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 6914
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 6913
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_84} :catch_85

    .line 6918
    .end local v6  # "uid":I
    goto :goto_8d

    .line 6916
    :catch_85
    move-exception v6

    .line 6917
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AS.AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6895
    .end local v5  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_8d
    add-int/lit8 v4, v4, -0x1

    goto :goto_37

    .line 6920
    .end local v4  # "j":I
    :cond_90
    return-void

    .line 6892
    .end local v3  # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_91
    move-exception v3

    .line 6893
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 5

    .line 3789
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1c

    .line 3791
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 3792
    aget-object v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 3790
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3794
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 13

    .line 3797
    const-string v0, "AS.AudioService"

    const/4 v1, 0x0

    .line 3800
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v2, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3801
    return-void

    .line 3804
    :cond_c
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3807
    :try_start_f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 3809
    const-string v2, "audio_assets"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3810
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3811
    .local v2, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3813
    .local v4, "inTouchSoundsGroup":Z
    const-string v5, "1.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 3815
    :goto_33
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3816
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3817
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_3d

    .line 3818
    goto :goto_57

    .line 3820
    :cond_3d
    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 3821
    const-string/jumbo v6, "name"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3822
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "touch_sounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 3823
    const/4 v4, 0x1

    .line 3824
    nop

    .line 3828
    .end local v5  # "element":Ljava/lang/String;
    .end local v6  # "name":Ljava/lang/String;
    :goto_57
    if-eqz v4, :cond_b9

    .line 3829
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3830
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3831
    .restart local v5  # "element":Ljava/lang/String;
    if-nez v5, :cond_63

    .line 3832
    goto :goto_b9

    .line 3834
    :cond_63
    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 3835
    const-string/jumbo v6, "id"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3836
    .local v6, "id":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v1, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_78} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_78} :catch_ca
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_78} :catch_c0
    .catchall {:try_start_f .. :try_end_78} :catchall_be

    .line 3840
    .local v7, "file":Ljava/lang/String;
    :try_start_78
    const-class v8, Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 3841
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_a1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_78 .. :try_end_82} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_82} :catch_ca
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_82} :catch_c0
    .catchall {:try_start_78 .. :try_end_82} :catchall_be

    move v8, v9

    .line 3845
    .local v8, "fx":I
    nop

    .line 3847
    :try_start_84
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 3848
    .local v9, "i":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_99

    .line 3849
    sget-object v10, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v9, v10

    .line 3850
    sget-object v10, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3852
    :cond_99
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v10, v10, v8

    const/4 v11, 0x0

    aput v9, v10, v11

    .line 3856
    .end local v5  # "element":Ljava/lang/String;
    .end local v6  # "id":Ljava/lang/String;
    .end local v7  # "file":Ljava/lang/String;
    .end local v8  # "fx":I
    .end local v9  # "i":I
    goto :goto_57

    .line 3842
    .restart local v5  # "element":Ljava/lang/String;
    .restart local v6  # "id":Ljava/lang/String;
    .restart local v7  # "file":Ljava/lang/String;
    :catch_a1
    move-exception v8

    .line 3843
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_84 .. :try_end_b6} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_b6} :catch_ca
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_b6} :catch_c0
    .catchall {:try_start_84 .. :try_end_b6} :catchall_be

    .line 3844
    goto :goto_57

    .line 3827
    .end local v5  # "element":Ljava/lang/String;
    .end local v6  # "id":Ljava/lang/String;
    .end local v7  # "file":Ljava/lang/String;
    .end local v8  # "e":Ljava/lang/Exception;
    :cond_b7
    goto/16 :goto_33

    .line 3865
    .end local v2  # "version":Ljava/lang/String;
    .end local v4  # "inTouchSoundsGroup":Z
    :cond_b9
    :goto_b9
    nop

    .line 3866
    :goto_ba
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_de

    .line 3865
    :catchall_be
    move-exception v0

    goto :goto_df

    .line 3862
    :catch_c0
    move-exception v2

    .line 3863
    .local v2, "e":Ljava/io/IOException;
    :try_start_c1
    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3865
    nop

    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_de

    .line 3866
    goto :goto_ba

    .line 3860
    :catch_ca
    move-exception v2

    .line 3861
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3865
    nop

    .end local v2  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_de

    .line 3866
    goto :goto_ba

    .line 3858
    :catch_d4
    move-exception v2

    .line 3859
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "audio assets file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_c1 .. :try_end_da} :catchall_be

    .line 3865
    nop

    .end local v2  # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_de

    .line 3866
    goto :goto_ba

    .line 3869
    :cond_de
    :goto_de
    return-void

    .line 3865
    :goto_df
    if-eqz v1, :cond_e4

    .line 3866
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e4
    throw v0
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .registers 4
    .param p0, "card"  # I
    .param p1, "device"  # I

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z
    .registers 12
    .param p1, "effect"  # Landroid/os/VibrationEffect;
    .param p2, "reason"  # Ljava/lang/String;

    .line 3282
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3283
    return v1

    .line 3285
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 3287
    .local v0, "hapticsDisabled":Z
    :goto_19
    if-eqz v0, :cond_1c

    .line 3288
    return v1

    .line 3291
    :cond_1c
    if-nez p1, :cond_1f

    .line 3292
    return v1

    .line 3294
    :cond_1f
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 3296
    return v2
.end method

.method private muteRingerModeStreams()V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 3361
    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 3363
    .local v2, "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_17

    .line 3364
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3367
    :cond_17
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3368
    .local v3, "ringerMode":I
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    if-nez v3, :cond_20

    goto :goto_22

    :cond_20
    move v5, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v5, v4

    .line 3370
    .local v5, "ringerModeMute":Z
    :goto_23
    if-ne v3, v4, :cond_2d

    .line 3371
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_2d

    move v6, v4

    goto :goto_2e

    :cond_2d
    move v6, v0

    .line 3373
    .local v6, "shouldRingSco":Z
    :goto_2e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3374
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3375
    .local v7, "eventSource":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 3376
    if-eqz v6, :cond_5b

    const/4 v8, 0x3

    move v13, v8

    goto :goto_5c

    :cond_5b
    move v13, v0

    :goto_5c
    const/4 v15, 0x0

    .line 3375
    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3378
    add-int/lit8 v8, v2, -0x1

    .local v8, "streamType":I
    :goto_63
    if-ltz v8, :cond_11e

    .line 3379
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    .line 3380
    .local v9, "isMuted":Z
    const/4 v10, 0x2

    if-eqz v6, :cond_71

    if-eq v8, v10, :cond_6f

    goto :goto_71

    :cond_6f
    move v11, v0

    goto :goto_72

    :cond_71
    :goto_71
    move v11, v4

    .line 3382
    .local v11, "muteAllowedBySco":Z
    :goto_72
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    .line 3383
    .local v12, "shouldZenMute":Z
    if-nez v12, :cond_85

    if-eqz v5, :cond_83

    .line 3384
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_83

    if-eqz v11, :cond_83

    goto :goto_85

    :cond_83
    move v13, v0

    goto :goto_86

    :cond_85
    :goto_85
    move v13, v4

    .line 3385
    .local v13, "shouldMute":Z
    :goto_86
    if-ne v9, v13, :cond_8d

    move/from16 v18, v2

    move v2, v0

    goto/16 :goto_117

    .line 3386
    :cond_8d
    if-nez v13, :cond_106

    .line 3389
    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_f2

    .line 3390
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    .line 3391
    :try_start_98
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    .line 3392
    .local v14, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move v15, v0

    .local v15, "i":I
    :goto_9d
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_d0

    .line 3393
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3394
    .local v4, "device":I
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 3395
    .local v0, "value":I
    if-nez v0, :cond_c5

    .line 3396
    move/from16 v17, v0

    .end local v0  # "value":I
    .local v17, "value":I
    const-string v0, "AS.AudioService"
    :try_end_bd
    .catchall {:try_start_98 .. :try_end_bd} :catchall_eb

    move/from16 v18, v2

    const/16 v2, 0xa

    .end local v2  # "numStreamTypes":I
    .local v18, "numStreamTypes":I
    :try_start_c1
    invoke-virtual {v14, v2, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    goto :goto_c9

    .line 3395
    .end local v17  # "value":I
    .end local v18  # "numStreamTypes":I
    .restart local v0  # "value":I
    .restart local v2  # "numStreamTypes":I
    :cond_c5
    move/from16 v17, v0

    move/from16 v18, v2

    .line 3392
    .end local v0  # "value":I
    .end local v2  # "numStreamTypes":I
    .end local v4  # "device":I
    .restart local v18  # "numStreamTypes":I
    :goto_c9
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v18

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_9d

    .end local v18  # "numStreamTypes":I
    .restart local v2  # "numStreamTypes":I
    :cond_d0
    move/from16 v18, v2

    .line 3400
    .end local v2  # "numStreamTypes":I
    .end local v15  # "i":I
    .restart local v18  # "numStreamTypes":I
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v22

    .line 3401
    .local v22, "device":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v23, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v24, v2, v8

    const/16 v25, 0x1f4

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3408
    .end local v14  # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v22  # "device":I
    monitor-exit v10

    goto :goto_f4

    .end local v18  # "numStreamTypes":I
    .restart local v2  # "numStreamTypes":I
    :catchall_eb
    move-exception v0

    move/from16 v18, v2

    .end local v2  # "numStreamTypes":I
    .restart local v18  # "numStreamTypes":I
    :goto_ee
    monitor-exit v10
    :try_end_ef
    .catchall {:try_start_c1 .. :try_end_ef} :catchall_f0

    throw v0

    :catchall_f0
    move-exception v0

    goto :goto_ee

    .line 3389
    .end local v18  # "numStreamTypes":I
    .restart local v2  # "numStreamTypes":I
    :cond_f2
    move/from16 v18, v2

    .line 3410
    .end local v2  # "numStreamTypes":I
    .restart local v18  # "numStreamTypes":I
    :goto_f4
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3411
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v4, 0x1

    shl-int v10, v4, v8

    not-int v10, v10

    and-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_117

    .line 3414
    .end local v18  # "numStreamTypes":I
    .restart local v2  # "numStreamTypes":I
    :cond_106
    move/from16 v18, v2

    move v2, v0

    .end local v2  # "numStreamTypes":I
    .restart local v18  # "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3415
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v10, v4, v8

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 3378
    .end local v9  # "isMuted":Z
    .end local v11  # "muteAllowedBySco":Z
    .end local v12  # "shouldZenMute":Z
    .end local v13  # "shouldMute":Z
    :goto_117
    add-int/lit8 v8, v8, -0x1

    move v0, v2

    move/from16 v2, v18

    goto/16 :goto_63

    .line 3418
    .end local v8  # "streamType":I
    .end local v18  # "numStreamTypes":I
    .restart local v2  # "numStreamTypes":I
    :cond_11e
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .registers 6
    .param p1, "skipStream"  # I

    .line 5136
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5137
    const/4 v1, 0x0

    move v2, v1

    .local v2, "stream":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_16

    .line 5138
    if-eq v2, p1, :cond_13

    .line 5139
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 5137
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5142
    .end local v2  # "stream":I
    :cond_16
    monitor-exit v0

    .line 5143
    return-void

    .line 5142
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private onAccessoryPlugMediaMute(I)V
    .registers 4
    .param p1, "newDevice"  # I

    .line 5317
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const v0, 0x402678c

    and-int/2addr v0, p1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 5319
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5320
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_29

    .line 5325
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5327
    :cond_29
    return-void
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .registers 4
    .param p1, "newDevice"  # I

    .line 5298
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const v0, 0x402678c

    and-int/2addr v0, p1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 5300
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    .line 5301
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    if-eqz v0, :cond_33

    .line 5302
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_33

    .line 5307
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5309
    :cond_33
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .registers 13
    .param p1, "caller"  # Ljava/lang/String;

    .line 4530
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4533
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v1, :cond_dc

    .line 4534
    :cond_c
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 4536
    .local v2, "device":I
    and-int/lit16 v3, v2, 0x400c

    if-eqz v3, :cond_dc

    .line 4537
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4544
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4550
    .local v3, "index":I
    iget v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4551
    .local v4, "tempMusicActiveMs":I
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 4552
    .local v5, "safeMediaVolumeIndex":I
    sget-boolean v6, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v6, :cond_34

    const/4 v5, 0x0

    .line 4553
    :cond_34
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_dc

    if-le v3, v5, :cond_dc

    .line 4554
    move v1, v6

    .local v1, "i":I
    :goto_3e
    sget-object v7, Lcom/android/server/audio/AudioService;->MUSIC_VOLUME_STEP_THRESHOLD:[I

    array-length v7, v7

    if-ge v1, v7, :cond_98

    .line 4555
    sget-object v7, Lcom/android/server/audio/AudioService;->MUSIC_VOLUME_STEP_THRESHOLD:[I

    aget v7, v7, v1

    mul-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0x4

    if-gt v3, v7, :cond_95

    .line 4556
    iget v7, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    int-to-float v7, v7

    const v8, 0x476a6000  # 60000.0f

    sget-object v9, Lcom/android/server/audio/AudioService;->MUSIC_ACTIVE_MULT_COEF:[F

    aget v9, v9, v1

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4557
    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EAR_PROTECTION] onCheckMusicActive: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") mMusicActiveMs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    goto :goto_98

    .line 4554
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 4563
    .end local v1  # "i":I
    :cond_98
    :goto_98
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v7, 0xdbba00

    if-lt v1, v7, :cond_d9

    .line 4567
    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-eqz v1, :cond_aa

    .line 4568
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4569
    iput v6, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    goto :goto_d9

    .line 4571
    :cond_aa
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000

    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 4572
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    move v4, v1

    .line 4573
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    sub-int/2addr v1, v7

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4574
    const-string v1, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EAR_PROTECTION] onCheckMusicActive: [SHOW WARNING] mMusicActiveMs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    :cond_d9
    :goto_d9
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 4583
    .end local v2  # "device":I
    .end local v3  # "index":I
    .end local v4  # "tempMusicActiveMs":I
    .end local v5  # "safeMediaVolumeIndex":I
    :cond_dc
    monitor-exit v0

    .line 4584
    return-void

    .line 4583
    :catchall_de
    move-exception v1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_3 .. :try_end_e0} :catchall_de

    throw v1
.end method

.method private onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 7
    .param p1, "state"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1262
    const/16 v2, 0x400

    invoke-direct {p0, v2, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1264
    :try_start_12
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v3, :cond_23

    .line 1265
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1266
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 1268
    :cond_23
    monitor-exit v2

    goto :goto_28

    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    throw v0

    .line 1270
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_42

    .line 1273
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1274
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1275
    :try_start_37
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3d

    .line 1276
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1278
    :cond_3d
    monitor-exit v1

    goto :goto_42

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v0

    .line 1281
    :cond_42
    :goto_42
    return-void
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .registers 16
    .param p1, "force"  # Z
    .param p2, "caller"  # Ljava/lang/String;

    .line 4618
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4619
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 4620
    .local v1, "mcc":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_19

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_6c

    if-eqz p1, :cond_6c

    .line 4625
    :cond_19
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 4627
    const-string v2, "audio.safemedia.force"

    .line 4628
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4629
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11100b3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3b

    :cond_39
    move v2, v3

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v2, v4

    .line 4631
    .local v2, "safeMediaVolumeEnabled":Z
    :goto_3c
    const-string v5, "audio.safemedia.bypass"

    .line 4632
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4637
    .local v3, "safeMediaVolumeBypass":Z
    if-eqz v2, :cond_5a

    if-nez v3, :cond_5a

    .line 4638
    const/4 v4, 0x3

    .line 4642
    .local v4, "persistedState":I
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5e

    .line 4643
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v5, :cond_57

    .line 4644
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 4645
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_5e

    .line 4648
    :cond_57
    iput v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    goto :goto_5e

    .line 4652
    .end local v4  # "persistedState":I
    :cond_5a
    const/4 v5, 0x1

    .line 4653
    .local v5, "persistedState":I
    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    move v4, v5

    .line 4655
    .end local v5  # "persistedState":I
    .restart local v4  # "persistedState":I
    :cond_5e
    :goto_5e
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 4656
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4664
    .end local v1  # "mcc":I
    .end local v2  # "safeMediaVolumeEnabled":Z
    .end local v3  # "safeMediaVolumeBypass":Z
    .end local v4  # "persistedState":I
    :cond_6c
    monitor-exit v0

    .line 4665
    return-void

    .line 4664
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .registers 8
    .param p1, "state"  # Z

    .line 1172
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    .line 1175
    .local v2, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    .line 1178
    goto :goto_29

    .line 1176
    :catch_21
    move-exception v3

    .line 1177
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v4, "AS.AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v2  # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_29
    goto :goto_d

    .line 1180
    :cond_2a
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .registers 10
    .param p1, "regId"  # Ljava/lang/String;
    .param p2, "state"  # I

    .line 8289
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8291
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 8292
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_60

    if-eqz v5, :cond_5c

    .line 8294
    :try_start_37
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_60

    .line 8298
    goto :goto_5a

    .line 8295
    :catch_3d
    move-exception v1

    .line 8296
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v3, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8297
    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8296
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8299
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_5a
    monitor-exit v0

    return-void

    .line 8301
    .end local v4  # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_5c
    goto :goto_21

    .line 8302
    .end local v2  # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_5d
    goto :goto_d

    .line 8303
    :cond_5e
    monitor-exit v0

    .line 8304
    return-void

    .line 8303
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_60

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1555
    .local p1, "enabledSurroundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3b

    aget v3, v0, v2

    .line 1556
    .local v3, "surroundFormat":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1557
    .local v4, "enabled":Z
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1558
    .local v5, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enable surround format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    .end local v3  # "surroundFormat":I
    .end local v4  # "enabled":Z
    .end local v5  # "ret":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1560
    :cond_3b
    return-void
.end method

.method private onObserveDevicesForAllStreams()V
    .registers 2

    .line 5153
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    .line 5154
    return-void
.end method

.method private onPlaybackConfigChange(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2468
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    const/4 v0, 0x0

    .line 2469
    .local v0, "voiceActive":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 2470
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    .line 2471
    .local v3, "usage":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    const/4 v5, 0x3

    if-ne v3, v5, :cond_27

    .line 2473
    :cond_1f
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    if-ne v5, v4, :cond_27

    .line 2474
    const/4 v0, 0x1

    .line 2475
    goto :goto_28

    .line 2477
    .end local v2  # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v3  # "usage":I
    :cond_27
    goto :goto_5

    .line 2478
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v1, v0, :cond_33

    .line 2479
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHearingAidVolumeOnVoiceActivityUpdate()V

    .line 2481
    :cond_33
    return-void
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .registers 13
    .param p1, "streamType"  # I
    .param p2, "index"  # I
    .param p3, "flags"  # I
    .param p4, "device"  # I
    .param p5, "caller"  # Ljava/lang/String;

    .line 2310
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 2311
    .local v0, "stream":I
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2325
    return-void
.end method

.method private onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .registers 8
    .param p1, "update"  # Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 5947
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    aget-object v0, v0, v1

    .line 5948
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->hasVolumeIndex()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5949
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->getVolumeIndex()I

    move-result v1

    .line 5950
    .local v1, "index":I
    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    iget-object v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5951
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5952
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 5951
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5953
    .end local v1  # "index":I
    goto :goto_6c

    .line 5954
    :cond_46
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update vol on dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5955
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 5954
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5957
    :goto_6c
    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5958
    return-void
.end method

.method private onUnmuteStream(II)V
    .registers 12
    .param p1, "stream"  # I
    .param p2, "flags"  # I

    .line 2210
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2211
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2213
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 2214
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 2215
    .local v8, "index":I
    move-object v2, p0

    move v3, p1

    move v4, v8

    move v5, v8

    move v6, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2216
    return-void
.end method

.method private onUpdateRingerModeServiceInt()V
    .registers 3

    .line 3475
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3476
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 18
    .param p1, "handler"  # Landroid/os/Handler;
    .param p2, "msg"  # I
    .param p3, "arg1"  # I
    .param p4, "arg2"  # I
    .param p5, "obj"  # Ljava/lang/Object;
    .param p6, "delay"  # I

    .line 5068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5071
    .local v0, "ident":J
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5073
    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5074
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 7

    .line 7617
    const-string v0, "AS.AudioService"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 7618
    .local v1, "isLowRamDevice":Z
    const-wide/32 v2, 0x40000000

    .line 7621
    .local v2, "totalMemory":J
    :try_start_9
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 7622
    .local v4, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 7623
    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move-wide v2, v5

    .line 7627
    .end local v4  # "info":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_20

    .line 7624
    :catch_19
    move-exception v4

    .line 7625
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7626
    const/4 v1, 0x1

    .line 7629
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v4

    .line 7630
    .local v4, "status":I
    if-eqz v4, :cond_3a

    .line 7631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7633
    :cond_3a
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 8
    .param p1, "userSwitch"  # Z

    .line 3992
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3993
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 3996
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3997
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_b
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v0, :cond_42

    .line 3998
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v1

    .line 4000
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_1c

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_1c

    .line 4001
    goto :goto_3c

    .line 4004
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 4005
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 4007
    :try_start_22
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 4008
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_34
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_3b

    .line 4009
    :cond_38
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 4011
    :cond_3b
    monitor-exit v5

    .line 3997
    .end local v4  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4011
    .restart local v4  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_3f
    move-exception v2

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v2

    .line 4016
    .end local v1  # "streamType":I
    .end local v4  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 4018
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 4019
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 4020
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 4022
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4030
    :try_start_55
    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4031
    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 4032
    const-string v2, "AS.AudioService"

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 4034
    monitor-exit v1

    .line 4035
    return-void

    .line 4034
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_60

    throw v2
.end method

.method private readCameraSoundForced()Z
    .registers 4

    .line 7057
    const/4 v0, 0x0

    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7058
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 7057
    :cond_19
    return v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 12
    .param p1, "cr"  # Landroid/content/ContentResolver;

    .line 1436
    const/4 v0, 0x0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    goto :goto_c

    :cond_b
    move v2, v0

    :goto_c
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1439
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1443
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_1b

    .line 1444
    const/16 v0, 0x8

    goto :goto_1c

    :cond_1b
    nop

    :goto_1c
    move v7, v0

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1439
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1447
    return-void
.end method

.method private readPersistedSettings()V
    .registers 10

    .line 1620
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1622
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 1623
    const/4 v1, 0x2

    const-string/jumbo v2, "mode_ringer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1625
    .local v2, "ringerModeFromSettings":I
    move v3, v2

    .line 1628
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1629
    const/4 v3, 0x2

    .line 1631
    :cond_13
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_1b

    .line 1632
    const/4 v3, 0x0

    .line 1634
    :cond_1b
    if-eq v3, v2, :cond_23

    .line 1635
    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1637
    :cond_23
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_2b

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_2c

    .line 1638
    :cond_2b
    const/4 v3, 0x2

    .line 1640
    :cond_2c
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1641
    :try_start_2f
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1642
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3a

    .line 1643
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1649
    :cond_3a
    nop

    .line 1651
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_42

    move v6, v1

    goto :goto_43

    .line 1652
    :cond_42
    move v6, v7

    .line 1649
    :goto_43
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1653
    iget v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1655
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_50

    goto :goto_51

    .line 1656
    :cond_50
    move v1, v7

    .line 1653
    :goto_51
    invoke-static {v6, v7, v1}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1658
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1659
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1660
    const-string/jumbo v1, "readPersistedSettings"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1661
    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1662
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1663
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    .line 1664
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_99

    .line 1666
    const/16 v1, 0x6f

    const/4 v5, -0x2

    const-string/jumbo v6, "mute_streams_affected"

    invoke-static {v0, v6, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1670
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1672
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1677
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v5, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1678
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v5, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1681
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1682
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1685
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1686
    return-void

    .line 1664
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method private readUserRestrictions()V
    .registers 5

    .line 1689
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1692
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1693
    const-string v2, "disallow_unmute_device"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1695
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    .line 1697
    .local v1, "masterMute":Z
    :goto_1d
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_27

    .line 1698
    const/4 v1, 0x0

    .line 1699
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1704
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1705
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1706
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1708
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v3, "no_unmute_microphone"

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    .line 1713
    .local v2, "microphoneMute":Z
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1714
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 9
    .param p1, "index"  # I
    .param p2, "srcStream"  # I
    .param p3, "dstStream"  # I

    .line 1717
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p2

    .line 1718
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1719
    .local v0, "srcRange":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    .line 1720
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1722
    .local v1, "dstRange":I
    if-nez v0, :cond_35

    .line 1723
    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleIndex : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    return v2

    .line 1727
    :cond_35
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    .line 1728
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v3

    sub-int v3, p1, v3

    mul-int/2addr v3, v1

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1727
    return v2
.end method

.method public static resendHeadSetMessage()V
    .registers 5

    .line 6666
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "resendHeadSetMessage: update musicfx ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6667
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6668
    .local v0, "intent_musicfx":Landroid/content/Intent;
    const-string v1, "com.android.musicfx.headset_plug"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6669
    const-string v1, "com.android.musicfx"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6672
    .local v1, "ident":J
    const/4 v3, 0x0

    const/4 v4, -0x1

    :try_start_1d
    invoke-static {v0, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25

    .line 6674
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6675
    nop

    .line 6676
    return-void

    .line 6674
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private safeMediaVolumeIndex(I)I
    .registers 4
    .param p1, "device"  # I

    .line 7210
    and-int/lit16 v0, p1, 0x400c

    if-nez v0, :cond_a

    .line 7211
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 7213
    :cond_a
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_11

    .line 7214
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    .line 7216
    :cond_11
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"  # I

    .line 7605
    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    .line 7611
    const/4 v0, 0x0

    return-object v0

    .line 7609
    :cond_d
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 7608
    :cond_10
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 7607
    :cond_13
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 7606
    :cond_16
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .line 4587
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4588
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 2825
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2826
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2829
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 2831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    nop

    .line 2833
    return-void

    .line 2831
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .registers 21
    .param p1, "cr"  # Landroid/content/ContentResolver;
    .param p2, "forceUpdate"  # Z

    .line 1508
    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 1510
    return-void

    .line 1512
    :cond_8
    const-string v2, "encoded_surround_output_enabled_formats"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "enabledSurroundFormats":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1517
    const-string v0, ""

    move-object v4, v0

    goto :goto_17

    .line 1514
    :cond_16
    move-object v4, v0

    .line 1519
    .end local v0  # "enabledSurroundFormats":Ljava/lang/String;
    .local v4, "enabledSurroundFormats":Ljava/lang/String;
    :goto_17
    if-nez p2, :cond_22

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1522
    return-void

    .line 1525
    :cond_22
    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1526
    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1527
    .local v6, "surroundFormats":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 1528
    .local v14, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v7, v6

    const/4 v9, 0x0

    :goto_32
    if-ge v9, v7, :cond_80

    aget-object v10, v6, v9

    .line 1530
    .local v10, "format":Ljava/lang/String;
    :try_start_36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1531
    .local v0, "audioFormat":I
    const/4 v11, 0x0

    .line 1532
    .local v11, "isSurroundFormat":Z
    sget-object v12, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v13, v12

    const/4 v15, 0x0

    :goto_43
    if-ge v15, v13, :cond_52

    aget v16, v12, v15

    move/from16 v17, v16

    .line 1533
    .local v17, "sf":I
    move/from16 v8, v17

    .end local v17  # "sf":I
    .local v8, "sf":I
    if-ne v8, v0, :cond_4f

    .line 1534
    const/4 v11, 0x1

    .line 1535
    goto :goto_52

    .line 1532
    .end local v8  # "sf":I
    :cond_4f
    add-int/lit8 v15, v15, 0x1

    goto :goto_43

    .line 1538
    :cond_52
    :goto_52
    if-eqz v11, :cond_65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 1539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_65} :catch_66

    .line 1543
    .end local v0  # "audioFormat":I
    .end local v11  # "isSurroundFormat":Z
    :cond_65
    goto :goto_7d

    .line 1541
    :catch_66
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid enabled surround format:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "AS.AudioService"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v10  # "format":Ljava/lang/String;
    :goto_7d
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 1547
    :cond_80
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1549
    invoke-static {v5, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1547
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1550
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v8, 0x18

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1551
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .registers 6
    .param p1, "encodedSurroundMode"  # I
    .param p2, "eventSource"  # Ljava/lang/String;

    .line 1482
    const/16 v0, 0x10

    .line 1483
    .local v0, "forceSetting":I
    if-eqz p1, :cond_2e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1494
    :cond_25
    const/16 v0, 0xf

    .line 1495
    goto :goto_30

    .line 1491
    :cond_28
    const/16 v0, 0xe

    .line 1492
    goto :goto_30

    .line 1488
    :cond_2b
    const/16 v0, 0xd

    .line 1489
    goto :goto_30

    .line 1485
    :cond_2e
    const/4 v0, 0x0

    .line 1486
    nop

    .line 1501
    :goto_30
    const/16 v1, 0x10

    if-eq v0, v1, :cond_3a

    .line 1502
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1505
    :cond_3a
    return-void
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p1, "cr"  # Landroid/content/ContentResolver;
    .param p2, "eventSource"  # Ljava/lang/String;

    .line 1473
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1476
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1477
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 5
    .param p1, "muted"  # Z
    .param p2, "flags"  # I

    .line 2888
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2889
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2890
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11
    .param p0, "handler"  # Landroid/os/Handler;
    .param p1, "msg"  # I
    .param p2, "existingMsgPolicy"  # I
    .param p3, "arg1"  # I
    .param p4, "arg2"  # I
    .param p5, "obj"  # Ljava/lang/Object;
    .param p6, "delay"  # I

    .line 5078
    if-nez p2, :cond_6

    .line 5079
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 5080
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5081
    return-void

    .line 5084
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 5085
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5086
    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 2836
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2839
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2842
    nop

    .line 2843
    return-void

    .line 2841
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 5
    .param p1, "apc"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8251
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 8253
    const-string v0, "AS.AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8255
    return-void

    .line 8257
    :cond_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8258
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_31

    .line 8259
    const-string v1, "AS.AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8261
    :cond_31
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8262
    monitor-exit v0

    .line 8263
    return-void

    .line 8262
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .registers 8
    .param p1, "mute"  # Z
    .param p2, "flags"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "uid"  # I
    .param p5, "userId"  # I

    .line 3060
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_c

    .line 3061
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 3064
    :cond_c
    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 3066
    return-void

    .line 3068
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3069
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 3072
    return-void

    .line 3074
    :cond_2a
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 3075
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .registers 6
    .param p1, "mute"  # Z
    .param p2, "flags"  # I
    .param p3, "userId"  # I

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_b

    .line 3085
    return-void

    .line 3092
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p3, :cond_19

    .line 3093
    :cond_13
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_37

    .line 3094
    :cond_19
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_37

    .line 3095
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 3096
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 3097
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 3099
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3101
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3104
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_37
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .registers 9
    .param p1, "on"  # Z
    .param p2, "userId"  # I

    .line 3200
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_28

    .line 3201
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    .line 3202
    .local v0, "currentMute":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3203
    .local v1, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 3204
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3205
    if-eq p1, v0, :cond_28

    .line 3206
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000  # 2.0f

    .line 3207
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 3206
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3210
    .end local v0  # "currentMute":Z
    .end local v1  # "identity":J
    :cond_28
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 23
    .param p1, "mode"  # I
    .param p2, "cb"  # Landroid/os/IBinder;
    .param p3, "pid"  # I
    .param p4, "caller"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceBroker.mSetModeLock"
        }
    .end annotation

    .line 3645
    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v1, 0x0

    .line 3646
    .local v1, "newModeOwnerPid":I
    const-string v2, "AS.AudioService"

    if-nez p2, :cond_12

    .line 3647
    const-string/jumbo v0, "setModeInt() called with null binder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    return v1

    .line 3651
    :cond_12
    const/4 v0, 0x0

    .line 3652
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3653
    .local v10, "iter":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_39

    .line 3654
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3655
    .local v3, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    if-ne v5, v8, :cond_38

    .line 3656
    move-object v0, v3

    .line 3658
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 3659
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3660
    goto :goto_39

    .line 3662
    .end local v3  # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_38
    goto :goto_19

    .line 3663
    :cond_39
    :goto_39
    iget v11, v7, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3664
    .local v11, "oldMode":I
    const/4 v3, 0x0

    move-object/from16 v5, p2

    move v6, v3

    move/from16 v3, p1

    .line 3667
    .end local p1  # "mode":I
    .end local p2  # "cb":Landroid/os/IBinder;
    .local v3, "mode":I
    .local v5, "cb":Landroid/os/IBinder;
    .local v6, "status":I
    :goto_41
    move v12, v3

    .line 3668
    .local v12, "actualMode":I
    if-nez v3, :cond_61

    .line 3670
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5f

    .line 3671
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3672
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 3673
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v12

    move-object v13, v5

    goto :goto_99

    .line 3670
    :cond_5f
    move-object v13, v5

    goto :goto_99

    .line 3680
    :cond_61
    if-nez v0, :cond_6a

    .line 3681
    new-instance v13, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v13, v7, v5, v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    move-object v0, v13

    goto :goto_6b

    .line 3680
    :cond_6a
    move-object v13, v0

    .line 3685
    .end local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v13, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :goto_6b
    :try_start_6b
    invoke-interface {v5, v13, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 3689
    goto :goto_8c

    .line 3686
    :catch_6f
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 3688
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() could not link to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " binder death"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_8c
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3694
    invoke-virtual {v13, v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 3696
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->MzModeReset_StartModeResetThread()V

    move-object v0, v13

    move-object v13, v5

    .line 3700
    .end local v5  # "cb":Landroid/os/IBinder;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v13, "cb":Landroid/os/IBinder;
    :goto_99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[MODE_RESET] setModeInt mMode = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mode = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    iget v5, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v12, v5, :cond_11c

    .line 3703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3705
    .local v14, "identity":J
    const-string v5, "com.tencent.mm"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 3706
    const-string v5, "[FLYME_MUTE_STRATEGY] setModeInt: muteReason=ModeChanged"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    const-string/jumbo v5, "muteReason=ModeChanged"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_ed

    .line 3709
    :cond_d3
    const-string v5, "[FLYME_MUTE_STRATEGY] setModeInt: muteReason=ModeChanged for tecent"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteReason=ForTencent;unmutePid="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3713
    :goto_ed
    invoke-static {v12}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v4

    .line 3714
    .end local v6  # "status":I
    .local v4, "status":I
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3715
    if-nez v4, :cond_10d

    .line 3717
    iput v12, v7, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MODE_RESET] setModeInt mode successfully set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 3722
    :cond_10d
    if-eqz v0, :cond_118

    .line 3723
    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3724
    const/4 v5, 0x0

    invoke-interface {v13, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3728
    :cond_118
    const/4 v3, 0x0

    .line 3730
    .end local v14  # "identity":J
    :goto_119
    move v15, v3

    move v14, v4

    goto :goto_11f

    .line 3731
    .end local v4  # "status":I
    .restart local v6  # "status":I
    :cond_11c
    const/4 v4, 0x0

    move v15, v3

    move v14, v4

    .line 3733
    .end local v3  # "mode":I
    .end local v6  # "status":I
    .local v14, "status":I
    .local v15, "mode":I
    :goto_11f
    if-eqz v14, :cond_130

    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_130

    :cond_12a
    move-object v5, v13

    move v6, v14

    move v3, v15

    const/4 v4, 0x0

    goto/16 :goto_41

    .line 3735
    :cond_130
    :goto_130
    if-nez v14, :cond_199

    .line 3736
    if-eqz v12, :cond_153

    .line 3737
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_143

    .line 3738
    const-string/jumbo v3, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 3740
    :cond_143
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    move/from16 v16, v1

    goto :goto_155

    .line 3744
    :cond_153
    :goto_153
    move/from16 v16, v1

    .end local v1  # "newModeOwnerPid":I
    .local v16, "newModeOwnerPid":I
    :goto_155
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v5

    move-object/from16 v2, p4

    move/from16 v3, p3

    move v4, v15

    move-object/from16 p1, v0

    move-object v0, v5

    .end local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local p1, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move/from16 v5, v16

    move-object v8, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3746
    const/high16 v0, -0x80000000

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 3747
    .local v0, "streamType":I
    invoke-virtual {v7, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 3748
    .local v8, "device":I
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 3749
    .local v17, "index":I
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v17

    move v4, v8

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3751
    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3754
    invoke-virtual {v7, v11, v12}, Lcom/android/server/audio/AudioService;->updateAbsVolumeMultiModeDevices(II)V

    goto :goto_19d

    .line 3735
    .end local v8  # "device":I
    .end local v16  # "newModeOwnerPid":I
    .end local v17  # "index":I
    .end local p1  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v1  # "newModeOwnerPid":I
    :cond_199
    move-object/from16 p1, v0

    .end local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local p1  # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move/from16 v16, v1

    .line 3756
    .end local v1  # "newModeOwnerPid":I
    .restart local v16  # "newModeOwnerPid":I
    :goto_19d
    return v16
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .registers 16
    .param p1, "ringerMode"  # I
    .param p2, "caller"  # Ljava/lang/String;
    .param p3, "external"  # Z

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_c4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_a

    goto/16 :goto_c4

    .line 3303
    :cond_a
    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_ad

    .line 3306
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 3307
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v1, :cond_1d

    .line 3308
    const/4 p1, 0x0

    .line 3311
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GJ_DEBUG] setRingerMode: ringerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", external = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3315
    .local v7, "identity":J
    :try_start_3f
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_a8

    .line 3316
    :try_start_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    move v10, v1

    .line 3317
    .local v10, "ringerModeInternal":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    move v11, v1

    .line 3319
    .local v11, "ringerModeExternal":I
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GJ_DEBUG] setRingerMode: ringerModeInternal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ringerModeExternal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    if-eqz p3, :cond_86

    .line 3322
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3323
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_80

    .line 3324
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, v11

    move v3, p1

    move-object v4, p2

    move v5, v10

    invoke-interface/range {v1 .. v6}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v1

    move p1, v1

    .line 3327
    :cond_80
    if-eq p1, v10, :cond_9f

    .line 3328
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_9f

    .line 3331
    :cond_86
    if-eq p1, v10, :cond_8b

    .line 3332
    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3334
    :cond_8b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_9c

    .line 3335
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, v10

    move v3, p1

    move-object v4, p2

    move v5, v11

    invoke-interface/range {v1 .. v6}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v0

    move p1, v0

    .line 3338
    :cond_9c
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3340
    .end local v10  # "ringerModeInternal":I
    .end local v11  # "ringerModeExternal":I
    :cond_9f
    :goto_9f
    monitor-exit v9
    :try_end_a0
    .catchall {:try_start_42 .. :try_end_a0} :catchall_a5

    .line 3342
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3343
    nop

    .line 3344
    return-void

    .line 3340
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v9
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    .end local v7  # "identity":J
    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "ringerMode":I
    .end local p2  # "caller":Ljava/lang/String;
    .end local p3  # "external":Z
    :try_start_a7
    throw v0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 3342
    .restart local v7  # "identity":J
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "ringerMode":I
    .restart local p2  # "caller":Ljava/lang/String;
    .restart local p3  # "external":Z
    :catchall_a8
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3304
    .end local v7  # "identity":J
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3301
    :cond_c4
    :goto_c4
    return-void
.end method

.method private setRingerModeExt(I)V
    .registers 4
    .param p1, "ringerMode"  # I

    .line 3347
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3348
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 3349
    :cond_9
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 3350
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 3352
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3353
    return-void

    .line 3350
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .registers 21
    .param p1, "ringerMode"  # I
    .param p2, "persist"  # Z

    .line 3442
    move-object/from16 v1, p0

    move/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v10

    .line 3444
    .local v10, "oldRingerMode":I
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3445
    :try_start_b
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, v9, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3446
    .local v0, "change":Z
    :goto_12
    iput v9, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3447
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 3448
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_45

    .line 3451
    if-eqz p2, :cond_3d

    .line 3453
    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v2, :cond_30

    .line 3456
    const/4 v2, 0x2

    if-eq v10, v2, :cond_23

    if-ne v9, v2, :cond_30

    .line 3457
    :cond_23
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x28

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3461
    :cond_30
    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1f4

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3464
    :cond_3d
    if-eqz v0, :cond_44

    .line 3466
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v1, v2, v9}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3468
    :cond_44
    return-void

    .line 3448
    .end local v0  # "change":Z
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"  # Z
    .param p2, "caller"  # Ljava/lang/String;

    .line 7221
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7222
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-eqz v1, :cond_5f

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5f

    .line 7224
    const-string v1, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EAR_PROTECTION] setSafeMediaVolumeEnabled: on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; mSafeMediaVolumeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7225
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_3a

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v3, :cond_3a

    .line 7226
    iput v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 7227
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_5f

    .line 7228
    :cond_3a
    if-nez p1, :cond_5f

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v1, :cond_5f

    .line 7229
    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 7231
    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v1, :cond_4c

    .line 7232
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    goto :goto_4e

    .line 7235
    :cond_4c
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 7236
    :goto_4e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 7237
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0xea60

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7246
    :cond_5f
    :goto_5f
    monitor-exit v0

    .line 7247
    return-void

    .line 7246
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 31
    .param p1, "streamType"  # I
    .param p2, "index"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;
    .param p6, "uid"  # I

    .line 2540
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v9, p4

    const-string/jumbo v0, "vendor.mls.audio.session.status"

    const-string v3, "default"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2541
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v0, "started"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_26

    .line 2542
    const-string v0, "AS.AudioService"

    const-string/jumbo v3, "setStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    return-void

    .line 2546
    :cond_26
    iget-boolean v0, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_2b

    .line 2547
    return-void

    .line 2551
    :cond_2b
    const/4 v0, 0x0

    if-lez v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v3, v0

    :goto_30
    invoke-direct {v7, v8, v3}, Lcom/android/server/audio/AudioService;->MzcheckResumeRingerModeNormal(IZ)Z

    .line 2553
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2554
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v3, v8

    .line 2555
    .local v11, "streamTypeAlias":I
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v3, v11

    .line 2558
    .local v12, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v13, 0x3

    if-lez v1, :cond_54

    if-ne v11, v13, :cond_54

    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2559
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "setStreamVolume: unmute music stream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-virtual {v12, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2564
    :cond_54
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    .line 2569
    .local v14, "device":I
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_61

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_61

    .line 2571
    return-void

    .line 2575
    :cond_61
    const/16 v3, 0x3e8

    move/from16 v4, p6

    if-ne v4, v3, :cond_75

    .line 2576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v3

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    move v15, v3

    .end local p6  # "uid":I
    .local v3, "uid":I
    goto :goto_76

    .line 2575
    .end local v3  # "uid":I
    .restart local p6  # "uid":I
    :cond_75
    move v15, v4

    .line 2578
    .end local p6  # "uid":I
    .local v15, "uid":I
    :goto_76
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v11

    invoke-virtual {v3, v4, v15, v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_83

    .line 2580
    return-void

    .line 2583
    :cond_83
    invoke-direct {v7, v9}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 2584
    invoke-direct {v7, v11, v1, v2}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v3

    invoke-direct {v7, v3}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_a4

    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2585
    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    goto :goto_a4

    .line 2586
    :cond_9c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2589
    :cond_a4
    :goto_a4
    invoke-direct {v7, v11, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_e3

    .line 2592
    if-ne v8, v4, :cond_e2

    .line 2593
    const-string v3, "android.media.cts"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 2595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStreamVolume(stream="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", calling="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") passthrough"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AS.AudioService"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 2599
    :cond_e2
    return-void

    .line 2602
    :cond_e3
    :goto_e3
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2604
    const/4 v3, 0x0

    :try_start_e7
    iput-object v3, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2606
    invoke-virtual {v12, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    move v5, v3

    .line 2608
    .local v5, "oldIndex":I
    mul-int/lit8 v3, v1, 0xa

    invoke-direct {v7, v3, v8, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v3
    :try_end_f4
    .catchall {:try_start_e7 .. :try_end_f4} :catchall_2e3

    move v1, v3

    .line 2611
    .end local p2  # "index":I
    .local v1, "index":I
    if-eq v5, v1, :cond_130

    .line 2612
    :try_start_f7
    invoke-static {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v3, v13, :cond_130

    if-ne v14, v4, :cond_130

    iget v3, v7, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v3, v4, :cond_130

    .line 2615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2616
    .local v21, "settingNameForDevice":Ljava/lang/String;
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x2a

    const/16 v18, 0x2

    div-int/lit8 v19, v1, 0xa

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_130

    .line 2686
    .end local v5  # "oldIndex":I
    .end local v21  # "settingNameForDevice":Ljava/lang/String;
    :catchall_12b
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_2e6

    .line 2626
    .restart local v5  # "oldIndex":I
    :cond_130
    :goto_130
    if-ne v11, v13, :cond_141

    and-int/lit16 v3, v14, 0x380

    if-eqz v3, :cond_141

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_141

    .line 2633
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v4, v1, 0xa

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 2636
    :cond_141
    const/high16 v3, 0x8000000

    and-int/2addr v3, v14

    if-eqz v3, :cond_170

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v3

    if-ne v8, v3, :cond_170

    .line 2638
    const-string v3, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setStreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stream="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2643
    :cond_170
    if-ne v11, v13, :cond_179

    .line 2644
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {v7, v5, v1, v0, v2}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V
    :try_end_179
    .catchall {:try_start_f7 .. :try_end_179} :catchall_12b

    .line 2647
    :cond_179
    and-int/lit8 v2, v2, -0x21

    .line 2648
    .end local p3  # "flags":I
    .local v2, "flags":I
    if-ne v11, v13, :cond_1ad

    :try_start_17d
    iget v0, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_1ad

    .line 2650
    or-int/lit8 v2, v2, 0x20

    .line 2653
    if-eqz v1, :cond_1a5

    .line 2654
    iget v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v0, v13, :cond_19e

    and-int/lit16 v0, v14, 0x400c

    if-eqz v0, :cond_19e

    .line 2658
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-eqz v0, :cond_197

    .line 2659
    iget v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move v4, v0

    move v3, v2

    .end local v1  # "index":I
    .local v0, "index":I
    goto :goto_1af

    .line 2661
    .end local v0  # "index":I
    .restart local v1  # "index":I
    :cond_197
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    move v4, v0

    move v3, v2

    .end local v1  # "index":I
    .restart local v0  # "index":I
    goto :goto_1af

    .line 2665
    .end local v0  # "index":I
    .restart local v1  # "index":I
    :cond_19e
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_1a2
    .catchall {:try_start_17d .. :try_end_1a2} :catchall_1a8

    move v4, v0

    move v3, v2

    .end local v1  # "index":I
    .restart local v0  # "index":I
    goto :goto_1af

    .line 2653
    .end local v0  # "index":I
    .restart local v1  # "index":I
    :cond_1a5
    move v4, v1

    move v3, v2

    goto :goto_1af

    .line 2686
    .end local v5  # "oldIndex":I
    :catchall_1a8
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_2e6

    .line 2670
    .restart local v5  # "oldIndex":I
    :cond_1ad
    move v4, v1

    move v3, v2

    .end local v1  # "index":I
    .end local v2  # "flags":I
    .local v3, "flags":I
    .local v4, "index":I
    :goto_1af
    :try_start_1af
    invoke-direct {v7, v11, v4, v14}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0
    :try_end_1b3
    .catchall {:try_start_1af .. :try_end_1b3} :catchall_2da

    if-nez v0, :cond_217

    .line 2672
    :try_start_1b5
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-eqz v0, :cond_1d9

    .line 2673
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2674
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_1c0
    .catchall {:try_start_1b5 .. :try_end_1c0} :catchall_20a

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 p2, v3

    .end local v3  # "flags":I
    .local p2, "flags":I
    move/from16 v3, p1

    move/from16 v17, v4

    .end local v4  # "index":I
    .local v17, "index":I
    move/from16 v23, v5

    .end local v5  # "oldIndex":I
    .local v23, "oldIndex":I
    move/from16 v5, p2

    move-object/from16 v18, v6

    move v6, v14

    :try_start_1d0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move/from16 v6, v17

    goto/16 :goto_236

    .line 2677
    .end local v17  # "index":I
    .end local v23  # "oldIndex":I
    .end local p2  # "flags":I
    .restart local v3  # "flags":I
    .restart local v4  # "index":I
    .restart local v5  # "oldIndex":I
    :cond_1d9
    move/from16 p2, v3

    move/from16 v17, v4

    move/from16 v23, v5

    move-object/from16 v18, v6

    .end local v3  # "flags":I
    .end local v4  # "index":I
    .end local v5  # "oldIndex":I
    .restart local v17  # "index":I
    .restart local v23  # "oldIndex":I
    .restart local p2  # "flags":I
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, p2

    move v5, v14

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2678
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_1f7
    .catchall {:try_start_1d0 .. :try_end_1f7} :catchall_203

    move v1, v0

    .line 2679
    .end local v17  # "index":I
    .restart local v1  # "index":I
    const/4 v0, 0x0

    :try_start_1f9
    invoke-direct {v7, v0, v9}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_1fe

    move v6, v1

    goto :goto_236

    .line 2686
    .end local v23  # "oldIndex":I
    :catchall_1fe
    move-exception v0

    move/from16 v2, p2

    goto/16 :goto_2e6

    .end local v1  # "index":I
    .restart local v17  # "index":I
    :catchall_203
    move-exception v0

    move/from16 v2, p2

    move/from16 v1, v17

    goto/16 :goto_2e6

    .end local v17  # "index":I
    .end local p2  # "flags":I
    .restart local v3  # "flags":I
    .restart local v4  # "index":I
    :catchall_20a
    move-exception v0

    move/from16 p2, v3

    move/from16 v17, v4

    move-object/from16 v18, v6

    move/from16 v2, p2

    move/from16 v1, v17

    .end local v3  # "flags":I
    .end local v4  # "index":I
    .restart local v17  # "index":I
    .restart local p2  # "flags":I
    goto/16 :goto_2e6

    .line 2683
    .end local v17  # "index":I
    .end local p2  # "flags":I
    .restart local v3  # "flags":I
    .restart local v4  # "index":I
    .restart local v5  # "oldIndex":I
    :cond_217
    move/from16 p2, v3

    move/from16 v17, v4

    move/from16 v23, v5

    move-object/from16 v18, v6

    .end local v3  # "flags":I
    .end local v4  # "index":I
    .end local v5  # "oldIndex":I
    .restart local v17  # "index":I
    .restart local v23  # "oldIndex":I
    .restart local p2  # "flags":I
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, p2

    move v5, v14

    move-object/from16 v6, p5

    :try_start_22a
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2684
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_235
    .catchall {:try_start_22a .. :try_end_235} :catchall_2d4

    .end local v17  # "index":I
    .restart local v0  # "index":I
    move v6, v0

    .line 2686
    .end local v0  # "index":I
    .local v6, "index":I
    :goto_236
    :try_start_236
    monitor-exit v18
    :try_end_237
    .catchall {:try_start_236 .. :try_end_237} :catchall_2ce

    .line 2687
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2688
    :try_start_23a
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    :try_end_23c
    .catchall {:try_start_23a .. :try_end_23c} :catchall_2c4

    if-eqz v0, :cond_274

    :try_start_23e
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_274

    iget-boolean v0, v7, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_244
    .catchall {:try_start_23e .. :try_end_244} :catchall_26d

    if-eqz v0, :cond_274

    if-ne v11, v13, :cond_274

    move/from16 v5, v23

    .end local v23  # "oldIndex":I
    .restart local v5  # "oldIndex":I
    if-eq v5, v6, :cond_276

    .line 2693
    :try_start_24c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2694
    .local v2, "identity":J
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 2695
    invoke-virtual {v7, v13}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v4

    .line 2696
    invoke-virtual {v7, v13}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v9

    .line 2697
    invoke-virtual {v7, v13}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v13

    .line 2694
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v9, v13}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    .line 2698
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_265
    .catchall {:try_start_24c .. :try_end_265} :catchall_266

    goto :goto_276

    .line 2700
    .end local v2  # "identity":J
    :catchall_266
    move-exception v0

    move/from16 v2, p2

    move v7, v5

    move v9, v6

    goto/16 :goto_2ca

    .end local v5  # "oldIndex":I
    .restart local v23  # "oldIndex":I
    :catchall_26d
    move-exception v0

    move/from16 v2, p2

    move v9, v6

    move/from16 v7, v23

    .end local v23  # "oldIndex":I
    .restart local v5  # "oldIndex":I
    goto :goto_2ca

    .line 2688
    .end local v5  # "oldIndex":I
    .restart local v23  # "oldIndex":I
    :cond_274
    move/from16 v5, v23

    .line 2700
    .end local v23  # "oldIndex":I
    .restart local v5  # "oldIndex":I
    :cond_276
    :goto_276
    :try_start_276
    monitor-exit v1
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_2be

    .line 2701
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v5

    move v4, v6

    move v7, v5

    .end local v5  # "oldIndex":I
    .local v7, "oldIndex":I
    move/from16 v5, p2

    move v9, v6

    .end local v6  # "index":I
    .local v9, "index":I
    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_DEBUG] setStreamVolume: streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    .end local p2  # "flags":I
    .local v2, "flags":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    return-void

    .line 2700
    .end local v2  # "flags":I
    .end local v7  # "oldIndex":I
    .end local v9  # "index":I
    .restart local v5  # "oldIndex":I
    .restart local v6  # "index":I
    .restart local p2  # "flags":I
    :catchall_2be
    move-exception v0

    move/from16 v2, p2

    move v7, v5

    move v9, v6

    .end local v5  # "oldIndex":I
    .end local v6  # "index":I
    .end local p2  # "flags":I
    .restart local v2  # "flags":I
    .restart local v7  # "oldIndex":I
    .restart local v9  # "index":I
    goto :goto_2ca

    .end local v2  # "flags":I
    .end local v7  # "oldIndex":I
    .end local v9  # "index":I
    .restart local v6  # "index":I
    .restart local v23  # "oldIndex":I
    .restart local p2  # "flags":I
    :catchall_2c4
    move-exception v0

    move/from16 v2, p2

    move v9, v6

    move/from16 v7, v23

    .end local v6  # "index":I
    .end local v23  # "oldIndex":I
    .end local p2  # "flags":I
    .restart local v2  # "flags":I
    .restart local v7  # "oldIndex":I
    .restart local v9  # "index":I
    :goto_2ca
    :try_start_2ca
    monitor-exit v1
    :try_end_2cb
    .catchall {:try_start_2ca .. :try_end_2cb} :catchall_2cc

    throw v0

    :catchall_2cc
    move-exception v0

    goto :goto_2ca

    .line 2686
    .end local v2  # "flags":I
    .end local v7  # "oldIndex":I
    .end local v9  # "index":I
    .restart local v6  # "index":I
    .restart local p2  # "flags":I
    :catchall_2ce
    move-exception v0

    move/from16 v2, p2

    move v9, v6

    move v1, v9

    .end local v6  # "index":I
    .end local p2  # "flags":I
    .restart local v2  # "flags":I
    .restart local v9  # "index":I
    goto :goto_2e6

    .end local v2  # "flags":I
    .end local v9  # "index":I
    .restart local v17  # "index":I
    .restart local p2  # "flags":I
    :catchall_2d4
    move-exception v0

    move/from16 v2, p2

    move/from16 v1, v17

    .end local p2  # "flags":I
    .restart local v2  # "flags":I
    goto :goto_2e6

    .end local v2  # "flags":I
    .end local v17  # "index":I
    .restart local v3  # "flags":I
    .restart local v4  # "index":I
    :catchall_2da
    move-exception v0

    move v2, v3

    move/from16 v17, v4

    move-object/from16 v18, v6

    move/from16 v1, v17

    .end local v3  # "flags":I
    .end local v4  # "index":I
    .restart local v2  # "flags":I
    .restart local v17  # "index":I
    goto :goto_2e6

    .end local v2  # "flags":I
    .end local v17  # "index":I
    .local p2, "index":I
    .restart local p3  # "flags":I
    :catchall_2e3
    move-exception v0

    move-object/from16 v18, v6

    .end local p2  # "index":I
    .end local p3  # "flags":I
    .restart local v1  # "index":I
    .restart local v2  # "flags":I
    :goto_2e6
    :try_start_2e6
    monitor-exit v18
    :try_end_2e7
    .catchall {:try_start_2e6 .. :try_end_2e7} :catchall_2e8

    throw v0

    :catchall_2e8
    move-exception v0

    goto :goto_2e6
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .registers 14
    .param p1, "streamType"  # I
    .param p2, "index"  # I
    .param p3, "device"  # I
    .param p4, "force"  # Z
    .param p5, "caller"  # Ljava/lang/String;

    .line 2915
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    .line 2916
    return-void

    .line 2918
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2920
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v0, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz p4, :cond_1d

    .line 2923
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2931
    :cond_1d
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .registers 6
    .param p1, "state"  # Z

    .line 2934
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2935
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_10

    goto :goto_24

    .line 2936
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_26

    .line 2938
    .local v1, "token":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    .line 2940
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2941
    nop

    .line 2942
    .end local v1  # "token":J
    monitor-exit v0

    .line 2943
    return-void

    .line 2940
    .restart local v1  # "token":J
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "state":Z
    throw v3

    .line 2935
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "state":Z
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    .line 2942
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private setSystemAudioVolume(IIII)V
    .registers 9
    .param p1, "oldVolume"  # I
    .param p2, "newVolume"  # I
    .param p3, "maxVolume"  # I
    .param p4, "flags"  # I

    .line 2221
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_2a

    if-eq p1, p2, :cond_2a

    and-int/lit16 v1, p4, 0x100

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_16

    goto :goto_2a

    .line 2229
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2c

    .line 2231
    .local v1, "token":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_25

    .line 2233
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2234
    nop

    .line 2235
    .end local v1  # "token":J
    monitor-exit v0

    .line 2236
    return-void

    .line 2233
    .restart local v1  # "token":J
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "oldVolume":I
    .end local p2  # "newVolume":I
    .end local p3  # "maxVolume":I
    .end local p4  # "flags":I
    throw v3

    .line 2227
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "oldVolume":I
    .restart local p2  # "newVolume":I
    .restart local p3  # "maxVolume":I
    .restart local p4  # "flags":I
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 2235
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private shouldZenMuteStream(I)Z
    .registers 10
    .param p1, "streamType"  # I

    .line 4788
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 4789
    return v1

    .line 4792
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 4793
    .local v0, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    .line 4795
    .local v3, "muteAlarms":Z
    :goto_1a
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v1

    .line 4797
    .local v4, "muteMedia":Z
    :goto_23
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v1

    .line 4799
    .local v5, "muteSystem":Z
    :goto_2c
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4801
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    .line 4800
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 4802
    .local v6, "muteNotificationAndRing":Z
    if-eqz v3, :cond_3e

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_3e
    if-eqz v4, :cond_46

    .line 4803
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_46
    if-eqz v5, :cond_4e

    .line 4804
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_4e
    if-eqz v6, :cond_58

    .line 4805
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_58

    :cond_56
    move v1, v2

    goto :goto_59

    :cond_58
    nop

    .line 4802
    :goto_59
    return v1
.end method

.method private unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8106
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8107
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8106
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8109
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8110
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_5f

    .line 8111
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8111
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8113
    monitor-exit v0

    return-void

    .line 8115
    :cond_5f
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8117
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8118
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8120
    return-void

    .line 8118
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_29 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .registers 6
    .param p1, "a11VolEnabled"  # Z

    .line 7444
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1f

    .line 7445
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 7447
    const/4 v0, 0x1

    const-string v1, "AS.AudioService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 7449
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 7450
    goto :goto_15

    .line 7451
    :cond_14
    move v0, v3

    .line 7449
    :goto_15
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 7452
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 7454
    :cond_1f
    return-void
.end method

.method private updateAssistantUId(Z)V
    .registers 9
    .param p1, "forceUpdate"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 1564
    const/4 v0, 0x0

    .line 1571
    .local v0, "assistantUid":I
    const-string v1, ""

    .line 1572
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    if-eqz v2, :cond_b

    .line 1573
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$RoleObserver;->getAssistantRoleHolder()Ljava/lang/String;

    move-result-object v1

    .line 1575
    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AS.AudioService"

    if-eqz v2, :cond_50

    .line 1576
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, -0x2

    const-string/jumbo v5, "voice_interaction_service"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1579
    .local v2, "assistantName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1580
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assistant"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1584
    :cond_2b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 1585
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1586
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_4c

    .line 1587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid service name for voice_interaction_service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return-void

    .line 1591
    :cond_4c
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1594
    .end local v2  # "assistantName":Ljava/lang/String;
    .end local v4  # "componentName":Landroid/content/ComponentName;
    :cond_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 1595
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1596
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_81

    .line 1599
    const/4 v4, 0x0

    :try_start_65
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_69} :catch_6b

    move v0, v3

    .line 1603
    goto :goto_81

    .line 1600
    :catch_6b
    move-exception v4

    .line 1601
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAssistantUId() could not find UID for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    .end local v2  # "pm":Landroid/content/pm/PackageManager;
    .end local v4  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_81
    :goto_81
    iget v2, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    if-ne v0, v2, :cond_87

    if-eqz p1, :cond_8c

    .line 1608
    :cond_87
    invoke-static {v0}, Landroid/media/AudioSystem;->setAssistantUid(I)I

    .line 1609
    iput v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    .line 1611
    :cond_8c
    return-void
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .registers 3
    .param p1, "touchExploreEnabled"  # Z

    .line 7421
    if-eqz p1, :cond_7

    .line 7422
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_a

    .line 7424
    :cond_7
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 7428
    :goto_a
    return-void
.end method

.method private updateDefaultVolumes()V
    .registers 6

    .line 1341
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 1342
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_1e

    .line 1343
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v0

    aget v2, v2, v4

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    .line 1341
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1349
    .end local v0  # "stream":I
    :cond_21
    return-void
.end method

.method private updateFlagsForTvPlatform(I)I
    .registers 4
    .param p1, "flags"  # I

    .line 2875
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2876
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_11

    .line 2877
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_11

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_11

    .line 2879
    and-int/lit8 p1, p1, -0x2

    .line 2882
    :cond_11
    monitor-exit v0

    .line 2883
    return p1

    .line 2882
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private updateHearingAidVolumeOnVoiceActivityUpdate()V
    .registers 7

    .line 2484
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    .line 2485
    .local v0, "streamType":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 2486
    .local v1, "index":I
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2487
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IZII)V

    .line 2486
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2488
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v1, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2490
    return-void
.end method

.method private updateMasterBalance(Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "cr"  # Landroid/content/ContentResolver;

    .line 1461
    const-string/jumbo v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1466
    .local v0, "masterBalance":F
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterBalance(F)I

    move-result v1

    if-eqz v1, :cond_25

    .line 1467
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "setMasterBalance failed for %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_25
    return-void
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"  # Landroid/content/ContentResolver;

    .line 1452
    const/4 v0, 0x0

    const-string/jumbo v1, "master_mono"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    move v0, v2

    .line 1457
    .local v0, "masterMono":Z
    :cond_d
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1458
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 4850
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 4851
    .local v0, "updatedZenModeAffectedStreams":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string/jumbo v3, "mode_ringer_streams_affected"

    const/16 v4, 0xa6

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4857
    .local v1, "ringerModeAffectedStreams":I
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v4, :cond_16

    .line 4858
    const/4 v1, 0x0

    goto :goto_1f

    .line 4859
    :cond_16
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_1f

    .line 4860
    nop

    .line 4861
    invoke-interface {v4, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 4864
    :cond_1f
    :goto_1f
    and-int/lit8 v1, v1, -0x9

    .line 4866
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v4, :cond_28

    .line 4867
    and-int/lit16 v1, v1, -0x81

    goto :goto_2a

    .line 4869
    :cond_28
    or-int/lit16 v1, v1, 0x80

    .line 4871
    :goto_2a
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_36

    .line 4872
    or-int/lit16 v1, v1, 0x100

    goto :goto_38

    .line 4874
    :cond_36
    and-int/lit16 v1, v1, -0x101

    .line 4877
    :goto_38
    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v4, :cond_45

    .line 4878
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4882
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 4883
    const/4 v2, 0x1

    return v2

    .line 4885
    :cond_45
    return v0
.end method

.method private updateRttEanbled(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"  # Landroid/content/ContentResolver;

    .line 1614
    const/4 v0, 0x0

    const-string/jumbo v1, "rtt_calling_mode"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 1616
    .local v0, "rttEnabled":Z
    :cond_c
    invoke-static {v0}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    .line 1617
    return-void
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .registers 25
    .param p1, "updateVolumes"  # Z
    .param p2, "caller"  # Ljava/lang/String;

    .line 1365
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/16 v3, 0xa

    if-eqz v0, :cond_c

    .line 1366
    move v0, v3

    goto :goto_d

    :cond_c
    const/4 v0, 0x3

    :goto_d
    move v4, v0

    .line 1368
    .local v4, "a11yStreamAlias":I
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_18

    .line 1369
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1370
    const/4 v0, 0x3

    .local v0, "dtmfStreamAlias":I
    goto :goto_29

    .line 1372
    .end local v0  # "dtmfStreamAlias":I
    :cond_18
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_23

    .line 1380
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1381
    const/4 v0, 0x3

    .restart local v0  # "dtmfStreamAlias":I
    goto :goto_29

    .line 1374
    .end local v0  # "dtmfStreamAlias":I
    :cond_23
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1376
    const/4 v0, 0x1

    .line 1378
    .restart local v0  # "dtmfStreamAlias":I
    nop

    .line 1385
    :goto_29
    iget-boolean v5, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_31

    .line 1386
    iput v6, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_46

    .line 1388
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1389
    const/4 v0, 0x0

    .line 1390
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    move v5, v0

    goto :goto_47

    .line 1392
    :cond_40
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1396
    :goto_46
    move v5, v0

    .end local v0  # "dtmfStreamAlias":I
    .local v5, "dtmfStreamAlias":I
    :goto_47
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    aput v5, v0, v7

    .line 1397
    aput v4, v0, v3

    .line 1399
    if-eqz p1, :cond_bc

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_bc

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1402
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1403
    :try_start_5b
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_b9

    .line 1404
    :try_start_5e
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v5

    .line 1405
    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1406
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1408
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1410
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_5e .. :try_end_80} :catchall_b6

    .line 1411
    :try_start_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_b9

    .line 1412
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_8c

    .line 1414
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1418
    :cond_8c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1419
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v7

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1425
    iget-object v15, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v20, v0, v3

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_bc

    .line 1410
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v9
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    .end local v4  # "a11yStreamAlias":I
    .end local v5  # "dtmfStreamAlias":I
    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "updateVolumes":Z
    .end local p2  # "caller":Ljava/lang/String;
    :try_start_b8
    throw v0

    .line 1411
    .restart local v4  # "a11yStreamAlias":I
    .restart local v5  # "dtmfStreamAlias":I
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "updateVolumes":Z
    .restart local p2  # "caller":Ljava/lang/String;
    :catchall_b9
    move-exception v0

    monitor-exit v8
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b9

    throw v0

    .line 1432
    :cond_bc
    :goto_bc
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .registers 5

    .line 4821
    const/4 v0, 0x0

    .line 4822
    .local v0, "zenModeAffectedStreams":I
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 4823
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 4824
    .local v1, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1c

    .line 4826
    or-int/lit8 v0, v0, 0x10

    .line 4829
    :cond_1c
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_24

    .line 4831
    or-int/lit8 v0, v0, 0x8

    .line 4834
    :cond_24
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2c

    .line 4836
    or-int/lit8 v0, v0, 0x2

    .line 4840
    .end local v1  # "zenPolicy":Landroid/app/NotificationManager$Policy;
    :cond_2c
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v1, v0, :cond_33

    .line 4841
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 4842
    return v2

    .line 4845
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .registers 6
    .param p1, "streamTypeAlias"  # I
    .param p2, "flags"  # I

    .line 2736
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eq v0, v1, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    .line 2747
    return v1

    .line 2742
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_25

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    nop

    .line 2742
    :goto_26
    return v1

    .line 2738
    :cond_27
    return v1
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .line 1191
    monitor-enter p0

    .line 1192
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_13

    .line 1195
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 1198
    goto :goto_1

    .line 1196
    :catch_9
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AS.AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    nop

    .end local v0  # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1200
    :cond_13
    monitor-exit p0

    .line 1201
    return-void

    .line 1200
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .registers 4
    .param p1, "stream"  # I
    .param p2, "delay_ms"  # I

    .line 4941
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4942
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 4941
    :goto_10
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .registers 4
    .param p1, "newMode"  # I

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 2300
    return v1

    .line 2301
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 2303
    return v1

    .line 2305
    :cond_13
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public MzPostVolumeChanged(II)V
    .registers 4
    .param p1, "streamType"  # I
    .param p2, "flags"  # I

    .line 9028
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 9029
    return-void
.end method

.method public MzReadAndSetHifiParamExt()V
    .registers 1

    .line 8786
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetHifiParam()V

    .line 8787
    return-void
.end method

.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 10
    .param p1, "fd"  # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"  # Ljava/lang/String;
    .param p3, "aa"  # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"  # Ljava/lang/String;

    .line 7014
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v0

    .line 7015
    .local v0, "isScoOn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FLYME_MUTE_STRATEGY] isScoOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7016
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v1, v4, :cond_31

    .line 7017
    iput v3, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    .line 7019
    :cond_31
    const-string v1, "com.tencent.mm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    if-eqz v1, :cond_b5

    .line 7020
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    .line 7021
    iget v1, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    if-gez v1, :cond_4a

    .line 7022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    .line 7024
    :cond_4a
    if-eqz v0, :cond_7a

    .line 7025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FLYME_MUTE_STRATEGY] abandonAudioFocus: muteReason=ForScoCloud, unMutePid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "muteReason=ForScoCloud;unmutePid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_af

    .line 7028
    :cond_7a
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_af

    .line 7029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FLYME_MUTE_STRATEGY] abandonAudioFocus: muteReason=ForTencent, unMutePid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "muteReason=ForTencent;unmutePid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7033
    :cond_af
    :goto_af
    iget v1, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    if-lez v1, :cond_b5

    iput v3, p0, Lcom/android/server/audio/AudioService;->unMutePid:I

    .line 7036
    :cond_b5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 7
    .param p1, "policyConfig"  # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8153
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8154
    :try_start_3
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8155
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8156
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 8157
    monitor-exit v0

    return v2

    .line 8159
    :cond_e
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1a

    .line 8160
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    monitor-exit v0

    .line 8159
    return v2

    .line 8161
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 13
    .param p1, "streamType"  # I
    .param p2, "direction"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;

    .line 1837
    const/16 v0, 0xa

    if-ne p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    return-void

    .line 1842
    :cond_21
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1844
    nop

    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1844
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1846
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 40
    .param p1, "streamType"  # I
    .param p2, "direction"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;
    .param p6, "uid"  # I

    .line 1854
    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    const-string/jumbo v1, "vendor.mls.audio.session.status"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1855
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v1, "started"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_23

    .line 1856
    const-string v1, "AS.AudioService"

    const-string v2, "adjustStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1860
    :cond_23
    iget-boolean v1, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_28

    .line 1861
    return-void

    .line 1865
    :cond_28
    const/4 v1, 0x0

    if-ne v9, v2, :cond_2d

    move v3, v2

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    invoke-direct {v8, v0, v3}, Lcom/android/server/audio/AudioService;->MzcheckResumeRingerModeNormal(IZ)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1866
    const/4 v3, 0x1

    and-int/lit8 v4, p3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1867
    return-void

    .line 1871
    :cond_45
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1872
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1874
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v7

    .line 1876
    .local v7, "isMuteAdjust":Z
    if-eqz v7, :cond_58

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_58

    .line 1877
    return-void

    .line 1882
    :cond_58
    const/4 v3, 0x6

    if-eqz v7, :cond_90

    if-eqz v0, :cond_5f

    if-ne v0, v3, :cond_90

    :cond_5f
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1885
    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_90

    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1888
    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return-void

    .line 1896
    :cond_90
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v0

    .line 1898
    .local v4, "streamTypeAlias":I
    iget-object v5, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v4

    .line 1900
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v8, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1902
    .local v6, "device":I
    const/4 v15, 0x3

    if-ne v0, v3, :cond_c1

    .line 1903
    invoke-static {v1}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v12

    if-eq v12, v15, :cond_c1

    and-int/lit16 v12, v6, 0x380

    if-eqz v12, :cond_c1

    .line 1905
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v12

    if-eqz v12, :cond_c1

    .line 1906
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1907
    const/4 v0, 0x0

    .line 1908
    .end local p1  # "streamType":I
    .local v0, "streamType":I
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v0

    .line 1909
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v3, v4

    move v3, v4

    move v4, v0

    goto :goto_c3

    .line 1914
    .end local v0  # "streamType":I
    .restart local p1  # "streamType":I
    :cond_c1
    move v3, v4

    move v4, v0

    .end local p1  # "streamType":I
    .local v3, "streamTypeAlias":I
    .local v4, "streamType":I
    :goto_c3
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1915
    .local v12, "aliasIndex":I
    const/4 v13, 0x1

    .line 1920
    .local v13, "adjustVolume":Z
    and-int/lit16 v0, v6, 0x380

    if-nez v0, :cond_d1

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_d1

    .line 1922
    return-void

    .line 1927
    :cond_d1
    const/16 v0, 0x3e8

    move/from16 v14, p6

    if-ne v14, v0, :cond_e5

    .line 1928
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v2, v0

    .end local p6  # "uid":I
    .local v0, "uid":I
    goto :goto_e6

    .line 1927
    .end local v0  # "uid":I
    .restart local p6  # "uid":I
    :cond_e5
    move v2, v14

    .line 1934
    .end local p6  # "uid":I
    .local v2, "uid":I
    :goto_e6
    :try_start_e6
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v14, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v14, v14, v3

    invoke-virtual {v0, v14, v2, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0
    :try_end_f0
    .catch Ljava/lang/SecurityException; {:try_start_e6 .. :try_end_f0} :catch_4af

    if-eqz v0, :cond_f3

    .line 1936
    return-void

    .line 1942
    :cond_f3
    nop

    .line 1946
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1947
    const/4 v0, 0x0

    :try_start_f8
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1948
    monitor-exit v14
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_4a1

    .line 1950
    and-int/lit8 v0, p3, -0x21

    .line 1951
    .end local p3  # "flags":I
    .local v0, "flags":I
    if-ne v3, v15, :cond_144

    iget v14, v8, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v14, v6

    if-eqz v14, :cond_144

    .line 1953
    or-int/lit8 v0, v0, 0x20

    .line 1958
    iget v14, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v14, v15, :cond_12f

    and-int/lit16 v14, v6, 0x400c

    if-eqz v14, :cond_12f

    .line 1963
    sget-boolean v14, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v14, :cond_12c

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v14

    new-array v15, v1, [Ljava/lang/Object;

    const-string v1, "getScene"

    invoke-virtual {v14, v1, v15}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v14, "game"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    goto :goto_12c

    .line 1966
    :cond_127
    invoke-direct {v8, v6}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    .local v1, "step":I
    goto :goto_133

    .line 1964
    .end local v1  # "step":I
    :cond_12c
    :goto_12c
    iget v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .restart local v1  # "step":I
    goto :goto_133

    .line 1970
    .end local v1  # "step":I
    :cond_12f
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1972
    .restart local v1  # "step":I
    :goto_133
    if-eqz v12, :cond_13d

    .line 1973
    move v12, v1

    move/from16 v23, v1

    move/from16 v24, v12

    const/16 v1, 0xa

    goto :goto_16c

    .line 1972
    :cond_13d
    move/from16 v23, v1

    move/from16 v24, v12

    const/16 v1, 0xa

    goto :goto_16c

    .line 1977
    .end local v1  # "step":I
    :cond_144
    const/16 v1, 0xa

    invoke-direct {v8, v1, v4, v3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v14

    .line 1979
    .local v14, "step":I
    const/4 v15, 0x3

    if-ne v4, v15, :cond_168

    .line 1980
    and-int/lit16 v15, v0, 0x2000

    if-nez v15, :cond_161

    .line 1981
    const/16 v15, 0x28

    if-gt v12, v15, :cond_15a

    if-ne v12, v15, :cond_168

    const/4 v15, 0x1

    if-ne v9, v15, :cond_168

    .line 1982
    :cond_15a
    mul-int/lit8 v14, v14, 0x4

    move/from16 v24, v12

    move/from16 v23, v14

    goto :goto_16c

    .line 1985
    :cond_161
    and-int/lit16 v0, v0, -0x2001

    move/from16 v24, v12

    move/from16 v23, v14

    goto :goto_16c

    .line 2018
    :cond_168
    move/from16 v24, v12

    move/from16 v23, v14

    .end local v12  # "aliasIndex":I
    .end local v14  # "step":I
    .local v23, "step":I
    .local v24, "aliasIndex":I
    :goto_16c
    invoke-direct {v8, v3, v0}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v12

    const/4 v15, 0x2

    if-nez v12, :cond_1ae

    .line 2019
    const/4 v13, 0x0

    .line 2021
    if-ne v4, v15, :cond_1ac

    .line 2022
    const-string v12, "android.media.cts"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1ac

    .line 2023
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustStreamVolume(stream="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", direction="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", calling="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") passthrough"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "AS.AudioService"

    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v13, 0x1

    move v14, v13

    goto :goto_1af

    .line 2029
    :cond_1ac
    move v14, v13

    goto :goto_1af

    .line 2018
    :cond_1ae
    move v14, v13

    .line 2029
    .end local v13  # "adjustVolume":Z
    .local v14, "adjustVolume":Z
    :goto_1af
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v12, v4

    invoke-virtual {v12, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 2030
    .local v13, "oldIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_VOLUME_1] adjustStreamVolume: streamType = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldIndex = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; adjustVolume = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "AS.AudioService"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    if-eqz v14, :cond_43a

    if-eqz v9, :cond_43a

    .line 2033
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v12, 0x12

    invoke-virtual {v1, v12}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 2035
    const/16 v12, 0x65

    if-eqz v7, :cond_245

    .line 2037
    if-ne v9, v12, :cond_1ff

    .line 2038
    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v15

    const/16 v16, 0x1

    xor-int/lit8 v15, v15, 0x1

    .local v15, "state":Z
    goto :goto_206

    .line 2040
    .end local v15  # "state":Z
    :cond_1ff
    const/16 v15, -0x64

    if-ne v9, v15, :cond_205

    const/4 v15, 0x1

    goto :goto_206

    :cond_205
    const/4 v15, 0x0

    .line 2042
    .restart local v15  # "state":Z
    :goto_206
    const/4 v12, 0x3

    if-ne v3, v12, :cond_20c

    .line 2043
    invoke-direct {v8, v15}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2045
    :cond_20c
    const/4 v12, 0x0

    .local v12, "stream":I
    :goto_20d
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v12, v1, :cond_23d

    .line 2046
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v12

    if-ne v3, v1, :cond_236

    .line 2047
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v1

    if-eqz v1, :cond_22c

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v12

    .line 2048
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v1

    move/from16 v25, v2

    .end local v2  # "uid":I
    .local v25, "uid":I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_238

    goto :goto_22e

    .line 2047
    .end local v25  # "uid":I
    .restart local v2  # "uid":I
    :cond_22c
    move/from16 v25, v2

    .line 2050
    .end local v2  # "uid":I
    .restart local v25  # "uid":I
    :goto_22e
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v12

    invoke-virtual {v1, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    goto :goto_238

    .line 2046
    .end local v25  # "uid":I
    .restart local v2  # "uid":I
    :cond_236
    move/from16 v25, v2

    .line 2045
    .end local v2  # "uid":I
    .restart local v25  # "uid":I
    :cond_238
    :goto_238
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v25

    goto :goto_20d

    .end local v25  # "uid":I
    .restart local v2  # "uid":I
    :cond_23d
    move/from16 v25, v2

    .line 2054
    .end local v2  # "uid":I
    .end local v12  # "stream":I
    .end local v15  # "state":Z
    .restart local v25  # "uid":I
    move v2, v13

    move/from16 v20, v14

    const/4 v1, 0x3

    goto/16 :goto_352

    .end local v25  # "uid":I
    .restart local v2  # "uid":I
    :cond_245
    move/from16 v25, v2

    .end local v2  # "uid":I
    .restart local v25  # "uid":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2a0

    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v1, :cond_266

    .line 2056
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v1

    const/4 v2, 0x0

    new-array v12, v2, [Ljava/lang/Object;

    const-string v2, "getScene"

    invoke-virtual {v1, v2, v12}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_264

    goto :goto_266

    :cond_264
    const/4 v1, 0x3

    goto :goto_2a1

    :cond_266
    :goto_266
    add-int v1, v24, v23

    .line 2058
    invoke-direct {v8, v3, v1, v6}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_29e

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/4 v1, 0x3

    if-ne v4, v1, :cond_293

    .line 2062
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mNewVolumeUp:Z

    if-eqz v2, :cond_293

    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-nez v2, :cond_293

    .line 2063
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 2067
    :cond_293
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    move v12, v0

    move v2, v13

    move/from16 v20, v14

    goto/16 :goto_353

    .line 2058
    :cond_29e
    const/4 v1, 0x3

    goto :goto_2a1

    .line 2054
    :cond_2a0
    const/4 v1, 0x3

    .line 2068
    :goto_2a1
    iget v2, v8, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v2, v6

    if-nez v2, :cond_34f

    mul-int v2, v9, v23

    .line 2069
    move-object/from16 v12, p5

    invoke-virtual {v5, v2, v6, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2bc

    .line 2070
    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    goto :goto_2bc

    :cond_2b7
    move v2, v13

    move/from16 v20, v14

    goto/16 :goto_352

    .line 2072
    :cond_2bc
    :goto_2bc
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2cb

    add-int v2, v24, v23

    invoke-direct {v8, v3, v2, v6}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v2

    if-nez v2, :cond_2cb

    .line 2073
    const/4 v2, 0x0

    invoke-direct {v8, v2, v10}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 2078
    :cond_2cb
    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    .line 2080
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2d9

    .line 2082
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    goto :goto_2f3

    .line 2083
    :cond_2d9
    const/4 v2, -0x1

    if-ne v9, v2, :cond_2f3

    .line 2084
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_2f3

    .line 2085
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x12

    const/16 v18, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x15e

    move-object/from16 v16, v2

    move/from16 v19, v3

    move/from16 v20, v0

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2090
    :cond_2f3
    :goto_2f3
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v1, 0x65

    move-object v12, v2

    move v2, v13

    .end local v13  # "oldIndex":I
    .local v2, "oldIndex":I
    move/from16 v13, v16

    move/from16 v20, v14

    const/16 v21, 0xa

    .end local v14  # "adjustVolume":Z
    .local v20, "adjustVolume":Z
    move/from16 v14, v17

    const/4 v1, 0x3

    move v15, v6

    move/from16 v16, v18

    move-object/from16 v17, v5

    move/from16 v18, v19

    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2099
    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v12

    if-ne v12, v1, :cond_352

    const/4 v12, 0x2

    if-ne v6, v12, :cond_352

    iget v13, v8, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v13, v12, :cond_352

    .line 2102
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "last_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2103
    .local v12, "settingNameForDevice":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v27, 0x2a

    const/16 v28, 0x2

    .line 2106
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    div-int/lit8 v29, v14, 0xa

    const/16 v30, 0x0

    const/16 v32, 0x0

    .line 2103
    move-object/from16 v26, v13

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v32}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_352

    .line 2068
    .end local v2  # "oldIndex":I
    .end local v12  # "settingNameForDevice":Ljava/lang/String;
    .end local v20  # "adjustVolume":Z
    .restart local v13  # "oldIndex":I
    .restart local v14  # "adjustVolume":Z
    :cond_34f
    move v2, v13

    move/from16 v20, v14

    .line 2114
    .end local v13  # "oldIndex":I
    .end local v14  # "adjustVolume":Z
    .restart local v2  # "oldIndex":I
    .restart local v20  # "adjustVolume":Z
    :cond_352
    :goto_352
    move v12, v0

    .end local v0  # "flags":I
    .local v12, "flags":I
    :goto_353
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 2117
    .local v13, "newIndex":I
    if-ne v3, v1, :cond_36c

    and-int/lit16 v0, v6, 0x380

    if-eqz v0, :cond_36c

    and-int/lit8 v0, v12, 0x40

    if-nez v0, :cond_36c

    .line 2124
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v14, v13, 0xa

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 2128
    :cond_36c
    const/high16 v0, 0x8000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_37c

    .line 2131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    if-ne v4, v0, :cond_37c

    .line 2136
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v13, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2141
    :cond_37c
    if-ne v3, v1, :cond_385

    .line 2142
    invoke-virtual {v8, v4}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {v8, v2, v13, v0, v12}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2144
    :cond_385
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2145
    :try_start_388
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_423

    .line 2147
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_38e
    .catchall {:try_start_388 .. :try_end_38e} :catchall_42d

    if-eqz v0, :cond_3d5

    if-ne v3, v1, :cond_3d5

    :try_start_392
    iget v0, v8, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_3d5

    .line 2151
    const/4 v0, 0x0

    .line 2152
    .local v0, "keyCode":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_3ac

    const/4 v15, 0x1

    if-eq v9, v15, :cond_3a8

    const/16 v15, 0x65

    if-eq v9, v15, :cond_3a4

    move v15, v0

    goto :goto_3af

    .line 2160
    :cond_3a4
    const/16 v0, 0xa4

    .line 2161
    move v15, v0

    goto :goto_3af

    .line 2154
    :cond_3a8
    const/16 v0, 0x18

    .line 2155
    move v15, v0

    goto :goto_3af

    .line 2157
    :cond_3ac
    const/16 v0, 0x19

    .line 2158
    move v15, v0

    .line 2165
    .end local v0  # "keyCode":I
    .local v15, "keyCode":I
    :goto_3af
    if-eqz v15, :cond_3d5

    .line 2166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_3b5
    .catchall {:try_start_392 .. :try_end_3b5} :catchall_3ca

    .line 2168
    .local v16, "ident":J
    :try_start_3b5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v15, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2169
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_3c1
    .catchall {:try_start_3b5 .. :try_end_3c1} :catchall_3c5

    .line 2171
    :try_start_3c1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    goto :goto_3d5

    .line 2171
    :catchall_3c5
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2  # "oldIndex":I
    .end local v3  # "streamTypeAlias":I
    .end local v4  # "streamType":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v6  # "device":I
    .end local v7  # "isMuteAdjust":Z
    .end local v11  # "value":Ljava/lang/String;
    .end local v12  # "flags":I
    .end local v13  # "newIndex":I
    .end local v20  # "adjustVolume":Z
    .end local v23  # "step":I
    .end local v24  # "aliasIndex":I
    .end local v25  # "uid":I
    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p2  # "direction":I
    .end local p4  # "callingPackage":Ljava/lang/String;
    .end local p5  # "caller":Ljava/lang/String;
    throw v0
    :try_end_3ca
    .catchall {:try_start_3c1 .. :try_end_3ca} :catchall_3ca

    .line 2188
    .end local v15  # "keyCode":I
    .end local v16  # "ident":J
    .restart local v2  # "oldIndex":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v4  # "streamType":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v6  # "device":I
    .restart local v7  # "isMuteAdjust":Z
    .restart local v11  # "value":Ljava/lang/String;
    .restart local v12  # "flags":I
    .restart local v13  # "newIndex":I
    .restart local v20  # "adjustVolume":Z
    .restart local v23  # "step":I
    .restart local v24  # "aliasIndex":I
    .restart local v25  # "uid":I
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p2  # "direction":I
    .restart local p4  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "caller":Ljava/lang/String;
    :catchall_3ca
    move-exception v0

    move/from16 v16, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    goto/16 :goto_436

    .line 2176
    :cond_3d5
    :goto_3d5
    :try_start_3d5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_41a

    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_41a

    const/4 v0, 0x3

    if-ne v3, v0, :cond_41a

    if-ne v2, v13, :cond_3ee

    if-eqz v7, :cond_3e5

    goto :goto_3ee

    :cond_3e5
    move/from16 v16, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    goto :goto_42b

    .line 2180
    :cond_3ee
    :goto_3ee
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2181
    .local v0, "identity":J
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;
    :try_end_3f4
    .catchall {:try_start_3d5 .. :try_end_3f4} :catchall_42d

    .line 2182
    move/from16 v16, v2

    move/from16 p1, v3

    const/4 v2, 0x3

    .end local v2  # "oldIndex":I
    .end local v3  # "streamTypeAlias":I
    .local v16, "oldIndex":I
    .local p1, "streamTypeAlias":I
    :try_start_3f9
    invoke-virtual {v8, v2}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v3
    :try_end_3fd
    .catchall {:try_start_3f9 .. :try_end_3fd} :catchall_414

    .line 2183
    move-object/from16 v17, v5

    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v17, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :try_start_3ff
    invoke-virtual {v8, v2}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5
    :try_end_403
    .catchall {:try_start_3ff .. :try_end_403} :catchall_410

    .line 2184
    move-object/from16 v18, v11

    .end local v11  # "value":Ljava/lang/String;
    .local v18, "value":Ljava/lang/String;
    :try_start_405
    invoke-virtual {v8, v2}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v11

    .line 2181
    invoke-virtual {v15, v7, v3, v5, v11}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    .line 2185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42b

    .line 2188
    .end local v0  # "identity":J
    .end local v18  # "value":Ljava/lang/String;
    .restart local v11  # "value":Ljava/lang/String;
    :catchall_410
    move-exception v0

    move-object/from16 v18, v11

    .end local v11  # "value":Ljava/lang/String;
    .restart local v18  # "value":Ljava/lang/String;
    goto :goto_436

    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v18  # "value":Ljava/lang/String;
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v11  # "value":Ljava/lang/String;
    :catchall_414
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11  # "value":Ljava/lang/String;
    .restart local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v18  # "value":Ljava/lang/String;
    goto :goto_436

    .line 2176
    .end local v16  # "oldIndex":I
    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v18  # "value":Ljava/lang/String;
    .end local p1  # "streamTypeAlias":I
    .restart local v2  # "oldIndex":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v11  # "value":Ljava/lang/String;
    :cond_41a
    move/from16 v16, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    .end local v2  # "oldIndex":I
    .end local v3  # "streamTypeAlias":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11  # "value":Ljava/lang/String;
    .restart local v16  # "oldIndex":I
    .restart local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v18  # "value":Ljava/lang/String;
    .restart local p1  # "streamTypeAlias":I
    goto :goto_42b

    .line 2145
    .end local v16  # "oldIndex":I
    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v18  # "value":Ljava/lang/String;
    .end local p1  # "streamTypeAlias":I
    .restart local v2  # "oldIndex":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v11  # "value":Ljava/lang/String;
    :cond_423
    move/from16 v16, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    .line 2188
    .end local v2  # "oldIndex":I
    .end local v3  # "streamTypeAlias":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11  # "value":Ljava/lang/String;
    .restart local v16  # "oldIndex":I
    .restart local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v18  # "value":Ljava/lang/String;
    .restart local p1  # "streamTypeAlias":I
    :goto_42b
    monitor-exit v14

    goto :goto_447

    .end local v16  # "oldIndex":I
    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v18  # "value":Ljava/lang/String;
    .end local p1  # "streamTypeAlias":I
    .restart local v2  # "oldIndex":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v11  # "value":Ljava/lang/String;
    :catchall_42d
    move-exception v0

    move/from16 v16, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    .end local v2  # "oldIndex":I
    .end local v3  # "streamTypeAlias":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11  # "value":Ljava/lang/String;
    .restart local v16  # "oldIndex":I
    .restart local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v18  # "value":Ljava/lang/String;
    .restart local p1  # "streamTypeAlias":I
    :goto_436
    monitor-exit v14
    :try_end_437
    .catchall {:try_start_405 .. :try_end_437} :catchall_438

    throw v0

    :catchall_438
    move-exception v0

    goto :goto_436

    .line 2032
    .end local v12  # "flags":I
    .end local v16  # "oldIndex":I
    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v18  # "value":Ljava/lang/String;
    .end local v20  # "adjustVolume":Z
    .end local v25  # "uid":I
    .end local p1  # "streamTypeAlias":I
    .local v0, "flags":I
    .local v2, "uid":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v11  # "value":Ljava/lang/String;
    .local v13, "oldIndex":I
    .restart local v14  # "adjustVolume":Z
    :cond_43a
    move/from16 v25, v2

    move/from16 p1, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move/from16 v16, v13

    move/from16 v20, v14

    .line 2190
    .end local v2  # "uid":I
    .end local v3  # "streamTypeAlias":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v11  # "value":Ljava/lang/String;
    .end local v13  # "oldIndex":I
    .end local v14  # "adjustVolume":Z
    .restart local v16  # "oldIndex":I
    .restart local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v18  # "value":Ljava/lang/String;
    .restart local v20  # "adjustVolume":Z
    .restart local v25  # "uid":I
    .restart local p1  # "streamTypeAlias":I
    move v12, v0

    .end local v0  # "flags":I
    .restart local v12  # "flags":I
    :goto_447
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 2193
    .local v0, "index":I
    const/4 v1, 0x3

    if-ne v4, v1, :cond_45e

    .line 2194
    if-nez v9, :cond_458

    .line 2195
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/audio/AudioService;->mNewVolumeUp:Z

    goto :goto_45e

    .line 2196
    :cond_458
    const/4 v1, 0x1

    if-ne v9, v1, :cond_45e

    .line 2197
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/android/server/audio/AudioService;->mNewVolumeUp:Z

    .line 2202
    :cond_45e
    :goto_45e
    move-object/from16 v1, p0

    move/from16 v13, v16

    move/from16 v11, v25

    .end local v16  # "oldIndex":I
    .end local v25  # "uid":I
    .local v11, "uid":I
    .restart local v13  # "oldIndex":I
    move v2, v4

    move/from16 v15, p1

    .end local p1  # "streamTypeAlias":I
    .local v15, "streamTypeAlias":I
    move v3, v13

    move v14, v4

    .end local v4  # "streamType":I
    .local v14, "streamType":I
    move v4, v0

    move-object/from16 v16, v17

    .end local v17  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v16, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move v5, v12

    move/from16 v17, v6

    .end local v6  # "device":I
    .local v17, "device":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GJ_DEBUG] adjustStreamVolume: streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    return-void

    .line 1948
    .end local v0  # "index":I
    .end local v14  # "streamType":I
    .end local v15  # "streamTypeAlias":I
    .end local v16  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v17  # "device":I
    .end local v18  # "value":Ljava/lang/String;
    .end local v20  # "adjustVolume":Z
    .end local v23  # "step":I
    .end local v24  # "aliasIndex":I
    .restart local v2  # "uid":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v4  # "streamType":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v6  # "device":I
    .local v11, "value":Ljava/lang/String;
    .local v12, "aliasIndex":I
    .local v13, "adjustVolume":Z
    .restart local p3  # "flags":I
    :catchall_4a1
    move-exception v0

    move v15, v3

    move v1, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v11

    move v11, v2

    .end local v2  # "uid":I
    .end local v3  # "streamTypeAlias":I
    .end local v4  # "streamType":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v6  # "device":I
    .local v1, "streamType":I
    .local v11, "uid":I
    .restart local v15  # "streamTypeAlias":I
    .restart local v16  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v17  # "device":I
    .restart local v18  # "value":Ljava/lang/String;
    :goto_4ab
    :try_start_4ab
    monitor-exit v14
    :try_end_4ac
    .catchall {:try_start_4ab .. :try_end_4ac} :catchall_4ad

    throw v0

    :catchall_4ad
    move-exception v0

    goto :goto_4ab

    .line 1939
    .end local v1  # "streamType":I
    .end local v15  # "streamTypeAlias":I
    .end local v16  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v17  # "device":I
    .end local v18  # "value":Ljava/lang/String;
    .restart local v2  # "uid":I
    .restart local v3  # "streamTypeAlias":I
    .restart local v4  # "streamType":I
    .restart local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v6  # "device":I
    .local v11, "value":Ljava/lang/String;
    :catch_4af
    move-exception v0

    move v15, v3

    move v1, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v11

    move v11, v2

    .line 1940
    .end local v2  # "uid":I
    .end local v3  # "streamTypeAlias":I
    .end local v4  # "streamType":I
    .end local v5  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v6  # "device":I
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v1  # "streamType":I
    .local v11, "uid":I
    .restart local v15  # "streamTypeAlias":I
    .restart local v16  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v17  # "device":I
    .restart local v18  # "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no permission to adjustStreamVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "direction"  # I
    .param p2, "suggestedStreamType"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;

    .line 1739
    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1740
    :try_start_5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1741
    .local v0, "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2d

    .line 1742
    if-eqz v0, :cond_18

    .line 1743
    iget-object v9, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x16

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p1

    move-object v14, v0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2c

    .line 1747
    :cond_18
    nop

    .line 1748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1747
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1750
    :goto_2c
    return-void

    .line 1741
    .end local v0  # "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "support"  # Z

    .line 6620
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcpSupportsAbsoluteVolume addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " support="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6622
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 6623
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v6, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6626
    return-void
.end method

.method public bootCompleted()V
    .registers 4

    .line 975
    const-string v0, "AS.AudioService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 978
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 979
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"  # Ljava/lang/String;

    .line 5089
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 5091
    const/4 v0, 0x1

    return v0

    .line 5093
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5096
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    const/4 v1, 0x0

    return v1
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 11
    .param p1, "deviceType"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 6647
    and-int/lit16 v0, p1, 0x400c

    if-eqz v0, :cond_1d

    .line 6649
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIsProductInternational:Z

    if-nez v0, :cond_f

    .line 6650
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 6651
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 6654
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6662
    :cond_1d
    return-void
.end method

.method public disableRingtoneSync(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 8354
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 8355
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_f

    .line 8356
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8359
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8362
    .local v1, "token":J
    :try_start_13
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_21

    .line 8365
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8366
    nop

    .line 8367
    return-void

    .line 8365
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 7288
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7289
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7290
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 7291
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_28

    .line 7292
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 7297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 7299
    :cond_28
    monitor-exit v0

    .line 7300
    return-void

    .line 7299
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 7
    .param p1, "afi"  # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"  # I
    .param p3, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8648
    if-eqz p1, :cond_2e

    .line 8651
    if-eqz p3, :cond_26

    .line 8654
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8655
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8658
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8656
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "afi":Landroid/media/AudioFocusInfo;
    .end local p2  # "focusChange":I
    .end local p3  # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    throw v1

    .line 8659
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "afi":Landroid/media/AudioFocusInfo;
    .restart local p2  # "focusChange":I
    .restart local p3  # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1

    .line 8652
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8649
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 7543
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AS.AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 7545
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 7546
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 7547
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 7549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7550
    const-string v0, "\nStream alias:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5e

    .line 7552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7551
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 7554
    .end local v0  # "i":I
    :cond_5e
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->dump(Ljava/io/PrintWriter;)V

    .line 7556
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7557
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 7558
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7557
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7559
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7561
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7562
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7563
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7564
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7565
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7566
    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7567
    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7568
    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7569
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7570
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7571
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7572
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7573
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7574
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7575
    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7576
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7577
    const-string v0, "  mIsSingleVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7578
    const-string v0, "  mUseFixedVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7579
    const-string v0, "  mFixedVolumeDevices=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7580
    const-string v0, "  mHdmiCecSink="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7581
    const-string v0, "  mHdmiAudioSystemClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7582
    const-string v0, "  mHdmiPlaybackClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7583
    const-string v0, "  mHdmiTvClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7584
    const-string v0, "  mHdmiSystemAudioSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7586
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 7587
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7589
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 7591
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 7593
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7594
    const-string v1, "\nEvent logs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7595
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7596
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7597
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7598
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7599
    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7600
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7601
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7602
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 7
    .param p1, "startForcing"  # Z
    .param p2, "cb"  # Landroid/os/IBinder;

    .line 3018
    if-nez p2, :cond_3

    .line 3019
    return-void

    .line 3021
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 3023
    const-string v0, "AS.AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    return-void

    .line 3026
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3027
    const/4 v1, 0x0

    .line 3028
    .local v1, "applyRequired":Z
    if-eqz p1, :cond_44

    .line 3029
    :try_start_1b
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 3030
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_3d

    .line 3032
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 3033
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 3034
    const/4 v1, 0x1

    .line 3036
    :cond_3d
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_66

    .line 3039
    :cond_44
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v2, :cond_66

    .line 3040
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 3041
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_66

    .line 3042
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 3043
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 3044
    const/4 v1, 0x1

    .line 3048
    :cond_66
    :goto_66
    if-eqz v1, :cond_73

    .line 3050
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 3051
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3053
    .end local v1  # "applyRequired":Z
    :cond_73
    monitor-exit v0

    .line 3054
    return-void

    .line 3053
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_1b .. :try_end_77} :catchall_75

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "streamType"  # I
    .param p2, "cb"  # Landroid/os/IBinder;

    .line 2752
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 2754
    return-void

    .line 2757
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2758
    :try_start_e
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    if-eq p1, v2, :cond_18

    .line 2759
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 2761
    :cond_18
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2762
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v1, v2, :cond_2e

    .line 2763
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v1, :cond_2a

    .line 2764
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2765
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2767
    :cond_2a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_6a

    .line 2769
    :cond_2e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v1, :cond_3a

    .line 2770
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_6a

    .line 2772
    :cond_3a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p2, :cond_5e

    .line 2773
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2775
    :cond_5e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2776
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2780
    :goto_6a
    monitor-exit v0

    .line 2781
    return-void

    .line 2780
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_e .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 8386
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8387
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8389
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 8323
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8324
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8326
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAudioProductStrategies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 1209
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioVolumeGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 1218
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 4526
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .line 7044
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceForMusic()I
    .registers 2

    .line 9231
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getDeviceForStream(I)I
    .registers 4
    .param p1, "stream"  # I

    .line 5101
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 5102
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_29

    .line 5109
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 5110
    const/4 v0, 0x2

    goto :goto_29

    .line 5111
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 5112
    const/high16 v0, 0x40000

    goto :goto_29

    .line 5113
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 5114
    const/high16 v0, 0x80000

    goto :goto_29

    .line 5115
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 5116
    const/high16 v0, 0x200000

    goto :goto_29

    .line 5118
    :cond_27
    and-int/lit16 v0, v0, 0x380

    .line 5121
    :cond_29
    :goto_29
    return v0
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 4
    .param p1, "focusGain"  # I
    .param p2, "attr"  # Landroid/media/AudioAttributes;

    .line 7048
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method getHearingAidStreamType()I
    .registers 2

    .line 2435
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"  # I

    .line 3159
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3160
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3161
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3
    .param p1, "attr"  # Landroid/media/AudioAttributes;

    .line 2383
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2384
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3
    .param p1, "attr"  # Landroid/media/AudioAttributes;

    .line 2390
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2391
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 3

    .line 3762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMode mMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method getModeOwnerPid()I
    .registers 4

    .line 3523
    const/4 v0, 0x0

    .line 3525
    .local v0, "modeOwnerPid":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move v0, v1

    .line 3528
    goto :goto_11

    .line 3526
    :catch_10
    move-exception v1

    .line 3529
    :goto_11
    return v0
.end method

.method public getRingerModeExternal()I
    .registers 3

    .line 3214
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3215
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 3216
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingerModeInternal()I
    .registers 3

    .line 3221
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3222
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 3223
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .line 7131
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"  # I

    .line 3147
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3148
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .registers 3
    .param p1, "streamType"  # I

    .line 3153
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3154
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 9
    .param p1, "streamType"  # I

    .line 3119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->MzModeReset_GetAppProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 3120
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x3

    if-eqz v0, :cond_20

    const-string v2, ".cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3121
    if-ne p1, v1, :cond_20

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 3122
    const/4 v1, 0x0

    return v1

    .line 3127
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 3128
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 3129
    .local v2, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 3130
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 3133
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 3134
    const/4 v4, 0x0

    .line 3136
    :cond_3d
    if-eqz v4, :cond_53

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    if-ne v5, v1, :cond_53

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    .line 3138
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    move v4, v1

    .line 3140
    :cond_53
    const-string v1, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStreamVolume streamType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    add-int/lit8 v1, v4, 0x5

    div-int/lit8 v1, v1, 0xa

    monitor-exit v3

    return v1

    .line 3142
    .end local v4  # "index":I
    :catchall_7f
    move-exception v1

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public getUiSoundsStreamType()I
    .registers 3

    .line 3166
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"  # I

    .line 3501
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 3502
    :cond_6
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "attr"  # Landroid/media/AudioAttributes;

    .line 2373
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2374
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 2376
    .local v0, "stream":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 2378
    .local v1, "device":I
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    move-result v2

    return v2
.end method

.method getVssVolumeForDevice(II)I
    .registers 4
    .param p1, "stream"  # I
    .param p2, "device"  # I

    .line 322
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 14
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "a2dpVolume"  # I

    .line 5256
    if-eqz p1, :cond_53

    .line 5259
    const/4 v0, 0x2

    if-eq p3, v0, :cond_22

    const/16 v1, 0xb

    if-ne p3, v1, :cond_a

    goto :goto_22

    .line 5260
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5263
    :cond_22
    :goto_22
    if-nez p2, :cond_2c

    if-eqz p4, :cond_2c

    .line 5264
    const-string/jumbo v1, "muteReason=A2dpSwitch"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5267
    :cond_2c
    if-eq p2, v0, :cond_48

    if-nez p2, :cond_31

    goto :goto_48

    .line 5269
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5271
    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 5273
    return-void

    .line 5257
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;

    .line 5243
    if-eqz p1, :cond_8

    .line 5246
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 5247
    return-void

    .line 5244
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasAudioFocusUsers()Z
    .registers 2

    .line 7052
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method public hasHapticChannels(Landroid/net/Uri;)Z
    .registers 8
    .param p1, "uri"  # Landroid/net/Uri;

    .line 5333
    const-string v0, "haptic-channel-count"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 5335
    .local v1, "extractor":Landroid/media/MediaExtractor;
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 5336
    move v3, v2

    .local v3, "i":I
    :goto_f
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 5337
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 5338
    .local v4, "format":Landroid/media/MediaFormat;
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 5339
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_2b

    if-lez v5, :cond_27

    .line 5340
    const/4 v0, 0x1

    return v0

    .line 5336
    .end local v4  # "format":Landroid/media/MediaFormat;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 5345
    .end local v3  # "i":I
    :cond_2a
    goto :goto_42

    .line 5343
    :catch_2b
    move-exception v0

    .line 5344
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHapticChannels failure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    .end local v0  # "e":Ljava/io/IOException;
    :goto_42
    return v2
.end method

.method hasMediaDynamicPolicy()Z
    .registers 8

    .line 6632
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 6633
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 6634
    monitor-exit v0

    return v2

    .line 6636
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 6637
    .local v1, "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6638
    .local v4, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 6639
    monitor-exit v0

    return v5

    .line 6641
    .end local v4  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_2d
    goto :goto_18

    .line 6642
    :cond_2e
    monitor-exit v0

    return v2

    .line 6643
    .end local v1  # "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .registers 3

    .line 8243
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 8245
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isAudioServerRunning()Z
    .registers 2

    .line 8746
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8747
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 2

    .line 4464
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 2

    .line 4449
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOnForApp()Z

    move-result v0

    return v0
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .line 7469
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7470
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 7471
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .line 7386
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method isInCommunication()Z
    .registers 7

    .line 4919
    const/4 v0, 0x0

    .line 4921
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4922
    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 4924
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4925
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 4926
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GJ_DEBUG] isInCommunication: isInCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_40

    .line 4931
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v4, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v4, 0x1

    .line 4930
    :goto_41
    return v4
.end method

.method public isMasterMute()Z
    .registers 2

    .line 3108
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method isPlatformAutomotive()Z
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPlatformTelevision()Z
    .registers 3

    .line 246
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSpeakerphoneOn()Z
    .registers 2

    .line 4411
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"  # I

    .line 4890
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"  # I

    .line 4784
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamMute(I)Z
    .registers 4
    .param p1, "streamType"  # I

    .line 2947
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_8

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2950
    :cond_8
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2951
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2952
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2953
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .registers 3
    .param p1, "ringerMode"  # I

    .line 3234
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public loadSoundEffects()Z
    .registers 11

    .line 3897
    const/4 v0, 0x3

    .line 3898
    .local v0, "attempts":I
    new-instance v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3900
    .local v1, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v1

    .line 3901
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3902
    :goto_12
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_36

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "attempts":I
    .local v2, "attempts":I
    if-lez v0, :cond_2d

    .line 3904
    const-wide/16 v3, 0x1388

    :try_start_1d
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_3c

    .line 3907
    goto :goto_2b

    .line 3905
    :catch_21
    move-exception v0

    .line 3906
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_22
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_3c

    .line 3907
    nop

    .line 3902
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_2b
    move v0, v2

    goto :goto_12

    :cond_2d
    move v0, v2

    .line 3909
    .end local v2  # "attempts":I
    .local v0, "attempts":I
    :cond_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_36

    .line 3910
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    return v3

    .line 3909
    :catchall_36
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .end local v0  # "attempts":I
    .restart local v2  # "attempts":I
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    throw v0

    :catchall_3c
    move-exception v0

    goto :goto_3a
.end method

.method public mzSwitchBluetoothToDevice(I)V
    .registers 3
    .param p1, "device"  # I

    .line 8929
    const-string/jumbo v0, "mzSwitchBluetoothToDevice()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 8930
    return-void

    .line 8933
    :cond_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->mzSwitchBluetoothToDevice(I)V

    .line 8934
    return-void
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 4
    .param p1, "controller"  # Landroid/media/IVolumeController;
    .param p2, "visible"  # Z

    .line 7676
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7679
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7680
    return-void

    .line 7683
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 7685
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 3
    .param p1, "accessibilityManager"  # Landroid/view/accessibility/AccessibilityManager;

    .line 7439
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 7440
    return-void
.end method

.method public onAudioServerDied()V
    .registers 12

    .line 1074
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_13e

    .line 1075
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_13e

    .line 1081
    :cond_c
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1092
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onAudioServerDied()V

    .line 1095
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_50

    .line 1096
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1097
    invoke-static {v3}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1101
    :cond_50
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_53
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    .line 1103
    const/16 v1, 0xb

    goto :goto_5c

    :cond_5b
    move v1, v2

    .line 1104
    .local v1, "forSys":I
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_13b

    .line 1106
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    const-string/jumbo v4, "onAudioServerDied"

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1109
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1110
    .local v3, "numStreamTypes":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "streamType":I
    :goto_6c
    if-ltz v0, :cond_88

    .line 1111
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v0

    .line 1112
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    nop

    .line 1113
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    .line 1112
    invoke-static {v0, v5, v6}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1115
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1110
    .end local v4  # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6c

    .line 1119
    .end local v0  # "streamType":I
    :cond_88
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1128
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_a0

    .line 1129
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1132
    :cond_a0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1133
    :try_start_a3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_aa

    .line 1134
    const/16 v2, 0x8

    goto :goto_ab

    :cond_aa
    nop

    :goto_ab
    move v0, v2

    .line 1135
    .local v0, "forDock":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x3

    const-string/jumbo v6, "onAudioServerDied"

    invoke-virtual {v2, v5, v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1136
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "onAudioServerDied"

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1137
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1138
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1139
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    .line 1140
    .end local v0  # "forDock":I
    monitor-exit v4
    :try_end_cc
    .catchall {:try_start_a3 .. :try_end_cc} :catchall_138

    .line 1141
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_cf
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    invoke-static {v2}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 1143
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_135

    .line 1144
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1145
    :try_start_d8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_e5

    .line 1146
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1148
    :cond_e5
    monitor-exit v2
    :try_end_e6
    .catchall {:try_start_d8 .. :try_end_e6} :catchall_132

    .line 1150
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 1151
    :try_start_e9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1152
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    .line 1153
    nop

    .end local v4  # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_f3

    .line 1154
    :cond_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_e9 .. :try_end_105} :catchall_12f

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "mediaserver.started"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1159
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzCreateLoopServerThread()V

    .line 1160
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetEarsbackEnabled()V

    .line 1161
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->MzReadAndSetRingCurveVolumeEnabled()V

    .line 1165
    const-string/jumbo v0, "restarting=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1167
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1169
    return-void

    .line 1154
    :catchall_12f
    move-exception v2

    :try_start_130
    monitor-exit v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v2

    .line 1148
    :catchall_132
    move-exception v0

    :try_start_133
    monitor-exit v2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v0

    .line 1143
    :catchall_135
    move-exception v2

    :try_start_136
    monitor-exit v0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v2

    .line 1140
    :catchall_138
    move-exception v0

    :try_start_139
    monitor-exit v4
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v0

    .line 1104
    .end local v1  # "forSys":I
    .end local v3  # "numStreamTypes":I
    :catchall_13b
    move-exception v1

    :try_start_13c
    monitor-exit v0
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v1

    .line 1076
    :cond_13e
    :goto_13e
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1079
    return-void
.end method

.method onIndicateSystemReady()V
    .registers 9

    .line 1061
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_7

    .line 1062
    return-void

    .line 1064
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1071
    return-void
.end method

.method public onSystemReady()V
    .registers 10

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->scheduleLoadSoundEffects()V

    .line 986
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSystemReady()V

    .line 988
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 989
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 991
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 992
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_3d

    .line 993
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v3, -0x2c0003

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 995
    :cond_3d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 996
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v2, :cond_55

    .line 998
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 999
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 1001
    :cond_55
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1002
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 1003
    monitor-exit v0

    goto :goto_64

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_61

    throw v1

    .line 1006
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 1008
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1014
    const-string v0, "audio.safemedia.bypass"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1015
    goto :goto_83

    :cond_81
    const/16 v1, 0x7530

    :goto_83
    move v8, v1

    .line 1008
    const-string v7, "AS.AudioService"

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1017
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 1019
    new-instance v0, Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RoleObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    .line 1020
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RoleObserver;->register()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1023
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 7417
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 7418
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"  # I

    .line 3873
    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3874
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .param p1, "effectType"  # I
    .param p2, "volume"  # F

    .line 3879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3880
    return-void

    .line 3883
    :cond_8
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1e

    if-gez p1, :cond_f

    goto :goto_1e

    .line 3888
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3890
    return-void

    .line 3884
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService effectType value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "piid"  # I
    .param p2, "attr"  # Landroid/media/AudioAttributes;

    .line 8397
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 8398
    return-void
.end method

.method public playerEvent(II)V
    .registers 5
    .param p1, "piid"  # I
    .param p2, "event"  # I

    .line 8401
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 8402
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .registers 5
    .param p1, "piid"  # I
    .param p2, "hasOpPlayAudio"  # Z

    .line 8405
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 8406
    return-void
.end method

.method postAccessoryPlugMediaMute(I)V
    .registers 9
    .param p1, "newDevice"  # I

    .line 5288
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5290
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .registers 9
    .param p1, "newDevice"  # I

    .line 5283
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5285
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 11
    .param p1, "streamType"  # I
    .param p2, "device"  # I
    .param p3, "caller"  # Ljava/lang/String;

    .line 5939
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5944
    return-void
.end method

.method postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1245
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .registers 8

    .line 5146
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5150
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 12
    .param p1, "streamType"  # I
    .param p2, "vssVolIndex"  # I
    .param p3, "device"  # I
    .param p4, "caller"  # Ljava/lang/String;

    .line 5931
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5936
    return-void
.end method

.method postUpdateRingerModeServiceInt()V
    .registers 8

    .line 3471
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3472
    return-void
.end method

.method public recorderEvent(II)V
    .registers 4
    .param p1, "riid"  # I
    .param p2, "event"  # I

    .line 8343
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->recorderEvent(II)V

    .line 8344
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .registers 27
    .param p1, "policyConfig"  # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"  # Z
    .param p4, "isFocusPolicy"  # Z
    .param p5, "isTestFocusPolicy"  # Z
    .param p6, "isVolumeController"  # Z
    .param p7, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 7931
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 7933
    const/4 v0, 0x0

    if-nez p4, :cond_15

    if-nez p5, :cond_15

    if-eqz p3, :cond_13

    goto :goto_15

    :cond_13
    move v1, v0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct {v10, v11, v1, v13, v14}, Lcom/android/server/audio/AudioService;->isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_4d

    .line 7937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied to register audio policy for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need MODIFY_AUDIO_ROUTING or MediaProjection that can project audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7937
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7940
    return-object v15

    .line 7943
    :cond_4d
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAudioPolicy for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7944
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioService"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 7943
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7946
    const/16 v16, 0x0

    .line 7947
    .local v16, "regId":Ljava/lang/String;
    iget-object v9, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v9

    .line 7948
    :try_start_80
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 7949
    const-string v0, "AS.AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7950
    monitor-exit v9
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_108

    return-object v15

    .line 7953
    :cond_95
    :try_start_95
    new-instance v17, Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_97} :catch_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_95 .. :try_end_97} :catch_cd
    .catchall {:try_start_95 .. :try_end_97} :catchall_108

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p7

    :try_start_ab
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V

    move-object/from16 v1, v17

    .line 7955
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7956
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 7957
    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_c6} :catch_cb
    .catch Ljava/lang/IllegalStateException; {:try_start_ab .. :try_end_c6} :catch_c9
    .catchall {:try_start_ab .. :try_end_c6} :catchall_10d

    .line 7966
    nop

    .line 7967
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :try_start_c7
    monitor-exit v18

    .line 7968
    return-object v16

    .line 7963
    :catch_c9
    move-exception v0

    goto :goto_d0

    .line 7958
    :catch_cb
    move-exception v0

    goto :goto_eb

    .line 7963
    :catch_cd
    move-exception v0

    move-object/from16 v18, v9

    .line 7964
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_d0
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed for binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7965
    monitor-exit v18

    return-object v15

    .line 7958
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :catch_e8
    move-exception v0

    move-object/from16 v18, v9

    .line 7960
    .local v0, "e":Landroid/os/RemoteException;
    :goto_eb
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7962
    monitor-exit v18

    return-object v15

    .line 7967
    .end local v0  # "e":Landroid/os/RemoteException;
    :catchall_108
    move-exception v0

    move-object/from16 v18, v9

    :goto_10b
    monitor-exit v18
    :try_end_10c
    .catchall {:try_start_c7 .. :try_end_10c} :catchall_10d

    throw v0

    :catchall_10d
    move-exception v0

    goto :goto_10b
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 6
    .param p1, "asd"  # Landroid/media/IAudioServerStateDispatcher;

    .line 8715
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8716
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 8717
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8718
    const-string v1, "AS.AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8719
    monitor-exit v0

    return-void

    .line 8721
    :cond_1b
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_36

    .line 8723
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_20
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29
    .catchall {:try_start_20 .. :try_end_28} :catchall_36

    .line 8726
    goto :goto_2a

    .line 8724
    :catch_29
    move-exception v2

    .line 8727
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8728
    nop

    .end local v1  # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 8729
    return-void

    .line 8728
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 4
    .param p1, "pcdb"  # Landroid/media/IPlaybackConfigDispatcher;

    .line 8375
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8376
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8378
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 8379
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 4
    .param p1, "rcdb"  # Landroid/media/IRecordingConfigDispatcher;

    .line 8312
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8313
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8315
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 8316
    return-void
.end method

.method public releasePlayer(I)V
    .registers 4
    .param p1, "piid"  # I

    .line 8409
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 8410
    return-void
.end method

.method public releaseRecorder(I)V
    .registers 3
    .param p1, "riid"  # I

    .line 8350
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    .line 8351
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 2

    .line 3987
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3988
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 7
    .param p1, "policyConfig"  # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8167
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8168
    :try_start_3
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8169
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8170
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 8171
    monitor-exit v0

    return v2

    .line 8173
    :cond_e
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1a

    .line 8174
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    monitor-exit v0

    .line 8173
    return v2

    .line 8175
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 6
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"  # I

    .line 8202
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8203
    :try_start_3
    const-string v1, "Cannot remove device affinity in audio policy"

    .line 8204
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8205
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_e

    .line 8206
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8208
    :cond_e
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 8209
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 25
    .param p1, "aa"  # Landroid/media/AudioAttributes;
    .param p2, "durationHint"  # I
    .param p3, "cb"  # Landroid/os/IBinder;
    .param p4, "fd"  # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"  # Ljava/lang/String;
    .param p6, "callingPackageName"  # Ljava/lang/String;
    .param p7, "flags"  # I
    .param p8, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p9, "sdk"  # I

    .line 6968
    move-object v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_47

    .line 6969
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6970
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 6972
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "AS.AudioService"

    const-string v4, "Invalid permission to (un)lock audio focus"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6973
    return v3

    .line 6977
    :cond_2a
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 6978
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 6979
    const-string v0, "AS.AudioService"

    const-string v4, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6980
    monitor-exit v2

    return v3

    .line 6982
    :cond_42
    monitor-exit v2

    goto :goto_47

    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_44

    throw v0

    .line 6986
    :cond_47
    :goto_47
    if-eqz p6, :cond_da

    if-eqz v13, :cond_da

    if-nez v12, :cond_51

    move/from16 v14, p2

    goto/16 :goto_dc

    .line 6991
    :cond_51
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    if-eqz v0, :cond_73

    .line 6994
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->unMutePid:I

    .line 6995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FLYME_MUTE_STRATEGY] requestAudioFocus: unMutePid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/audio/AudioService;->unMutePid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6998
    :cond_73
    const-string v0, "com.tencent.mm"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 6999
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b6

    .line 7000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FLYME_MUTE_STRATEGY] requestAudioFocus: muteReason=ForTencent, unmutePid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "muteReason=ForTencent;unmutePid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7003
    :cond_b6
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->isTencentInFocus:Z

    .line 7006
    :cond_b9
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 7008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v14, p2

    invoke-direct {p0, v12, v14, v0}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v11

    .line 7006
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    .line 6986
    :cond_da
    move/from16 v14, p2

    .line 6987
    :goto_dc
    const-string v0, "AS.AudioService"

    const-string v2, "Invalid null parameter to request audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    return v3
.end method

.method protected scheduleLoadSoundEffects()V
    .registers 8

    .line 3918
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3919
    return-void
.end method

.method protected sendVolumeUpdate(IIIII)V
    .registers 7
    .param p1, "streamType"  # I
    .param p2, "oldIndex"  # I
    .param p3, "index"  # I
    .param p4, "flags"  # I
    .param p5, "device"  # I

    .line 2861
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 2863
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 2864
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p4

    .line 2865
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p5

    if-eqz v0, :cond_12

    .line 2866
    and-int/lit8 p4, p4, -0x2

    .line 2869
    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2870
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 14
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "profile"  # I
    .param p4, "suppressNoisyIntent"  # Z
    .param p5, "a2dpVolume"  # I

    .line 5225
    if-eqz p1, :cond_2a

    .line 5228
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_8

    goto :goto_1f

    .line 5230
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5233
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 5235
    return-void

    .line 5226
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 4
    .param p1, "on"  # Z

    .line 4456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4457
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4459
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOn_Async(ZLjava/lang/String;)V

    .line 4460
    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .registers 13
    .param p1, "device"  # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"  # I
    .param p3, "suppressNoisyIntent"  # Z
    .param p4, "musicDevice"  # I

    .line 5202
    if-eqz p1, :cond_3d

    .line 5205
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_8

    goto :goto_1f

    .line 5207
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5210
    :cond_1f
    :goto_1f
    if-ne p2, v0, :cond_2a

    .line 5211
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    goto :goto_31

    .line 5213
    :cond_2a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 5215
    :goto_31
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 5217
    return-void

    .line 5203
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .registers 8
    .param p1, "on"  # Z

    .line 4416
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4417
    return-void

    .line 4420
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "AS.AudioService"

    if-lt v0, v1, :cond_3f

    .line 4421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setBluetoothScoOn(), on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". The calling application Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4421
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOnByApp(Z)V

    .line 4425
    return-void

    .line 4429
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4430
    .local v0, "callingPid":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->MzModeReset_GetAppProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 4431
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_75

    if-eqz v1, :cond_75

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "com.tencent.mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 4432
    :cond_5b
    const-string v3, "[FLYME_MUTE_STRATEGY] setBluetoothScoOn: muteReason=BluetoothScoChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteReason=BluetoothScoChanged;unmutePid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4438
    :cond_75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setBluetoothScoOn("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4439
    const-string v4, ") from u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4441
    .local v3, "eventSource":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 4443
    return-void
.end method

.method setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 13
    .param p1, "streamState"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"  # I

    .line 5962
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 5964
    .local v0, "isAvrcpAbsVolSupported":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5966
    :try_start_9
    invoke-virtual {p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5969
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 5970
    .local v2, "numStreamTypes":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "streamType":I
    :goto_12
    if-ltz v3, :cond_41

    .line 5971
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-eq v3, v4, :cond_3e

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v3

    .line 5972
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    if-ne v4, v5, :cond_3e

    .line 5975
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    .line 5976
    .local v4, "streamDevice":I
    if-eq p2, v4, :cond_37

    if-eqz v0, :cond_37

    and-int/lit16 v5, p2, 0x380

    if-eqz v5, :cond_37

    .line 5978
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v3

    invoke-virtual {v5, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5981
    :cond_37
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5970
    .end local v4  # "streamDevice":I
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 5985
    .end local v2  # "numStreamTypes":I
    .end local v3  # "streamType":I
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_4f

    .line 5987
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x1f4

    move v6, p2

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5995
    return-void

    .line 5985
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 10
    .param p1, "duckingBehavior"  # I
    .param p2, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8215
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8216
    :try_start_3
    const-string v1, "Cannot change audio policy focus properties"

    .line 8217
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8218
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 8219
    monitor-exit v0

    return v2

    .line 8221
    :cond_e
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 8222
    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8223
    monitor-exit v0

    return v2

    .line 8225
    :cond_23
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4a

    .line 8227
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8228
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_49

    .line 8229
    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8230
    monitor-exit v0

    return v2

    .line 8232
    .end local v5  # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_49
    goto :goto_30

    .line 8234
    :cond_4a
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 8235
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 8237
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8238
    return v4

    .line 8237
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "afi"  # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"  # I
    .param p3, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8664
    if-eqz p1, :cond_2d

    .line 8667
    if-eqz p3, :cond_25

    .line 8670
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8671
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 8674
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 8675
    monitor-exit v0

    .line 8676
    return-void

    .line 8672
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/audio/AudioService;
    .end local p1  # "afi":Landroid/media/AudioFocusInfo;
    .end local p2  # "requestResult":I
    .end local p3  # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    throw v1

    .line 8675
    .restart local p0  # "this":Lcom/android/server/audio/AudioService;
    .restart local p1  # "afi":Landroid/media/AudioFocusInfo;
    .restart local p2  # "requestResult":I
    .restart local p3  # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    .line 8668
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8665
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 8
    .param p1, "on"  # Z

    .line 7363
    const/4 v0, 0x0

    .line 7364
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7365
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_35

    .line 7366
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-nez v2, :cond_19

    .line 7367
    const-string v2, "AS.AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7369
    monitor-exit v1

    return v0

    .line 7371
    :cond_19
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_2f

    .line 7372
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 7373
    if-eqz p1, :cond_24

    const/16 v2, 0xc

    goto :goto_25

    .line 7374
    :cond_24
    const/4 v2, 0x0

    :goto_25
    nop

    .line 7375
    .local v2, "config":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x5

    const-string/jumbo v5, "setHdmiSystemAudioSupported"

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 7378
    .end local v2  # "config":I
    :cond_2f
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v2

    move v0, v2

    .line 7380
    :cond_35
    monitor-exit v1

    .line 7381
    return v0

    .line 7380
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .registers 11
    .param p1, "mute"  # Z
    .param p2, "flags"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 3112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 3114
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .registers 7
    .param p1, "on"  # Z
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 3174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3175
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10

    .line 3176
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3179
    :cond_10
    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    .line 3181
    return-void

    .line 3183
    :cond_1d
    const-string/jumbo v1, "setMicrophoneMute()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 3184
    return-void

    .line 3186
    :cond_27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p3, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3187
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_38

    .line 3190
    return-void

    .line 3192
    :cond_38
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    .line 3193
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 10
    .param p1, "mode"  # I
    .param p2, "cb"  # Landroid/os/IBinder;
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 3585
    const/16 v0, 0x423

    if-ne p1, v0, :cond_21

    .line 3587
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3588
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v1

    const-string v2, "MzSRImage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 3592
    .end local v0  # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_20

    .line 3590
    :catch_1c
    move-exception v0

    .line 3591
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3593
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_20
    return-void

    .line 3597
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode(mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Process ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3598
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3597
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 3601
    return-void

    .line 3604
    :cond_56
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3605
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8a

    .line 3608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3608
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    return-void

    .line 3613
    :cond_8a
    const/4 v0, -0x1

    if-lt p1, v0, :cond_f2

    const/4 v1, 0x4

    if-lt p1, v1, :cond_91

    goto :goto_f2

    .line 3617
    :cond_91
    const/4 v1, 0x0

    .line 3618
    .local v1, "oldModeOwnerPid":I
    const/4 v2, 0x0

    .line 3619
    .local v2, "newModeOwnerPid":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3620
    :try_start_98
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 3621
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    move v1, v4

    .line 3623
    :cond_ae
    if-ne p1, v0, :cond_b3

    .line 3624
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move p1, v0

    .line 3627
    :cond_b3
    const-string v0, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode mMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 3630
    monitor-exit v3
    :try_end_de
    .catchall {:try_start_98 .. :try_end_de} :catchall_ef

    .line 3633
    if-eq v2, v1, :cond_ee

    if-eqz v2, :cond_ee

    .line 3634
    const-string v0, "AS.AudioService"

    const-string v3, "In setMode(), calling disconnectBluetoothSco()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectBluetoothSco(I)V

    .line 3637
    :cond_ee
    return-void

    .line 3630
    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0

    .line 3614
    .end local v1  # "oldModeOwnerPid":I
    .end local v2  # "newModeOwnerPid":I
    :cond_f2
    :goto_f2
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .registers 5
    .param p1, "ringerMode"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 3238
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3239
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 3240
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3243
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3244
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 3247
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 3248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3249
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"  # Landroid/media/IRingtonePlayer;

    .line 7125
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7126
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 7127
    return-void
.end method

.method public setSpeakerphoneDeathHandlerInt(ZLandroid/os/IBinder;Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "on"  # Z
    .param p2, "cb"  # Landroid/os/IBinder;
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "IsInCall"  # Z

    .line 4215
    if-nez p3, :cond_4

    if-eqz p2, :cond_e

    :cond_4
    const-string v0, "com.android.server.telecom"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    .line 4216
    :cond_e
    return-void

    .line 4218
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] setSpeakerphoneDeathHandlerInt: on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4221
    const/4 v1, 0x0

    .line 4222
    .local v1, "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    :try_start_39
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4223
    .local v2, "iter":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_69

    .line 4224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;

    .line 4225
    .local v3, "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getPid()I

    move-result v5

    if-ne v5, p4, :cond_68

    .line 4226
    move-object v1, v3

    .line 4228
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_ef

    .line 4230
    :try_start_56
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_5e
    .catchall {:try_start_56 .. :try_end_5d} :catchall_ef

    .line 4233
    goto :goto_69

    .line 4231
    :catch_5e
    move-exception v5

    .line 4232
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5f
    const-string v6, "AS.AudioService"

    const-string v7, "[SPEAKER_PHONE][1] setSpeakerphoneDeathHandlerInt() death link not exsit !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    nop

    .end local v5  # "e":Ljava/lang/Exception;
    goto :goto_69

    .line 4236
    .end local v3  # "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    :cond_68
    goto :goto_3f

    .line 4238
    :cond_69
    :goto_69
    if-nez p5, :cond_92

    .line 4240
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 4241
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 4242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;

    .line 4243
    .restart local v3  # "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_81
    .catchall {:try_start_5f .. :try_end_81} :catchall_ef

    .line 4245
    :try_start_81
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_89
    .catchall {:try_start_81 .. :try_end_88} :catchall_ef

    .line 4248
    goto :goto_91

    .line 4246
    :catch_89
    move-exception v5

    .line 4247
    .restart local v5  # "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v6, "AS.AudioService"

    const-string v7, "[SPEAKER_PHONE][2] setSpeakerphoneDeathHandlerInt() death link not exsit !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    .end local v3  # "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_91
    goto :goto_72

    .line 4253
    :cond_92
    if-nez v1, :cond_9d

    .line 4255
    new-instance v3, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;

    invoke-direct {v3, p0, p4}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;-><init>(Lcom/android/server/audio/AudioService;I)V

    move-object v1, v3

    .line 4256
    invoke-virtual {v1, p3}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->setPackageName(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_8a .. :try_end_9d} :catchall_ef

    .line 4261
    :cond_9d
    :try_start_9d
    invoke-interface {p2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catchall {:try_start_9d .. :try_end_a0} :catchall_ef

    .line 4265
    goto :goto_bd

    .line 4262
    :catch_a1
    move-exception v3

    .line 4264
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_a2
    const-string v5, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPEAKER_PHONE] setSpeakerphoneDeathHandlerInt() could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_bd
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->setBinder(Landroid/os/IBinder;)V

    .line 4267
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->setSpeakerphoneState(Z)V

    .line 4269
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4271
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4272
    .local v3, "iter2":Ljava/util/Iterator;
    const-string v4, "AS.AudioService"

    const-string v5, "[SPEAKER_PHONE] ============dump==============="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :goto_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 4274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;

    .line 4275
    .local v4, "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->dump()V

    .line 4276
    .end local v4  # "h":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    goto :goto_d5

    .line 4277
    :cond_e5
    const-string v4, "AS.AudioService"

    const-string v5, "[SPEAKER_PHONE] ============end ============"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    nop

    .end local v1  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    .end local v2  # "iter":Ljava/util/Iterator;
    .end local v3  # "iter2":Ljava/util/Iterator;
    monitor-exit v0

    .line 4279
    return-void

    .line 4278
    :catchall_ef
    move-exception v1

    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_a2 .. :try_end_f1} :catchall_ef

    throw v1
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 9
    .param p1, "on"  # Z

    .line 4039
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4040
    return-void

    .line 4043
    :cond_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5e

    .line 4046
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4047
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4048
    .local v2, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_58

    .line 4049
    const-string v1, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode is call, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4049
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    monitor-exit v0

    return-void

    .line 4053
    .end local v2  # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_58
    goto :goto_1d

    .line 4054
    :cond_59
    monitor-exit v0

    goto :goto_5e

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_5b

    throw v1

    .line 4058
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4059
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4061
    .local v0, "eventSource":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(ZLjava/lang/String;)Z

    move-result v1

    .line 4064
    .local v1, "stateChanged":Z
    if-eqz v1, :cond_cc

    .line 4065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4067
    .local v2, "ident":J
    :try_start_af
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x40000000  # 2.0f

    .line 4069
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 4067
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_c7

    .line 4071
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4072
    goto :goto_cc

    .line 4071
    :catchall_c7
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4074
    .end local v2  # "ident":J
    :cond_cc
    :goto_cc
    return-void
.end method

.method public setSpeakerphoneOnExt(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 23
    .param p1, "_on"  # Z
    .param p2, "_cb"  # Landroid/os/IBinder;
    .param p3, "_callingPackage"  # Ljava/lang/String;

    .line 4302
    move-object/from16 v7, p0

    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4303
    return-void

    .line 4305
    :cond_c
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_60

    .line 4308
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4309
    :try_start_1a
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4310
    .local v2, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v3

    if-ne v3, v8, :cond_5a

    .line 4311
    const-string v0, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode is call, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4311
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    monitor-exit v1

    return-void

    .line 4315
    .end local v2  # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_5a
    goto :goto_20

    .line 4316
    :cond_5b
    monitor-exit v1

    goto :goto_60

    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_5d

    throw v0

    .line 4319
    :cond_60
    :goto_60
    move/from16 v9, p1

    .line 4320
    .local v9, "on":Z
    move-object/from16 v10, p2

    .line 4321
    .local v10, "cb":Landroid/os/IBinder;
    move-object/from16 v11, p3

    .line 4324
    .local v11, "callingPackage":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4325
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4328
    .local v12, "eventSource":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4329
    .local v0, "IsInCall":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 4330
    .local v13, "callingPid":I
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4331
    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/telecom/TelecomManager;

    .line 4332
    .local v14, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 4333
    .local v15, "ident":J
    invoke-virtual {v14}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v6

    .line 4334
    .end local v0  # "IsInCall":Z
    .local v6, "IsInCall":Z
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] IsInCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    const/4 v0, 0x0

    if-nez v10, :cond_14d

    .line 4343
    if-nez v6, :cond_143

    .line 4345
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4346
    const/4 v1, 0x0

    .line 4347
    .local v1, "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    :try_start_d0
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_129

    .line 4348
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetSpeakerphoneOnDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;

    .line 4349
    .end local v1  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getSpeakerphoneState()Z

    move-result v1

    move v9, v1

    .line 4350
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 4351
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SPEAKER_PHONE] restore: on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_10c
    .catchall {:try_start_d0 .. :try_end_10c} :catchall_13a

    .line 4353
    .end local v10  # "cb":Landroid/os/IBinder;
    .local v3, "cb":Landroid/os/IBinder;
    :try_start_10c
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;->getPid()I

    move-result v5
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_122

    .line 4354
    .end local v13  # "callingPid":I
    .local v5, "callingPid":I
    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v17, v4

    move-object v4, v11

    move/from16 v18, v6

    .end local v6  # "IsInCall":Z
    .local v18, "IsInCall":Z
    :try_start_118
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setSpeakerphoneDeathHandlerInt(ZLandroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11e

    move-object v10, v3

    move v13, v5

    goto :goto_135

    .line 4359
    .end local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    :catchall_11e
    move-exception v0

    move-object v10, v3

    move v13, v5

    goto :goto_13f

    .end local v5  # "callingPid":I
    .end local v18  # "IsInCall":Z
    .restart local v6  # "IsInCall":Z
    .restart local v13  # "callingPid":I
    :catchall_122
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object v10, v3

    .end local v6  # "IsInCall":Z
    .restart local v18  # "IsInCall":Z
    goto :goto_13f

    .line 4356
    .end local v3  # "cb":Landroid/os/IBinder;
    .end local v18  # "IsInCall":Z
    .restart local v1  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    .restart local v6  # "IsInCall":Z
    .restart local v10  # "cb":Landroid/os/IBinder;
    :cond_129
    move-object/from16 v17, v4

    move/from16 v18, v6

    .end local v6  # "IsInCall":Z
    .restart local v18  # "IsInCall":Z
    :try_start_12d
    const-string v0, "AS.AudioService"

    const-string v2, "[SPEAKER_PHONE] mSetSpeakerphoneOnDeathHandlers.isEmpty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 4358
    .end local v1  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    .restart local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    :goto_135
    iput v8, v7, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    .line 4359
    .end local v0  # "hdlr":Lcom/android/server/audio/AudioService$SetSpeakerphoneOnDeathHandler;
    monitor-exit v17

    goto/16 :goto_1dd

    .end local v18  # "IsInCall":Z
    .restart local v6  # "IsInCall":Z
    :catchall_13a
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    .end local v6  # "IsInCall":Z
    .restart local v18  # "IsInCall":Z
    :goto_13f
    monitor-exit v17
    :try_end_140
    .catchall {:try_start_12d .. :try_end_140} :catchall_141

    throw v0

    :catchall_141
    move-exception v0

    goto :goto_13f

    .line 4361
    .end local v18  # "IsInCall":Z
    .restart local v6  # "IsInCall":Z
    :cond_143
    const-string v1, "AS.AudioService"

    const-string v2, "[SPEAKER_PHONE] restore speaker in call no need handle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    iput v0, v7, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    .line 4363
    return-void

    .line 4365
    :cond_14d
    move/from16 v18, v6

    .end local v6  # "IsInCall":Z
    .restart local v18  # "IsInCall":Z
    if-nez v18, :cond_185

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 4368
    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, v13

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setSpeakerphoneDeathHandlerInt(ZLandroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 4369
    iput v0, v7, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    .line 4370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] incal(false), on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd

    .line 4371
    :cond_185
    if-eqz v18, :cond_1b9

    const-string v0, "com.android.server.telecom"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 4373
    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, v13

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setSpeakerphoneDeathHandlerInt(ZLandroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 4374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] incall(true), on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd

    .line 4375
    :cond_1b9
    if-nez v18, :cond_1dd

    const-string v0, "com.android.server.telecom"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    if-nez v9, :cond_1dd

    .line 4378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SPEAKER_PHONE] mSpeakerphoneRestoreState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/audio/AudioService;->mSpeakerphoneRestoreState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    :cond_1dd
    :goto_1dd
    if-eqz v18, :cond_214

    if-eqz v11, :cond_214

    .line 4389
    const/4 v0, 0x0

    .line 4390
    .local v0, "isAllow":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e3
    sget-object v2, Lcom/android/server/audio/AudioService;->sPackageNameArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1f5

    .line 4391
    aget-object v2, v2, v1

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 4392
    const/4 v0, 0x1

    .line 4393
    goto :goto_1f5

    .line 4390
    :cond_1f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e3

    .line 4396
    .end local v1  # "i":I
    :cond_1f5
    :goto_1f5
    if-nez v0, :cond_214

    .line 4397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeakerphoneOnExt: speakerphone not allow to be changed by ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") while in call !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    return-void

    .line 4403
    .end local v0  # "isAllow":Z
    :cond_214
    invoke-virtual {v7, v9, v12}, Lcom/android/server/audio/AudioService;->setSpeakerphoneOnInt(ZLjava/lang/String;)V

    .line 4406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeakerphoneOnExt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    return-void
.end method

.method public setSpeakerphoneOnInt(ZLjava/lang/String;)V
    .registers 9
    .param p1, "on"  # Z
    .param p2, "eventSource"  # Ljava/lang/String;

    .line 4283
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(ZLjava/lang/String;)Z

    move-result v0

    .line 4284
    .local v0, "stateChanged":Z
    if-eqz v0, :cond_29

    .line 4285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4287
    .local v1, "ident":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000  # 2.0f

    .line 4289
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 4287
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 4291
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4292
    goto :goto_29

    .line 4291
    :catchall_24
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4294
    .end local v1  # "ident":J
    :cond_29
    :goto_29
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 13
    .param p1, "streamType"  # I
    .param p2, "index"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;

    .line 2397
    const-string v0, "AS.AudioService"

    const/16 v1, 0xa

    if-ne p1, v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void

    .line 2402
    :cond_21
    if-nez p1, :cond_44

    if-nez p2, :cond_44

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2403
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_44

    .line 2406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    return-void

    .line 2410
    :cond_44
    sget-object v6, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2412
    nop

    .line 2413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2412
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2414
    return-void
.end method

.method public setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .registers 9
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"  # I
    .param p3, "deviceTypes"  # [I
    .param p4, "deviceAddresses"  # [Ljava/lang/String;

    .line 8184
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8185
    :try_start_3
    const-string v1, "Cannot change device affinity in audio policy"

    .line 8186
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8187
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 8188
    monitor-exit v0

    return v2

    .line 8190
    :cond_e
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 8191
    monitor-exit v0

    return v2

    .line 8193
    :cond_16
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 8194
    .end local v1  # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"  # I
    .param p2, "vibrateSetting"  # I

    .line 3508
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    return-void

    .line 3510
    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 3514
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 3516
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"  # Landroid/media/IVolumeController;

    .line 7642
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7645
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7646
    return-void

    .line 7650
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 7651
    if-eqz p1, :cond_2c

    .line 7654
    const-string v0, "AS.AudioService"

    const-string v1, "[GJ_DEBUG] setVolumeController: controller != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    :try_start_1d
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b

    .line 7668
    goto :goto_2c

    .line 7666
    :catch_2b
    move-exception v0

    .line 7670
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 7672
    return-void
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    .registers 25
    .param p1, "attr"  # Landroid/media/AudioAttributes;
    .param p2, "index"  # I
    .param p3, "flags"  # I
    .param p4, "callingPackage"  # Ljava/lang/String;

    .line 2338
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2339
    const-string v0, "attr must not be null"

    invoke-static {v8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-static/range {p1 .. p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v9

    .line 2342
    .local v9, "stream":I
    invoke-virtual {v7, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v10

    .line 2344
    .local v10, "device":I
    invoke-static {v8, v10}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    move-result v11

    .line 2346
    .local v11, "oldIndex":I
    move/from16 v12, p2

    invoke-static {v8, v12, v10}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    .line 2348
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v13

    .line 2349
    .local v13, "volumeGroup":I
    invoke-direct {v7, v13}, Lcom/android/server/audio/AudioService;->getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v14

    .line 2350
    .local v14, "avg":Landroid/media/audiopolicy/AudioVolumeGroup;
    if-nez v14, :cond_28

    .line 2351
    return-void

    .line 2353
    :cond_28
    invoke-virtual {v14}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v15

    array-length v6, v15

    const/4 v0, 0x0

    move v5, v0

    :goto_2f
    if-ge v5, v6, :cond_52

    aget v16, v15, v5

    .line 2354
    .local v16, "groupedStream":I
    nop

    .line 2355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 2354
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v18, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2353
    .end local v16  # "groupedStream":I
    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    goto :goto_2f

    .line 2357
    :cond_52
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 3
    .param p1, "policy"  # Landroid/media/VolumePolicy;

    .line 7689
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7690
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 7691
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 7694
    :cond_12
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "type"  # I
    .param p2, "state"  # I
    .param p3, "address"  # Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "caller"  # Ljava/lang/String;

    .line 5176
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1d

    if-nez p2, :cond_6

    goto :goto_1d

    .line 5178
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5180
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .param p1, "vibrateType"  # I

    .line 3480
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3482
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    .line 3495
    return v1

    .line 3488
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 3485
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_22

    move v1, v2

    :cond_22
    return v1

    .line 3492
    :cond_23
    return v1
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 10
    .param p1, "reason"  # Ljava/lang/String;

    .line 3252
    const/4 v0, 0x0

    .line 3253
    .local v0, "effect":Landroid/os/VibrationEffect;
    const/4 v1, 0x0

    .line 3254
    .local v1, "ringerMode":I
    const/4 v2, 0x0

    .line 3256
    .local v2, "toastText":I
    const/4 v3, 0x0

    .line 3257
    .local v3, "silenceRingerSetting":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3258
    const v5, 0x11100f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 3259
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, -0x2

    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 3264
    :cond_1e
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_25

    goto :goto_37

    .line 3266
    :cond_25
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3267
    const/4 v1, 0x0

    .line 3268
    const v2, 0x1040737

    .line 3269
    goto :goto_37

    .line 3271
    :cond_2e
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 3272
    const/4 v1, 0x1

    .line 3273
    const v2, 0x1040738

    .line 3276
    :goto_37
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z

    .line 3277
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 3278
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3279
    return-void
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "cb"  # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"  # I

    .line 4469
    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 4471
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_16

    goto :goto_45

    .line 4476
    :cond_16
    const/16 v0, 0x12

    if-ge p2, v0, :cond_1c

    .line 4477
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    .line 4478
    .local v0, "scoAudioMode":I
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startBluetoothSco()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4479
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4480
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4481
    .local v2, "eventSource":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 4482
    return-void

    .line 4472
    .end local v0  # "scoAudioMode":I
    .end local v2  # "eventSource":Ljava/lang/String;
    :cond_45
    :goto_45
    const-string/jumbo v2, "startBluetoothSco(), BT is not turned ON or adapter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6
    .param p1, "cb"  # Landroid/os/IBinder;
    .param p2, "scoAudioMode"  # I
    .param p3, "eventSource"  # Ljava/lang/String;

    .line 4494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_24

    goto :goto_33

    .line 4499
    :cond_24
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4500
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 4501
    monitor-exit v0

    .line 4502
    return-void

    .line 4501
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v1

    .line 4497
    :cond_33
    :goto_33
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 4486
    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBluetoothScoVirtualCall()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4488
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4489
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4490
    .local v0, "eventSource":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 4491
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 3
    .param p1, "observer"  # Landroid/media/IAudioRoutesObserver;

    .line 7136
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    return-object v0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 4506
    const-string v0, "AS.AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 4508
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_16

    goto :goto_58

    .line 4512
    :cond_16
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_24

    goto :goto_57

    .line 4516
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopBluetoothSco()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4517
    const-string v2, ") from u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4518
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4519
    .local v1, "eventSource":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4520
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4521
    monitor-exit v2

    .line 4522
    return-void

    .line 4521
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3

    .line 4514
    .end local v1  # "eventSource":Ljava/lang/String;
    :cond_57
    :goto_57
    return-void

    .line 4509
    :cond_58
    :goto_58
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "stopBluetoothSco(), BT is not turned ON or adapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 951
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 971
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 3
    .param p1, "pic"  # Landroid/media/PlayerBase$PlayerIdCard;

    .line 8393
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "recorder"  # Landroid/os/IBinder;

    .line 8336
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->trackRecorder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .registers 8

    .line 3927
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3928
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"  # Ljava/lang/String;

    .line 7040
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 7041
    return-void
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8098
    if-nez p1, :cond_3

    .line 8099
    return-void

    .line 8101
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8102
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2
    .param p1, "pcb"  # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8090
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8091
    return-void
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 7
    .param p1, "asd"  # Landroid/media/IAudioServerStateDispatcher;

    .line 8732
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8733
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 8734
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 8735
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    if-nez v1, :cond_3c

    .line 8736
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8737
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8736
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8738
    monitor-exit v0

    return-void

    .line 8740
    :cond_3c
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8742
    nop

    .end local v1  # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 8743
    return-void

    .line 8742
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 3
    .param p1, "pcdb"  # Landroid/media/IPlaybackConfigDispatcher;

    .line 8382
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 8383
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 3
    .param p1, "rcdb"  # Landroid/media/IRecordingConfigDispatcher;

    .line 8319
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 8320
    return-void
.end method

.method updateAbsVolumeMultiModeDevices(II)V
    .registers 9
    .param p1, "oldMode"  # I
    .param p2, "newMode"  # I

    .line 2498
    if-ne p1, p2, :cond_3

    .line 2499
    return-void

    .line 2501
    :cond_3
    if-eqz p2, :cond_10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    .line 2513
    return-void

    .line 2508
    :cond_f
    return-void

    .line 2505
    :cond_10
    nop

    .line 2516
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    .line 2518
    .local v0, "streamType":I
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 2519
    .local v1, "device":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    and-int v3, v1, v2

    if-nez v3, :cond_20

    .line 2520
    return-void

    .line 2524
    :cond_20
    and-int/2addr v2, v1

    const/high16 v3, 0x8000000

    if-ne v2, v3, :cond_3b

    .line 2525
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v2

    .line 2526
    .local v2, "index":I
    sget-object v3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v5, 0x7

    invoke-direct {v4, v5, p2, v0, v2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2528
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2530
    .end local v2  # "index":I
    :cond_3b
    return-void
.end method
