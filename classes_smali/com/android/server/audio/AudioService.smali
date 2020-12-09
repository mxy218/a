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

.field private static final AUDIO_HAL_SERVICE_PREFIX:Ljava/lang/String; = "android.hardware.audio"

.field public static final BECOMING_NOISY_DELAY_MS:I = 0x3e8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field protected static final DEBUG_AP:Z = false

.field protected static final DEBUG_DEVICES:Z = false

.field protected static final DEBUG_MODE:Z = false

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

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x16

.field private static final MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS:I = 0x1b

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x11

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0xe

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAYBACK_CONFIG_CHANGE:I = 0x1d

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_STREAM_VOLUME:I = 0x1a

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SYSTEM_READY:I = 0x10

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0xf

.field private static final MSG_UNMUTE_STREAM:I = 0x12

.field private static final MSG_UPDATE_RINGER_MODE:I = 0x19

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

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

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field protected static mStreamVolumeAlias:[I

.field static final sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

.field static final sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sIndependentA11yVolume:Z

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I

.field static final sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

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

.field private mLinkNotificationWithVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

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

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

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

.field private final mVoiceCapable:Z

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 321
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_68

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 336
    new-array v1, v0, [I

    fill-array-data v1, :array_82

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 404
    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 477
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 478
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 479
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 6389
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 6444
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "wired/A2DP/hearing aid device connection"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 6447
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x14

    const-string v2, "force use (logged before setForceUse() is executed)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 6451
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x28

    const-string/jumbo v2, "volume changes (logged when command received by AudioService)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 6457
    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_68
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
    .end array-data

    :array_82
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

    :array_9c
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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 242
    new-instance v2, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 303
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 305
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 308
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 318
    const/4 v8, 0x2

    const/16 v2, 0xa

    filled-new-array {v2, v8}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 359
    const/16 v3, 0xb

    new-array v4, v3, [I

    fill-array-data v4, :array_400

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 372
    new-array v4, v3, [I

    fill-array-data v4, :array_41a

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 385
    new-array v4, v3, [I

    fill-array-data v4, :array_434

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 427
    new-instance v4, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v4, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 451
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 455
    iput v7, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 457
    iput v7, v0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 483
    new-instance v5, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v5, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v5, v0, v6}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 498
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 511
    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 515
    iput v7, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 518
    iput v4, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 522
    iput-boolean v7, v0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 523
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 527
    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 532
    const v5, 0x2c1400

    iput v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 538
    iput v7, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 542
    const/high16 v5, 0x8000000

    iput v5, v0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    .line 546
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 548
    iput v7, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 560
    const/4 v10, 0x3

    new-array v5, v10, [F

    fill-array-data v5, :array_44e

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    .line 571
    sget-object v5, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 576
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 611
    new-instance v5, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 2246
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2248
    new-instance v5, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    .line 2743
    iput v7, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2744
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 6142
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 6144
    iput v7, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 6159
    const v5, 0x400000c

    iput v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 6294
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    .line 6297
    iput-boolean v7, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6314
    new-instance v5, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v5, v0, v6}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 6438
    new-instance v5, Lcom/android/server/audio/AudioEventLogger;

    const/16 v6, 0x14

    const-string/jumbo v11, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v5, v6, v11}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 6454
    new-instance v5, Lcom/android/server/audio/AudioEventLogger;

    const-string v6, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v5, v2, v6}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7181
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 7210
    new-instance v5, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 7671
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 7759
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 7761
    iput v7, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 643
    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 645
    const-string v5, "appops"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 647
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 649
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 651
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 652
    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 654
    const-string/jumbo v5, "power"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 655
    const-string v6, "handleAudioEvent"

    invoke-virtual {v5, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 657
    const-string/jumbo v5, "vibrator"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 658
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_162

    move v5, v7

    goto :goto_166

    :cond_162
    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    :goto_166
    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 664
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_195

    .line 665
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    .line 667
    sub-int/2addr v5, v9

    :goto_177
    if-ltz v5, :cond_195

    .line 668
    nop

    .line 669
    invoke-static {v5}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v6

    .line 671
    invoke-static {v6}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v11

    .line 672
    if-eq v11, v4, :cond_188

    .line 673
    sget-object v12, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v11, v12, v5

    .line 675
    :cond_188
    invoke-static {v6}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 676
    if-eq v6, v4, :cond_192

    .line 677
    sget-object v11, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aput v6, v11, v5

    .line 667
    :cond_192
    add-int/lit8 v5, v5, -0x1

    goto :goto_177

    .line 682
    :cond_195
    const-string/jumbo v5, "ro.config.vc_call_vol_steps"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 683
    if-eq v5, v4, :cond_1a2

    .line 684
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v6, v7

    .line 687
    :cond_1a2
    const-string/jumbo v5, "ro.config.vc_call_vol_default"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 688
    const/4 v6, 0x4

    if-eq v5, v4, :cond_1bd

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v7

    if-gt v5, v11, :cond_1bd

    sget-object v11, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v11, v11, v7

    if-lt v5, v11, :cond_1bd

    .line 691
    sget-object v11, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v11, v7

    goto :goto_1c7

    .line 693
    :cond_1bd
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v7

    mul-int/2addr v11, v10

    div-int/2addr v11, v6

    aput v11, v5, v7

    .line 697
    :goto_1c7
    const-string/jumbo v5, "ro.config.media_vol_steps"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 698
    if-eq v5, v4, :cond_1d4

    .line 699
    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v11, v10

    .line 702
    :cond_1d4
    const-string/jumbo v5, "ro.config.media_vol_default"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 703
    if-eq v5, v4, :cond_1ee

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v10

    if-gt v5, v11, :cond_1ee

    sget-object v11, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v11, v11, v10

    if-lt v5, v11, :cond_1ee

    .line 706
    sget-object v11, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v11, v10

    goto :goto_207

    .line 708
    :cond_1ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v5

    if-eqz v5, :cond_1fe

    .line 709
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v10

    div-int/2addr v11, v6

    aput v11, v5, v10

    goto :goto_207

    .line 712
    :cond_1fe
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v10

    div-int/2addr v11, v10

    aput v11, v5, v10

    .line 717
    :goto_207
    const-string/jumbo v5, "ro.config.alarm_vol_steps"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 718
    if-eq v5, v4, :cond_214

    .line 719
    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v11, v6

    .line 722
    :cond_214
    const-string/jumbo v5, "ro.config.alarm_vol_default"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 723
    if-eq v5, v4, :cond_228

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v6

    if-gt v5, v11, :cond_228

    .line 725
    sget-object v11, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v11, v6

    goto :goto_234

    .line 728
    :cond_228
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v11, v6

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x7

    aput v11, v5, v6

    .line 732
    :goto_234
    const-string/jumbo v5, "ro.config.system_vol_steps"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 733
    if-eq v5, v4, :cond_241

    .line 734
    sget-object v11, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v11, v9

    .line 737
    :cond_241
    const-string/jumbo v5, "ro.config.system_vol_default"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 738
    if-eq v5, v4, :cond_255

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v9

    if-gt v5, v4, :cond_255

    .line 740
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v4, v9

    goto :goto_25d

    .line 743
    :cond_255
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, v9

    aput v5, v4, v9

    .line 747
    :goto_25d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11100fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mVoiceCapable:Z

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 755
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v4}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v4

    .line 760
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 761
    iget-object v11, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v14, 0x4

    .line 765
    if-eqz v4, :cond_29b

    .line 766
    move v15, v3

    goto :goto_29c

    :cond_29b
    move v15, v7

    :goto_29c
    new-instance v3, Ljava/lang/String;

    const-string v4, "AudioService ctor"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 761
    move-object/from16 v16, v3

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 770
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_safe_volume_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 775
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 779
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_link_notification"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_2d5

    move v2, v9

    goto :goto_2d6

    :cond_2d5
    move v2, v7

    :goto_2d6
    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    .line 782
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 785
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 789
    const-string v2, "AS.AudioService"

    invoke-direct {v0, v7, v2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 792
    new-instance v2, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 799
    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    invoke-direct {v2, v1, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 802
    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 804
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 806
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 810
    iput v7, v0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {v0, v2, v7}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 814
    new-instance v4, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 816
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string/jumbo v2, "ro.audio.monitorRotation"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 829
    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_388

    .line 830
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 833
    :cond_388
    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 838
    const-class v1, Landroid/media/AudioManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 840
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 842
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 844
    new-array v1, v10, [F

    .line 845
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130003

    invoke-virtual {v2, v3, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v1, v7

    .line 848
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130004

    invoke-virtual {v2, v3, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v1, v9

    .line 851
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130005

    invoke-virtual {v2, v3, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v1, v8

    .line 854
    nop

    :goto_3e3
    array-length v2, v1

    if-ge v7, v2, :cond_3fe

    .line 855
    const/4 v2, 0x0

    aget v3, v1, v7

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3fb

    aget v2, v1, v7

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3fb

    .line 856
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    aget v3, v1, v7

    aput v3, v2, v7

    .line 854
    :cond_3fb
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e3

    .line 859
    :cond_3fe
    return-void

    nop

    :array_400
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

    :array_41a
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

    :array_434
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

    :array_44e
    .array-data 4
        0x3f000000  # 0.5f
        0x3f333333  # 0.7f
        0x3f59999a  # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10102(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;I)I
    .registers 2

    .line 183
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7

    .line 183
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 5

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;I)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)[F
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;III)I
    .registers 4

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;I)I
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;)[[I
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object p0
.end method

.method static synthetic access$4100()Ljava/util/List;
    .registers 1

    .line 183
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;)V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$4500()I
    .registers 1

    .line 183
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;Z)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7

    .line 183
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;I)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;II)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;)V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateRingerModeServiceInt()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;)V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onObserveDevicesForAllStreams()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onPlaybackConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)I
    .registers 1

    .line 183
    iget p0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p0
.end method

.method static synthetic access$6102(Lcom/android/server/audio/AudioService;I)I
    .registers 2

    .line 183
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$6202(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;IZ)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p0
.end method

.method static synthetic access$6802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService;Z)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    return p0
.end method

.method static synthetic access$7102(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;)V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;)I
    .registers 1

    .line 183
    iget p0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p0
.end method

.method static synthetic access$7502(Lcom/android/server/audio/AudioService;I)I
    .registers 2

    .line 183
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p0
.end method

.method static synthetic access$7802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Z)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;ZI)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;ZII)V
    .registers 4

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)Z
    .registers 1

    .line 183
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p0
.end method

.method static synthetic access$8702(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 183
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 183
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)[I
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p0
.end method

.method static synthetic access$9502(Lcom/android/server/audio/AudioService;[I)[I
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$9608(Lcom/android/server/audio/AudioService;)I
    .registers 3

    .line 183
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object p0
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 1686
    if-eqz p1, :cond_2a

    .line 1687
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1689
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 1687
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1692
    :cond_2a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1694
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    .line 1695
    iget p2, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    goto :goto_55

    .line 1697
    :cond_36
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p2

    .line 1699
    if-eq p2, v2, :cond_45

    const/4 v1, 0x5

    if-ne p2, v1, :cond_40

    goto :goto_45

    .line 1703
    :cond_40
    invoke-static {p2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    goto :goto_49

    .line 1701
    :cond_45
    :goto_45
    invoke-direct {p0, p2, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    .line 1705
    :goto_49
    if-nez v1, :cond_54

    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_51

    goto :goto_54

    .line 1708
    :cond_51
    iget p2, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    goto :goto_55

    .line 1706
    :cond_54
    :goto_54
    nop

    .line 1711
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_87

    .line 1713
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v0

    .line 1715
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1716
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p2

    .line 1719
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_69

    if-eq v1, v2, :cond_69

    .line 1721
    and-int/lit8 p3, p3, -0x5

    .line 1727
    :cond_69
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v1, p3, v0}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-nez v0, :cond_7c

    .line 1729
    nop

    .line 1730
    and-int/lit8 p1, p3, -0x5

    .line 1731
    and-int/lit8 p1, p1, -0x11

    move v4, p1

    goto :goto_7e

    .line 1735
    :cond_7c
    move v3, p1

    move v4, p3

    :goto_7e
    move-object v1, p0

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1736
    return-void

    .line 1711
    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p1
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4

    .line 2623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2624
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2625
    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2627
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2628
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .registers 4

    .line 4309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4310
    const-string p1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4311
    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4313
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4314
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 4

    .line 4318
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4320
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4321
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result p1

    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4322
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4324
    :cond_20
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .registers 3

    .line 6968
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private canChangeAccessibilityVolume()Z
    .registers 7

    .line 2209
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 2212
    monitor-exit v0

    return v2

    .line 2214
    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 2215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2216
    move v4, v3

    :goto_1a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    .line 2217
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_27

    .line 2218
    monitor-exit v0

    return v2

    .line 2216
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2222
    :cond_2a
    monitor-exit v0

    return v3

    .line 2223
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private canProjectAudio(Landroid/media/projection/IMediaProjection;)Z
    .registers 7

    .line 6973
    const/4 v0, 0x0

    const-string v1, "AS.AudioService"

    if-nez p1, :cond_b

    .line 6974
    const-string p1, "MediaProjection is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6975
    return v0

    .line 6978
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    .line 6979
    if-nez v2, :cond_17

    .line 6980
    const-string p1, "Can\'t get service IMediaProjectionManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6981
    return v0

    .line 6985
    :cond_17
    :try_start_17
    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 6986
    const-string p1, "App passed invalid MediaProjection token"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_4d

    .line 6987
    return v0

    .line 6993
    :cond_23
    nop

    .line 6996
    :try_start_24
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v2

    if-nez v2, :cond_30

    .line 6997
    const-string v2, "App passed MediaProjection that can not project audio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_33

    .line 6998
    return v0

    .line 7004
    :cond_30
    nop

    .line 7006
    const/4 p1, 0x1

    return p1

    .line 7000
    :catch_33
    move-exception v2

    .line 7001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call .canProjectAudio() on valid IMediaProjection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7002
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7001
    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7003
    return v0

    .line 6989
    :catch_4d
    move-exception p1

    .line 6990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call .isValidMediaProjection() on IMediaProjectionManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6991
    invoke-interface {v2}, Landroid/media/projection/IMediaProjectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6990
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6992
    return v0
.end method

.method private checkAddAllFixedVolumeDevices(ILjava/lang/String;)V
    .registers 8

    .line 1202
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1203
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2e

    .line 1204
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1207
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v2, v1

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    .line 1209
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1207
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 1212
    :cond_24
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1214
    :cond_2e
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 8

    .line 1140
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_3
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 1142
    :try_start_6
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1143
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_32

    .line 1144
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AS.AudioService"

    .line 1145
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1147
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1148
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1143
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1151
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_35

    .line 1152
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    .line 1153
    return-void

    .line 1151
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2

    .line 1152
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .line 1218
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1219
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1220
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1222
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3

    .line 1225
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1226
    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .registers 16

    .line 3951
    nop

    .line 3952
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_105

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_e

    goto/16 :goto_105

    .line 3956
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    .line 3958
    const/16 v2, 0x64

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_b4

    const-string v7, "AS.AudioService"

    if-eq v0, v1, :cond_6b

    if-eq v0, v6, :cond_37

    .line 4038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dc

    .line 3960
    :cond_37
    if-ne p2, v4, :cond_57

    .line 3961
    iget-boolean p4, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz p4, :cond_4c

    .line 3967
    if-gt p3, p1, :cond_dc

    mul-int/2addr p3, v6

    if-ge p1, p3, :cond_dc

    .line 3968
    nop

    .line 3969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    move v0, v1

    goto/16 :goto_dc

    .line 3972
    :cond_4c
    if-ne p1, p3, :cond_dc

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean p1, p1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz p1, :cond_dc

    .line 3973
    move v0, v5

    goto/16 :goto_dc

    .line 3976
    :cond_57
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz p1, :cond_dc

    if-eq p2, v3, :cond_61

    const/16 p1, -0x64

    if-ne p2, p1, :cond_dc

    .line 3978
    :cond_61
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz p1, :cond_66

    .line 3979
    goto :goto_67

    .line 3981
    :cond_66
    move v1, v5

    .line 3984
    :goto_67
    move v0, v1

    move v1, v5

    goto/16 :goto_dc

    .line 3988
    :cond_6b
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_76

    .line 3989
    const-string p1, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    goto/16 :goto_dc

    .line 3993
    :cond_76
    if-ne p2, v4, :cond_aa

    .line 3995
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_83

    mul-int/2addr p3, v6

    if-lt p1, p3, :cond_83

    if-eqz p4, :cond_83

    .line 3996
    move v0, v6

    goto :goto_b1

    .line 3997
    :cond_83
    iget p1, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq p1, v4, :cond_b1

    .line 3998
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean p1, p1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz p1, :cond_a7

    .line 3999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr p3, v2

    .line 4001
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget p1, p1, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v2, p1

    cmp-long p1, p3, v2

    if-lez p1, :cond_a6

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4002
    invoke-interface {p1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 4003
    move v0, v5

    .line 4005
    :cond_a6
    goto :goto_b1

    .line 4006
    :cond_a7
    const/16 v1, 0x801

    goto :goto_b1

    .line 4009
    :cond_aa
    if-eq p2, v1, :cond_b0

    if-eq p2, v3, :cond_b0

    if-ne p2, v2, :cond_b1

    .line 4012
    :cond_b0
    move v0, v6

    .line 4014
    :cond_b1
    :goto_b1
    and-int/lit8 v1, v1, -0x2

    .line 4015
    goto :goto_dc

    .line 4017
    :cond_b4
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v7, :cond_c1

    if-ne p2, v4, :cond_c1

    mul-int/2addr p3, v6

    if-lt p1, p3, :cond_c1

    if-eqz p4, :cond_c1

    .line 4019
    move v0, v6

    goto :goto_d9

    .line 4020
    :cond_c1
    if-eq p2, v1, :cond_c7

    if-eq p2, v3, :cond_c7

    if-ne p2, v2, :cond_d9

    .line 4023
    :cond_c7
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean p1, p1, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez p1, :cond_d0

    .line 4024
    const/16 v1, 0x81

    goto :goto_d9

    .line 4026
    :cond_d0
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz p1, :cond_d8

    if-ne p2, v1, :cond_d8

    .line 4027
    move v0, v1

    goto :goto_d9

    .line 4031
    :cond_d8
    move v0, v6

    .line 4035
    :cond_d9
    :goto_d9
    and-int/lit8 v1, v1, -0x2

    .line 4036
    nop

    .line 4042
    :cond_dc
    :goto_dc
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fd

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4043
    invoke-virtual {p1, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_fd

    and-int/lit16 p1, p6, 0x1000

    if-eqz p1, :cond_f5

    goto :goto_fd

    .line 4045
    :cond_f5
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Not allowed to change Do Not Disturb state"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4048
    :cond_fd
    :goto_fd
    const-string p1, "AS.AudioService.checkForRingerModeChange"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 4050
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 4052
    return v1

    .line 3953
    :cond_105
    :goto_105
    return v1
.end method

.method private checkMonitorAudioServerStatePermission()V
    .registers 3

    .line 7675
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7678
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 7681
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7683
    :cond_1d
    :goto_1d
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .registers 5

    .line 1232
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 1233
    aget-object v1, v1, v0

    .line 1234
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_28

    .line 1235
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_28

    .line 1236
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_28

    .line 1237
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1232
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1240
    :cond_2b
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 7

    .line 6230
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6231
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v1, p1

    if-ne p1, v2, :cond_1d

    const p1, 0x400000c

    and-int/2addr p1, p3

    if-eqz p1, :cond_1d

    .line 6234
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result p1

    if-le p2, p1, :cond_1d

    .line 6235
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 6237
    :cond_1d
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 6238
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioPolicies"
        }
    .end annotation

    .line 7063
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7064
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 7066
    :goto_d
    const/4 v1, 0x0

    const-string v2, " / uid "

    const-string v3, " for pid "

    const-string v4, "AS.AudioService"

    if-nez v0, :cond_3f

    .line 7067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7067
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7070
    return-object v1

    .line 7073
    :cond_3f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 7074
    if-nez p1, :cond_76

    .line 7075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7076
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", unregistered policy"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7075
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    return-object v1

    .line 7080
    :cond_76
    return-object p1
.end method

.method private createAudioSystemThread()V
    .registers 2

    .line 1102
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1103
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1104
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1105
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .line 1243
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1244
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1246
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1247
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1246
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1251
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1252
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1253
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1254
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1255
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5

    .line 2720
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2721
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2723
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2724
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2725
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2726
    const/4 p1, 0x1

    return p1

    .line 2728
    :cond_22
    goto :goto_6

    .line 2729
    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .registers 5

    .line 7199
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7200
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7201
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

    .line 7202
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7203
    goto :goto_12

    .line 7204
    :cond_26
    monitor-exit v0

    .line 7205
    return-void

    .line 7204
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5

    .line 6464
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6465
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

    .line 6466
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

    .line 6467
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const-string v1, "affected"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6468
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const-string/jumbo v1, "muted"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6469
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6470
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 10

    .line 6473
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " streams = 0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6474
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6475
    if-eqz p3, :cond_4f

    .line 6476
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6477
    nop

    .line 6478
    const/4 p2, 0x0

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    move p3, p2

    :goto_21
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    const/16 v4, 0x2c

    if-ge p3, v3, :cond_40

    .line 6479
    shl-int v3, v0, p3

    .line 6480
    and-int v5, v1, v3

    if-eqz v5, :cond_3d

    .line 6481
    if-nez v2, :cond_33

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6482
    :cond_33
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6483
    not-int v2, v3

    and-int/2addr v1, v2

    .line 6484
    move v2, p2

    .line 6478
    :cond_3d
    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    .line 6487
    :cond_40
    if-eqz v1, :cond_4a

    .line 6488
    if-nez v2, :cond_47

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 6489
    :cond_47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6491
    :cond_4a
    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 6493
    :cond_4f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6494
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1270
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1272
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_38

    .line 1273
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

    .line 1274
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1275
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1277
    :cond_38
    const-string v0, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method private enforceModifyAudioRoutingPermission()V
    .registers 3

    .line 2120
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2125
    return-void

    .line 2123
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 13

    .line 6205
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 6206
    nop

    .line 6207
    const v1, 0x400000c

    const/4 v2, 0x0

    .line 6209
    :goto_a
    if-eqz v1, :cond_37

    .line 6210
    add-int/lit8 v9, v2, 0x1

    const/4 v3, 0x1

    shl-int v10, v3, v2

    .line 6211
    and-int v2, v10, v1

    if-nez v2, :cond_17

    .line 6212
    move v2, v9

    goto :goto_a

    .line 6214
    :cond_17
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 6215
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v3

    if-le v2, v3, :cond_33

    .line 6216
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 6217
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6225
    :cond_33
    not-int v2, v10

    and-int/2addr v1, v2

    .line 6226
    move v2, v9

    goto :goto_a

    .line 6227
    :cond_37
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .registers 5

    .line 6583
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only SystemUI can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6585
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5

    .line 4170
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

    .line 4179
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4177
    :cond_2c
    :goto_2c
    nop

    .line 4181
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .registers 5

    .line 2944
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2947
    return-void

    .line 2945
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .registers 5

    .line 4184
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 4187
    return-void

    .line 4185
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .registers 7

    .line 5956
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_44

    const/4 v1, 0x3

    if-eq p2, v1, :cond_f

    goto :goto_44

    .line 5960
    :cond_f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 5961
    if-eqz p1, :cond_43

    .line 5962
    const-string p2, "a11y_force_ducking"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_43

    .line 5965
    :cond_1e
    const/4 p1, 0x1

    if-nez p3, :cond_22

    .line 5966
    return p1

    .line 5968
    :cond_22
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5969
    :try_start_25
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz p3, :cond_3e

    .line 5970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 5971
    move v1, v0

    :goto_2e
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3e

    .line 5972
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v2, v2, v1

    if-ne v2, p3, :cond_3b

    .line 5973
    monitor-exit p2

    return p1

    .line 5971
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 5977
    :cond_3e
    monitor-exit p2

    .line 5978
    return v0

    .line 5977
    :catchall_40
    move-exception p1

    monitor-exit p2
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw p1

    .line 5963
    :cond_43
    :goto_43
    return v0

    .line 5958
    :cond_44
    :goto_44
    return v0
.end method

.method private getActiveStreamType(I)I
    .registers 10

    .line 4222
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_a

    if-ne p1, v1, :cond_a

    .line 4224
    return v2

    .line 4227
    :cond_a
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eq v0, v3, :cond_14

    goto :goto_49

    .line 4229
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4230
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p1

    if-ne p1, v2, :cond_21

    .line 4233
    return v4

    .line 4236
    :cond_21
    return v5

    .line 4238
    :cond_22
    if-ne p1, v1, :cond_37

    .line 4239
    sget p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, p1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 4242
    return v6

    .line 4243
    :cond_2d
    sget p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, p1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 4247
    return v7

    .line 4253
    :cond_36
    return v2

    .line 4255
    :cond_37
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 4256
    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4259
    return v7

    .line 4260
    :cond_40
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 4263
    return v6

    .line 4266
    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4267
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p1

    if-ne p1, v2, :cond_56

    .line 4270
    return v4

    .line 4273
    :cond_56
    return v5

    .line 4275
    :cond_57
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 4278
    return v7

    .line 4279
    :cond_60
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 4282
    return v6

    .line 4283
    :cond_69
    if-ne p1, v1, :cond_7e

    .line 4284
    sget p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 4287
    return v7

    .line 4288
    :cond_74
    sget p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 4291
    return v6

    .line 4297
    :cond_7d
    return v2

    .line 4304
    :cond_7e
    return p1
.end method

.method private getAudioHalPids()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7729
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 7730
    nop

    .line 7731
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 7732
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7733
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 7734
    iget v3, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3a

    iget-object v3, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    const-string v4, "android.hardware.audio"

    .line 7736
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 7737
    iget v2, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3c

    .line 7739
    :cond_3a
    goto :goto_12

    .line 7740
    :cond_3b
    return-object v1

    .line 7741
    :catch_3c
    move-exception v0

    .line 7742
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 5

    .line 2153
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

    .line 2154
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 2155
    return-object v1

    .line 2157
    :cond_1b
    goto :goto_8

    .line 2159
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": invalid volume group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requested"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentUserId()I
    .registers 4

    .line 2576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2578
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2579
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2579
    return v2

    .line 2583
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2580
    :catch_17
    move-exception v2

    .line 2583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2584
    nop

    .line 2585
    const/4 v0, 0x0

    return v0
.end method

.method private getDevicesForStream(I)I
    .registers 3

    .line 4392
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result p1

    return p1
.end method

.method private getDevicesForStream(IZ)I
    .registers 5

    .line 4396
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 4397
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4398
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v1, p1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result p1

    monitor-exit v0

    return p1

    .line 4399
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private getHearingAidStreamType(I)I
    .registers 4

    .line 2231
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    .line 2240
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2241
    return v1

    .line 2243
    :cond_10
    return v0

    .line 2234
    :cond_11
    return v1
.end method

.method private getNewRingerMode(III)I
    .registers 5

    .line 2057
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_9

    .line 2058
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result p1

    return p1

    .line 2062
    :cond_9
    const/4 v0, 0x2

    and-int/2addr p3, v0

    if-nez p3, :cond_19

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result p3

    if-ne p1, p3, :cond_14

    goto :goto_19

    .line 2074
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result p1

    return p1

    .line 2065
    :cond_19
    :goto_19
    if-nez p2, :cond_2d

    .line 2066
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    move v0, p1

    goto :goto_2c

    .line 2067
    :cond_22
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean p1, p1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    move v0, p1

    goto :goto_2c

    .line 2068
    :cond_2b
    nop

    :goto_2c
    goto :goto_2e

    .line 2070
    :cond_2d
    nop

    .line 2072
    :goto_2e
    return v0
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 2

    .line 7010
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_10

    .line 7011
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7012
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 7014
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .registers 8

    .line 3865
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 3866
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 3868
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 3871
    :goto_1c
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_47

    .line 3872
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 3873
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 3875
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3877
    goto :goto_47

    .line 3878
    :cond_36
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_3f

    .line 3879
    nop

    .line 3880
    move v0, v3

    goto :goto_47

    .line 3881
    :cond_3f
    cmpg-float v4, v4, v5

    if-gez v4, :cond_45

    .line 3882
    move v0, v3

    goto :goto_46

    .line 3884
    :cond_45
    move v2, v3

    .line 3886
    :goto_46
    goto :goto_1c

    .line 3887
    :cond_47
    :goto_47
    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 2441
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result p1

    .line 2443
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 2444
    return p1

    .line 2448
    :cond_d
    sget-object p1, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result p1

    return p1
.end method

.method private getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I
    .registers 5

    .line 2452
    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
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

    .line 2455
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 2456
    if-eq v1, v2, :cond_21

    .line 2457
    return v1

    .line 2459
    :cond_21
    goto :goto_d

    .line 2460
    :cond_22
    return v2
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 5875
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 5876
    const-string v1, "AS.AudioService"

    if-eqz v0, :cond_1d

    .line 5877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "effect broadcast already targeted to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5878
    return-void

    .line 5880
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5882
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5884
    if-eqz v0, :cond_52

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_52

    .line 5885
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5886
    if-eqz v0, :cond_52

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_52

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 5887
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5888
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5889
    return-void

    .line 5892
    :cond_52
    const-string p1, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 15

    .line 6055
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 6056
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "AS.AudioService"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6064
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    .line 6065
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_87

    .line 6066
    :try_start_1c
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v4

    .line 6067
    :goto_25
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 6068
    if-eqz v2, :cond_79

    .line 6069
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v5, 0x7

    if-nez v2, :cond_5c

    .line 6070
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_84

    .line 6071
    :try_start_31
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v5

    .line 6072
    if-eqz v0, :cond_41

    .line 6073
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 6074
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_50

    .line 6077
    :cond_41
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v7, v3

    const-string v7, "AS.AudioService"

    invoke-virtual {v6, v3, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 6078
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 6081
    :goto_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_59

    .line 6083
    :try_start_51
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_84

    goto :goto_5c

    .line 6081
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p1

    .line 6085
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    .line 6086
    if-eqz v0, :cond_64

    .line 6087
    const/16 v4, 0xb

    goto :goto_65

    :cond_64
    nop

    :goto_65
    const-string v0, "handleConfigurationChanged"

    .line 6085
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 6089
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v0, v5

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6097
    :cond_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_5b .. :try_end_7a} :catchall_84

    .line 6098
    :try_start_7a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_87

    .line 6101
    goto :goto_8f

    .line 6097
    :catchall_84
    move-exception p1

    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw p1
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_87

    .line 6099
    :catch_87
    move-exception p1

    .line 6100
    const-string v0, "AS.AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6102
    :goto_8f
    return-void
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4

    .line 2734
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2735
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2736
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2737
    const/4 p1, 0x1

    return p1

    .line 2740
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private initA11yMonitoring()V
    .registers 3

    .line 6348
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 6349
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 6350
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 6351
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 6352
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 6353
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 6354
    return-void
.end method

.method private isAlarm(I)Z
    .registers 3

    .line 3132
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .registers 6

    .line 2079
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2080
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2080
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2082
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1c

    const/16 v1, 0x18

    if-lt p1, v1, :cond_1b

    .line 2083
    return v0

    .line 2085
    :cond_1b
    return v3

    .line 2086
    :catch_1c
    move-exception p1

    .line 2087
    return v0
.end method

.method private isMedia(I)Z
    .registers 3

    .line 3141
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private isMuteAdjust(I)Z
    .registers 3

    .line 4190
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x65

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isNotificationOrRinger(I)Z
    .registers 3

    .line 3136
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private isPlatformVoice()Z
    .registers 3

    .line 230
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
    .registers 11

    .line 6914
    nop

    .line 6915
    nop

    .line 6916
    nop

    .line 6918
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_18

    if-eqz p3, :cond_a

    goto :goto_18

    .line 6920
    :cond_a
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 6922
    move p2, v0

    goto :goto_19

    .line 6920
    :cond_16
    move p2, v1

    goto :goto_19

    .line 6919
    :cond_18
    :goto_18
    move p2, v0

    .line 6924
    :goto_19
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, p2

    move p2, v1

    move p3, p2

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AS.AudioService"

    if-eqz v3, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 6926
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedPlaybackCapture()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 6928
    or-int/lit8 p2, p2, 0x1

    .line 6930
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v5

    .line 6931
    if-eqz v5, :cond_4c

    .line 6932
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    return v1

    .line 6939
    :cond_4c
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_58

    if-eqz p4, :cond_58

    .line 6940
    or-int/lit8 p3, p3, 0x1

    goto :goto_5a

    .line 6942
    :cond_58
    or-int/lit8 v2, v2, 0x1

    .line 6944
    :goto_5a
    goto :goto_24

    .line 6946
    :cond_5b
    if-eqz p2, :cond_73

    .line 6947
    const-string p1, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 6948
    const-string p1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 6949
    const-string p1, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6951
    return v1

    .line 6954
    :cond_73
    if-eqz p3, :cond_7c

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->canProjectAudio(Landroid/media/projection/IMediaProjection;)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 6955
    return v1

    .line 6958
    :cond_7c
    if-eqz v2, :cond_8c

    .line 6959
    const-string p1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8c

    .line 6960
    const-string p1, "Can not capture audio without MODIFY_AUDIO_ROUTING"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6961
    return v1

    .line 6964
    :cond_8c
    return v0
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .registers 4

    .line 4081
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private isSystem(I)Z
    .registers 3

    .line 3146
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .registers 9

    .line 5896
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5899
    nop

    .line 5900
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 5901
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5902
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1d

    .line 5900
    :cond_1c
    const/4 v1, 0x0

    .line 5904
    :goto_1d
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5907
    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5908
    invoke-interface {v3, v2, v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_92

    .line 5911
    nop

    .line 5912
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_39
    if-ltz v2, :cond_91

    .line 5913
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5915
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_4e

    .line 5916
    goto :goto_8e

    .line 5919
    :cond_4e
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_59

    .line 5921
    goto :goto_8e

    .line 5923
    :cond_59
    if-eqz v1, :cond_70

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5924
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5925
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 5926
    goto :goto_8e

    .line 5929
    :cond_70
    :try_start_70
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5930
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 5931
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-string v6, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 5930
    invoke-interface {v4, v5, v3, v6}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_85} :catch_86

    .line 5935
    goto :goto_8e

    .line 5933
    :catch_86
    move-exception v3

    .line 5934
    const-string v4, "AS.AudioService"

    const-string v5, "Error calling killUid"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5912
    :goto_8e
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 5937
    :cond_91
    return-void

    .line 5909
    :catch_92
    move-exception p1

    .line 5910
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .line 3455
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3456
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1c

    .line 3457
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v2, v1

    aput v0, v3, v0

    .line 3458
    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 3456
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3460
    :cond_1c
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 11

    .line 3463
    const-string v0, "AS.AudioService"

    .line 3466
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3467
    return-void

    .line 3470
    :cond_b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3473
    const/4 v1, 0x0

    :try_start_f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_1c} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_1c} :catch_cb
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_bf
    .catchall {:try_start_f .. :try_end_1c} :catchall_bc

    .line 3475
    :try_start_1c
    const-string v3, "audio_assets"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3476
    const-string/jumbo v3, "version"

    invoke-interface {v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3477
    nop

    .line 3479
    const-string v4, "1.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3481
    :goto_31
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3482
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3483
    const/4 v4, 0x0

    if-nez v3, :cond_3d

    .line 3484
    move v3, v4

    goto :goto_57

    .line 3486
    :cond_3d
    const-string v5, "group"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 3487
    const-string/jumbo v3, "name"

    invoke-interface {v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3488
    const-string/jumbo v5, "touch_sounds"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 3489
    const/4 v3, 0x1

    .line 3490
    nop

    .line 3494
    :goto_57
    if-eqz v3, :cond_b5

    .line 3495
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3496
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3497
    if-nez v5, :cond_63

    .line 3498
    goto :goto_b5

    .line 3500
    :cond_63
    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 3501
    const-string v5, "id"

    invoke-interface {v2, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3502
    const-string v6, "file"

    invoke-interface {v2, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_77
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_77} :catch_ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_77} :catch_b8
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_77} :catch_b6
    .catchall {:try_start_1c .. :try_end_77} :catchall_e6

    .line 3506
    :try_start_77
    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3507
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_9d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_77 .. :try_end_81} :catch_ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_81} :catch_b8
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_81} :catch_b6
    .catchall {:try_start_77 .. :try_end_81} :catchall_e6

    .line 3511
    nop

    .line 3513
    :try_start_82
    sget-object v7, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3514
    const/4 v8, -0x1

    if-ne v7, v8, :cond_96

    .line 3515
    sget-object v7, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 3516
    sget-object v8, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3518
    :cond_96
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v6, v5

    aput v7, v5, v4

    .line 3522
    goto :goto_57

    .line 3508
    :catch_9d
    move-exception v6

    .line 3509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid touch sound ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_b2} :catch_ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_b2} :catch_b8
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_b2} :catch_b6
    .catchall {:try_start_82 .. :try_end_b2} :catchall_e6

    .line 3510
    goto :goto_57

    .line 3493
    :cond_b3
    goto/16 :goto_31

    .line 3531
    :cond_b5
    :goto_b5
    goto :goto_e2

    .line 3528
    :catch_b6
    move-exception v1

    goto :goto_c3

    .line 3526
    :catch_b8
    move-exception v1

    goto :goto_cf

    .line 3524
    :catch_ba
    move-exception v1

    goto :goto_db

    .line 3531
    :catchall_bc
    move-exception v0

    move-object v2, v1

    goto :goto_e7

    .line 3528
    :catch_bf
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 3529
    :goto_c3
    :try_start_c3
    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3531
    if-eqz v2, :cond_e5

    .line 3532
    goto :goto_e2

    .line 3526
    :catch_cb
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 3527
    :goto_cf
    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3531
    if-eqz v2, :cond_e5

    .line 3532
    goto :goto_e2

    .line 3524
    :catch_d7
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 3525
    :goto_db
    const-string v3, "audio assets file not found"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e0
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_e6

    .line 3531
    if-eqz v2, :cond_e5

    .line 3532
    :goto_e2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 3535
    :cond_e5
    return-void

    .line 3531
    :catchall_e6
    move-exception v0

    :goto_e7
    if-eqz v2, :cond_ec

    .line 3532
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ec
    throw v0
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .registers 4

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";device="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z
    .registers 12

    .line 2999
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3000
    return v1

    .line 3002
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

    .line 3004
    :goto_19
    if-eqz v0, :cond_1c

    .line 3005
    return v1

    .line 3008
    :cond_1c
    if-nez p1, :cond_1f

    .line 3009
    return v1

    .line 3011
    :cond_1f
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 3013
    return v2
.end method

.method private muteRingerModeStreams()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 3072
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3074
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v1, :cond_15

    .line 3075
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3078
    :cond_15
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3079
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_20

    if-nez v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v4, v2

    goto :goto_21

    :cond_20
    :goto_20
    move v4, v3

    .line 3081
    :goto_21
    if-ne v1, v3, :cond_2b

    .line 3082
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 3084
    :goto_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3086
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x7

    .line 3087
    if-eqz v1, :cond_59

    const/4 v5, 0x3

    move v11, v5

    goto :goto_5a

    :cond_59
    move v11, v2

    :goto_5a
    const/4 v13, 0x0

    .line 3086
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3089
    sub-int/2addr v0, v3

    :goto_5f
    if-ltz v0, :cond_f4

    .line 3090
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v5

    .line 3091
    const/4 v6, 0x2

    if-eqz v1, :cond_6d

    if-eq v0, v6, :cond_6b

    goto :goto_6d

    :cond_6b
    move v7, v2

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v7, v3

    .line 3093
    :goto_6e
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v8

    .line 3094
    if-nez v8, :cond_81

    if-eqz v4, :cond_7f

    .line 3095
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v8

    if-eqz v8, :cond_7f

    if-eqz v7, :cond_7f

    goto :goto_81

    :cond_7f
    move v7, v2

    goto :goto_82

    :cond_81
    :goto_81
    move v7, v3

    .line 3096
    :goto_82
    if-ne v5, v7, :cond_85

    goto :goto_f0

    .line 3097
    :cond_85
    if-nez v7, :cond_e2

    .line 3100
    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    if-ne v5, v6, :cond_d2

    .line 3101
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 3102
    :try_start_90
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v0

    .line 3103
    move v7, v2

    :goto_95
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_bb

    .line 3104
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3105
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 3106
    if-nez v9, :cond_b8

    .line 3107
    const/16 v9, 0xa

    const-string v10, "AS.AudioService"

    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 3103
    :cond_b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    .line 3111
    :cond_bb
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 3112
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v11, v0

    const/16 v12, 0x1f4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3119
    monitor-exit v5

    goto :goto_d2

    :catchall_cf
    move-exception v0

    monitor-exit v5
    :try_end_d1
    .catchall {:try_start_90 .. :try_end_d1} :catchall_cf

    throw v0

    .line 3121
    :cond_d2
    :goto_d2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3122
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v6, v3, v0

    not-int v6, v6

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_f0

    .line 3125
    :cond_e2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3126
    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v6, v3, v0

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 3089
    :goto_f0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5f

    .line 3129
    :cond_f4
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .registers 6

    .line 4403
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4404
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_16

    .line 4405
    if-eq v2, p1, :cond_13

    .line 4406
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 4404
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4409
    :cond_16
    monitor-exit v0

    .line 4410
    return-void

    .line 4409
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .registers 4

    .line 4559
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

    .line 4561
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    .line 4562
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    if-eqz v0, :cond_33

    .line 4563
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_33

    .line 4568
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, p1, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 4570
    :cond_33
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .registers 13

    .line 3831
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3832
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4e

    .line 3833
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 3835
    const v3, 0x400000c

    and-int/2addr v3, v2

    if-eqz v3, :cond_4e

    .line 3836
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3843
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 3844
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3845
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_4e

    .line 3847
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v2, 0xea60

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3848
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v2, 0x44aa200

    if-le v1, v2, :cond_4b

    .line 3849
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 3850
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3852
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 3856
    :cond_4e
    monitor-exit v0

    .line 3857
    return-void

    .line 3856
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 5

    .line 1167
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1180
    const/16 p1, 0x400

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    .line 1181
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1182
    :try_start_12
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz p2, :cond_23

    .line 1183
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1184
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {p2, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 1186
    :cond_23
    monitor-exit p1

    goto :goto_28

    :catchall_25
    move-exception p2

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    throw p2

    .line 1188
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_42

    .line 1191
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1192
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1193
    :try_start_37
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz p2, :cond_3d

    .line 1194
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1196
    :cond_3d
    monitor-exit p1

    goto :goto_42

    :catchall_3f
    move-exception p2

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw p2

    .line 1199
    :cond_42
    :goto_42
    return-void
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .registers 11

    .line 3891
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3893
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_19

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_7c

    if-eqz p1, :cond_7c

    .line 3894
    :cond_19
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e00a0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 3897
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 3899
    const-string p1, "audio.safemedia.force"

    .line 3900
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3901
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x11100b8

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_4c

    :cond_4a
    move p1, v2

    goto :goto_4d

    :cond_4c
    :goto_4c
    move p1, v3

    .line 3904
    :goto_4d
    const-string v4, "audio.safemedia.bypass"

    .line 3905
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3910
    const/4 v4, 0x3

    if-eqz p1, :cond_6b

    if-nez v2, :cond_6b

    .line 3911
    nop

    .line 3915
    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6f

    .line 3916
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez p1, :cond_68

    .line 3917
    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 3918
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_6f

    .line 3921
    :cond_68
    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    goto :goto_6f

    .line 3925
    :cond_6b
    nop

    .line 3926
    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    move v4, v3

    .line 3928
    :cond_6f
    :goto_6f
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 3929
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3937
    :cond_7c
    monitor-exit v0

    .line 3938
    return-void

    .line 3937
    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .registers 7

    .line 1090
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1091
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

    .line 1093
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    .line 1096
    goto :goto_29

    .line 1094
    :catch_21
    move-exception v2

    .line 1095
    :try_start_22
    const-string v3, "AS.AudioService"

    const-string v4, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    :goto_29
    goto :goto_d

    .line 1098
    :cond_2a
    monitor-exit v0

    .line 1099
    return-void

    .line 1098
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .registers 8

    .line 7222
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7223
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

    .line 7224
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

    .line 7225
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_60

    if-eqz v4, :cond_5c

    .line 7227
    :try_start_37
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_60

    .line 7231
    goto :goto_5a

    .line 7228
    :catch_3d
    move-exception p1

    .line 7229
    :try_start_3e
    const-string p2, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 7230
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7229
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7232
    :goto_5a
    monitor-exit v0

    return-void

    .line 7234
    :cond_5c
    goto :goto_21

    .line 7235
    :cond_5d
    goto :goto_d

    .line 7236
    :cond_5e
    monitor-exit v0

    .line 7237
    return-void

    .line 7236
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_60

    throw p1
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

    .line 1480
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3b

    aget v3, v0, v2

    .line 1481
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1482
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enable surround format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1485
    :cond_3b
    return-void
.end method

.method private onObserveDevicesForAllStreams()V
    .registers 2

    .line 4422
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    .line 4423
    return-void
.end method

.method private onPlaybackConfigChange(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2260
    nop

    .line 2261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 2262
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    .line 2263
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    const/4 v3, 0x3

    if-ne v1, v3, :cond_27

    .line 2265
    :cond_1f
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v0

    if-ne v0, v2, :cond_27

    .line 2266
    const/4 p1, 0x1

    .line 2267
    goto :goto_29

    .line 2269
    :cond_27
    goto :goto_5

    .line 2261
    :cond_28
    const/4 p1, 0x0

    .line 2270
    :goto_29
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_34

    .line 2271
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHearingAidVolumeOnVoiceActivityUpdate()V

    .line 2273
    :cond_34
    return-void
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .registers 13

    .line 2104
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 2105
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2107
    and-int/lit8 p4, p3, 0x2

    const/4 p5, 0x0

    if-nez p4, :cond_18

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result p4

    if-ne v0, p4, :cond_21

    .line 2109
    :cond_18
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result p3

    const-string p4, "AS.AudioService.onSetStreamVolume"

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2114
    :cond_21
    const/4 p3, 0x6

    if-eq p1, p3, :cond_2e

    .line 2115
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, p1, v0

    if-nez p2, :cond_2b

    const/4 p5, 0x1

    :cond_2b
    invoke-virtual {p1, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2117
    :cond_2e
    return-void
.end method

.method private onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .registers 8

    .line 5118
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    aget-object v0, v0, v1

    .line 5119
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->hasVolumeIndex()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5120
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->getVolumeIndex()I

    move-result v1

    .line 5121
    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    iget-object v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5122
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5123
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 5122
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5124
    goto :goto_6c

    .line 5125
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

    .line 5126
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 5125
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5128
    :goto_6c
    iget p1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 5129
    return-void
.end method

.method private onUnmuteStream(II)V
    .registers 11

    .line 2004
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2005
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2007
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 2008
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 2009
    move-object v2, p0

    move v3, p1

    move v4, v5

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2010
    return-void
.end method

.method private onUpdateRingerModeServiceInt()V
    .registers 3

    .line 3173
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3174
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 17

    .line 4333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4336
    move-object v2, p0

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4338
    const/4 v5, 0x2

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4339
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 4

    .line 6564
    const-string v0, "AS.AudioService"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 6565
    nop

    .line 6568
    :try_start_7
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 6569
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6570
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 6574
    goto :goto_20

    .line 6571
    :catch_16
    move-exception v1

    .line 6572
    const-string v1, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6573
    const/4 v1, 0x1

    const-wide/32 v2, 0x40000000

    .line 6576
    :goto_20
    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v1

    .line 6577
    if-eqz v1, :cond_3a

    .line 6578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    :cond_3a
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 8

    .line 3658
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3659
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 3662
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3663
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    if-ge v2, v0, :cond_42

    .line 3664
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    .line 3666
    if-eqz p1, :cond_1c

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_1c

    .line 3667
    goto :goto_3c

    .line 3670
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3671
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 3673
    :try_start_22
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3674
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_34
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3b

    .line 3675
    :cond_38
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3677
    :cond_3b
    monitor-exit v5

    .line 3663
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3677
    :catchall_3f
    move-exception p1

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw p1

    .line 3682
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3684
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3685
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 3686
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 3688
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3689
    :try_start_55
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const v2, 0x44aa200

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3692
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v0, v3, :cond_71

    .line 3693
    const-string v0, "AS.AudioService"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3695
    :cond_71
    monitor-exit p1

    .line 3696
    return-void

    .line 3695
    :catchall_73
    move-exception v0

    monitor-exit p1
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_73

    throw v0
.end method

.method private readCameraSoundForced()Z
    .registers 4

    .line 6038
    const/4 v0, 0x0

    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 6039
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 6038
    :cond_19
    return v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 11

    .line 1361
    const/4 v0, 0x0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1364
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 1368
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz p1, :cond_1b

    .line 1369
    const/16 v0, 0x8

    goto :goto_1c

    :cond_1b
    nop

    :goto_1c
    move v6, v0

    new-instance v7, Ljava/lang/String;

    const-string/jumbo p1, "readDockAudioSettings"

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 1364
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1372
    return-void
.end method

.method private readPersistedSettings()V
    .registers 8

    .line 1545
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1547
    nop

    .line 1548
    const/4 v1, 0x2

    const-string v2, "mode_ringer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1550
    nop

    .line 1553
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1554
    move v3, v1

    goto :goto_14

    .line 1553
    :cond_13
    move v3, v2

    .line 1556
    :goto_14
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v6, :cond_1d

    .line 1557
    move v3, v4

    .line 1559
    :cond_1d
    if-eq v3, v2, :cond_24

    .line 1560
    const-string v2, "mode_ringer"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1562
    :cond_24
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_2d

    .line 1563
    :cond_2c
    move v3, v1

    .line 1565
    :cond_2d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1566
    :try_start_30
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1567
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3b

    .line 1568
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1574
    :cond_3b
    nop

    .line 1576
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v3, :cond_42

    move v3, v1

    goto :goto_43

    .line 1577
    :cond_42
    move v3, v4

    .line 1574
    :goto_43
    invoke-static {v4, v5, v3}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1578
    iget v3, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1580
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_50

    goto :goto_51

    .line 1581
    :cond_50
    move v1, v4

    .line 1578
    :goto_51
    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1583
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1584
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1585
    const-string/jumbo v1, "readPersistedSettings"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1586
    invoke-direct {p0, v0, v5}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1587
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1588
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    .line 1589
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_30 .. :try_end_6d} :catchall_a7

    .line 1591
    const-string/jumbo v1, "volume_link_notification"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_78

    move v1, v5

    goto :goto_79

    :cond_78
    move v1, v4

    :goto_79
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    .line 1594
    const/16 v1, 0x6f

    const/4 v2, -0x2

    const-string/jumbo v3, "mute_streams_affected"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1598
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1600
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1605
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1606
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1609
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1610
    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1613
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1614
    return-void

    .line 1589
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0
.end method

.method private readUserRestrictions()V
    .registers 5

    .line 1617
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1620
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1621
    const-string v2, "disallow_unmute_device"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1623
    const-string/jumbo v3, "no_adjust_volume"

    invoke-virtual {v1, v0, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    .line 1625
    :goto_1e
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_29

    .line 1626
    nop

    .line 1627
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    move v1, v2

    .line 1632
    :cond_29
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1633
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1634
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1636
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v0

    .line 1641
    invoke-static {v0}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1642
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 7

    .line 1645
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p2

    .line 1646
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1647
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    .line 1648
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1650
    if-nez v0, :cond_35

    .line 1651
    const-string p1, "AS.AudioService"

    const-string/jumbo p2, "rescaleIndex : index range should not be zero"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result p1

    return p1

    .line 1655
    :cond_35
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p3, v2, p3

    invoke-virtual {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result p3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p2, v2, p2

    .line 1656
    invoke-virtual {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int/2addr p1, v1

    div-int/lit8 p2, v0, 0x2

    add-int/2addr p1, p2

    div-int/2addr p1, v0

    add-int/2addr p3, p1

    .line 1655
    return p3
.end method

.method private safeMediaVolumeIndex(I)I
    .registers 3

    .line 6171
    const v0, 0x400000c

    and-int/2addr v0, p1

    if-nez v0, :cond_c

    .line 6172
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    return p1

    .line 6174
    :cond_c
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_13

    .line 6175
    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return p1

    .line 6177
    :cond_13
    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return p1
.end method

.method private static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .registers 2

    .line 6552
    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    .line 6558
    const/4 p0, 0x0

    return-object p0

    .line 6556
    :cond_d
    const-string p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object p0

    .line 6555
    :cond_10
    const-string p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object p0

    .line 6554
    :cond_13
    const-string p0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object p0

    .line 6553
    :cond_16
    const-string p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object p0
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .line 3860
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3861
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6

    .line 2555
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2556
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2559
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 2561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2562
    nop

    .line 2563
    return-void

    .line 2561
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .registers 14

    .line 1433
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1435
    return-void

    .line 1437
    :cond_6
    const-string v0, "encoded_surround_output_enabled_formats"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1439
    if-nez p1, :cond_10

    .line 1442
    const-string p1, ""

    .line 1444
    :cond_10
    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1447
    return-void

    .line 1450
    :cond_1b
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1451
    const-string p2, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1452
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_77

    aget-object v4, p1, v3

    .line 1455
    :try_start_2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1456
    nop

    .line 1457
    sget-object v7, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v8, v7

    move v9, v2

    :goto_3c
    if-ge v9, v8, :cond_48

    aget v10, v7, v9

    .line 1458
    if-ne v10, v5, :cond_45

    .line 1459
    nop

    .line 1460
    const/4 v7, 0x1

    goto :goto_49

    .line 1457
    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_48
    move v7, v2

    .line 1463
    :goto_49
    if-eqz v7, :cond_5c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 1464
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5c} :catch_5d

    .line 1468
    :cond_5c
    goto :goto_74

    .line 1466
    :catch_5d
    move-exception v5

    .line 1467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid enabled surround format:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 1472
    :cond_77
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1474
    invoke-static {p2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 1472
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1475
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1476
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .registers 6

    .line 1407
    nop

    .line 1408
    const/16 v0, 0x10

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS.AudioService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    goto :goto_32

    .line 1419
    :cond_27
    const/16 p1, 0xf

    .line 1420
    goto :goto_32

    .line 1416
    :cond_2a
    const/16 p1, 0xe

    .line 1417
    goto :goto_32

    .line 1413
    :cond_2d
    const/16 p1, 0xd

    .line 1414
    goto :goto_32

    .line 1410
    :cond_30
    const/4 p1, 0x0

    .line 1411
    nop

    .line 1426
    :goto_32
    if-eq p1, v0, :cond_3a

    .line 1427
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1430
    :cond_3a
    return-void
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5

    .line 1398
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1401
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1402
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 4

    .line 2618
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2619
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2620
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11

    .line 4343
    if-nez p2, :cond_6

    .line 4344
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 4345
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 4346
    return-void

    .line 4349
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 4350
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4351
    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6

    .line 2566
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2569
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2572
    nop

    .line 2573
    return-void

    .line 2571
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 5

    .line 7184
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 7186
    const-string p1, "AS.AudioService"

    const-string v0, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7188
    return-void

    .line 7190
    :cond_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7191
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_31

    .line 7192
    const-string v1, "AS.AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    :cond_31
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 7195
    monitor-exit v0

    .line 7196
    return-void

    .line 7195
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw p1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .registers 8

    .line 2790
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_c

    .line 2791
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    invoke-static {p5, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2794
    :cond_c
    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_19

    .line 2796
    return-void

    .line 2798
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    if-eq p5, p3, :cond_2a

    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2799
    const-string p4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_2a

    .line 2802
    return-void

    .line 2804
    :cond_2a
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 2805
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .registers 5

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_b

    .line 2815
    return-void

    .line 2822
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p3, :cond_19

    .line 2823
    :cond_13
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_28

    .line 2824
    :cond_19
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result p3

    if-eq p1, p3, :cond_28

    .line 2825
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2826
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2827
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 2830
    :cond_28
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .registers 5

    .line 2917
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_28

    .line 2918
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result p2

    .line 2919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2920
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2922
    if-eq p1, p2, :cond_28

    .line 2923
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000  # 2.0f

    .line 2924
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 2923
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2927
    :cond_28
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceBroker.mSetModeLock"
        }
    .end annotation

    .line 3323
    nop

    .line 3324
    const-string v0, "AS.AudioService"

    const/4 v1, 0x0

    if-nez p2, :cond_d

    .line 3325
    const-string/jumbo p1, "setModeInt() called with null binder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    return v1

    .line 3329
    :cond_d
    nop

    .line 3330
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3331
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 3332
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3333
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    if-ne v5, p3, :cond_43

    .line 3334
    nop

    .line 3336
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 3338
    :try_start_2b
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3339
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_36
    .catch Ljava/util/NoSuchElementException; {:try_start_2b .. :try_end_36} :catch_3b

    if-eq p2, v2, :cond_39

    .line 3340
    goto :goto_3a

    .line 3339
    :cond_39
    move-object v4, v3

    .line 3345
    :goto_3a
    goto :goto_44

    .line 3342
    :catch_3b
    move-exception v2

    .line 3343
    nop

    .line 3344
    const-string v2, "link does not exist ..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    goto :goto_44

    .line 3348
    :cond_43
    goto :goto_14

    .line 3349
    :cond_44
    :goto_44
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3350
    nop

    .line 3353
    :goto_47
    nop

    .line 3354
    if-nez p1, :cond_67

    .line 3356
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 3357
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3358
    invoke-virtual {p2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3359
    invoke-virtual {p2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v4

    goto :goto_98

    .line 3356
    :cond_63
    move-object v3, p2

    move-object p2, v4

    move v4, p1

    goto :goto_98

    .line 3366
    :cond_67
    if-nez v4, :cond_6e

    .line 3367
    new-instance v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    .line 3371
    :cond_6e
    :try_start_6e
    invoke-interface {p2, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_72

    .line 3375
    goto :goto_8d

    .line 3372
    :catch_72
    move-exception v3

    .line 3374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode() could not link to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " binder death"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :goto_8d
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3380
    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    move-object v3, p2

    move-object p2, v4

    move v4, p1

    .line 3383
    :goto_98
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v4, v5, :cond_b9

    .line 3384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3385
    invoke-static {v4}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v7

    .line 3386
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3387
    if-nez v7, :cond_ac

    .line 3389
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMode:I

    goto :goto_b7

    .line 3391
    :cond_ac
    if-eqz p2, :cond_b6

    .line 3392
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3393
    invoke-interface {v3, p2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3397
    :cond_b6
    move p1, v1

    .line 3399
    :goto_b7
    move v8, p1

    goto :goto_bb

    .line 3400
    :cond_b9
    move v8, p1

    move v7, v1

    .line 3402
    :goto_bb
    if-eqz v7, :cond_cb

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c6

    goto :goto_cb

    :cond_c6
    move-object v4, p2

    move-object p2, v3

    move p1, v8

    goto/16 :goto_47

    .line 3404
    :cond_cb
    :goto_cb
    if-nez v7, :cond_123

    .line 3405
    if-eqz v4, :cond_eb

    .line 3406
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 3407
    const-string/jumbo p1, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 3409
    :cond_de
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result p1

    goto :goto_ec

    .line 3413
    :cond_eb
    :goto_eb
    move p1, v1

    :goto_ec
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v5, v0

    move-object v6, p4

    move v7, p3

    move v9, p1

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3415
    const/high16 p2, -0x80000000

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p2

    .line 3416
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 3417
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p2

    aget-object p3, p3, v0

    invoke-virtual {p3, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    .line 3418
    sget-object p3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, p3, p2

    const/4 v9, 0x1

    move-object v5, p0

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3420
    const/4 p2, 0x1

    invoke-direct {p0, p2, p4}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3423
    invoke-virtual {p0, v2, v4}, Lcom/android/server/audio/AudioService;->updateAbsVolumeMultiModeDevices(II)V

    goto :goto_124

    .line 3404
    :cond_123
    move p1, v1

    .line 3425
    :goto_124
    return p1
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .registers 14

    .line 3017
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_a

    goto/16 :goto_84

    .line 3020
    :cond_a
    if-eqz p2, :cond_6d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 3023
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 3024
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v1, :cond_1f

    .line 3025
    const/4 p1, 0x0

    move v3, p1

    goto :goto_20

    .line 3027
    :cond_1f
    move v3, p1

    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3029
    :try_start_24
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_68

    .line 3030
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v9

    .line 3031
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v5

    .line 3032
    if-eqz p3, :cond_49

    .line 3033
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3034
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz p3, :cond_43

    .line 3035
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, v5

    move-object v4, p2

    move v5, v9

    invoke-interface/range {v1 .. v6}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v3

    .line 3038
    :cond_43
    if-eq v3, v9, :cond_5f

    .line 3039
    invoke-direct {p0, v3, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_5f

    .line 3042
    :cond_49
    if-eq v3, v9, :cond_4e

    .line 3043
    invoke-direct {p0, v3, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3045
    :cond_4e
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz p3, :cond_5c

    .line 3046
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, v9

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v3

    .line 3049
    :cond_5c
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3051
    :cond_5f
    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_65

    .line 3053
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3054
    nop

    .line 3055
    return-void

    .line 3051
    :catchall_65
    move-exception p2

    :try_start_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    throw p2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 3053
    :catchall_68
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3021
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad caller: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3018
    :cond_84
    :goto_84
    return-void
.end method

.method private setRingerModeExt(I)V
    .registers 4

    .line 3058
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3059
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 3060
    :cond_9
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 3061
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 3063
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3064
    return-void

    .line 3061
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private setRingerModeInt(IZ)V
    .registers 12

    .line 3151
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3152
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 3153
    :goto_a
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3154
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 3155
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    .line 3158
    if-eqz p2, :cond_1e

    .line 3159
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3162
    :cond_1e
    if-eqz v1, :cond_25

    .line 3164
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3166
    :cond_25
    return-void

    .line 3155
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 14

    .line 6182
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6183
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    .line 6185
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_1a

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v3, :cond_1a

    .line 6186
    iput v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 6187
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_35

    .line 6188
    :cond_1a
    if-nez p1, :cond_35

    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne p1, v1, :cond_35

    .line 6189
    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    .line 6190
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 6191
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 6192
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p2

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6201
    :cond_35
    :goto_35
    monitor-exit v0

    .line 6202
    return-void

    .line 6201
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 23

    .line 2330
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v4, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_f

    .line 2331
    return-void

    .line 2334
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2335
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v4, v7

    .line 2336
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v8

    .line 2338
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 2343
    and-int/lit16 v5, v9, 0x380

    if-nez v5, :cond_27

    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_27

    .line 2345
    return-void

    .line 2349
    :cond_27
    const/16 v6, 0x3e8

    move/from16 v10, p6

    if-ne v10, v6, :cond_3a

    .line 2350
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v6

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v6, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    move v10, v6

    .line 2352
    :cond_3a
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v11, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v11, v11, v8

    invoke-virtual {v6, v11, v10, v3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_47

    .line 2354
    return-void

    .line 2357
    :cond_47
    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2358
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2359
    invoke-virtual {v6, v3}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_68

    .line 2360
    :cond_60
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2363
    :cond_68
    :goto_68
    invoke-direct {v0, v8, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2364
    return-void

    .line 2367
    :cond_6f
    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2369
    const/4 v3, 0x0

    :try_start_73
    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2371
    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 2373
    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 2375
    const/4 v12, 0x3

    if-ne v8, v12, :cond_8f

    if-eqz v5, :cond_8f

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_8f

    .line 2382
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v5, v1, 0xa

    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 2385
    :cond_8f
    const/high16 v3, 0x8000000

    and-int/2addr v3, v9

    if-eqz v3, :cond_be

    .line 2386
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v3

    if-ne v7, v3, :cond_be

    .line 2387
    const-string v3, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2392
    :cond_be
    if-ne v8, v12, :cond_c7

    .line 2393
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    invoke-direct {v0, v11, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2396
    :cond_c7
    and-int/lit8 v2, v2, -0x21

    .line 2397
    if-ne v8, v12, :cond_ef

    iget v3, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_ef

    .line 2399
    or-int/lit8 v2, v2, 0x20

    .line 2402
    if-eqz v1, :cond_ec

    .line 2403
    iget v1, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v1, v12, :cond_e5

    const v1, 0x400000c

    and-int/2addr v1, v9

    if-eqz v1, :cond_e5

    .line 2405
    invoke-direct {v0, v9}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    move v13, v1

    move v14, v2

    goto :goto_f1

    .line 2407
    :cond_e5
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    move v13, v1

    move v14, v2

    goto :goto_f1

    .line 2402
    :cond_ec
    move v13, v1

    move v14, v2

    goto :goto_f1

    .line 2412
    :cond_ef
    move v13, v1

    move v14, v2

    :goto_f1
    invoke-direct {v0, v8, v13, v9}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_10d

    .line 2413
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v14}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2414
    new-instance v15, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v13

    move v5, v14

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v15, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move v4, v13

    goto :goto_122

    .line 2417
    :cond_10d
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v13

    move v4, v14

    move v5, v9

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2418
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v1, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    move v4, v1

    .line 2420
    :goto_122
    monitor-exit v10
    :try_end_123
    .catchall {:try_start_73 .. :try_end_123} :catchall_15e

    .line 2421
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2422
    :try_start_126
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_14f

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v2, :cond_14f

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v2, :cond_14f

    if-ne v8, v12, :cond_14f

    if-eq v11, v4, :cond_14f

    .line 2427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2428
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    const/4 v6, 0x0

    .line 2429
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v8

    .line 2430
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v10

    .line 2431
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v12

    .line 2428
    invoke-virtual {v5, v6, v8, v10, v12}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    .line 2432
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    :cond_14f
    monitor-exit v1
    :try_end_150
    .catchall {:try_start_126 .. :try_end_150} :catchall_15b

    .line 2435
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v11

    move v5, v14

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2436
    return-void

    .line 2434
    :catchall_15b
    move-exception v0

    :try_start_15c
    monitor-exit v1
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw v0

    .line 2420
    :catchall_15e
    move-exception v0

    :try_start_15f
    monitor-exit v10
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    throw v0
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .registers 14

    .line 2645
    iget v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    .line 2646
    return-void

    .line 2648
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 2650
    invoke-virtual {v6, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    if-eqz p4, :cond_1c

    .line 2653
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2661
    :cond_1c
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .registers 6

    .line 2664
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2665
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_10

    goto :goto_24

    .line 2666
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_26

    .line 2668
    :try_start_14
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1f

    .line 2670
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2671
    nop

    .line 2672
    monitor-exit v0

    .line 2673
    return-void

    .line 2670
    :catchall_1f
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2665
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    .line 2672
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private setSystemAudioVolume(IIII)V
    .registers 8

    .line 2015
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2016
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_2a

    if-eq p1, p2, :cond_2a

    and-int/lit16 p4, p4, 0x100

    if-nez p4, :cond_2a

    iget-boolean p4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez p4, :cond_16

    goto :goto_2a

    .line 2023
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2c

    .line 2025
    :try_start_1a
    iget-object p4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p4, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_25

    .line 2027
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2028
    nop

    .line 2029
    monitor-exit v0

    .line 2030
    return-void

    .line 2027
    :catchall_25
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2021
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 2029
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private shouldZenMuteStream(I)Z
    .registers 8

    .line 4061
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 4062
    return v1

    .line 4065
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 4066
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    .line 4068
    :goto_1a
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v1

    .line 4070
    :goto_23
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v1

    .line 4072
    :goto_2c
    nop

    .line 4073
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    .line 4074
    if-eqz v3, :cond_39

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v3

    if-nez v3, :cond_51

    :cond_39
    if-eqz v4, :cond_41

    .line 4075
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v3

    if-nez v3, :cond_51

    :cond_41
    if-eqz v5, :cond_49

    .line 4076
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v3

    if-nez v3, :cond_51

    :cond_49
    if-eqz v0, :cond_53

    .line 4077
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result p1

    if-eqz p1, :cond_53

    :cond_51
    move v1, v2

    goto :goto_54

    :cond_53
    nop

    .line 4074
    :goto_54
    return v1
.end method

.method private unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 6

    .line 7039
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7040
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 7039
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7041
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7042
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 7043
    if-nez v1, :cond_5f

    .line 7044
    const-string p1, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7045
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7044
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    monitor-exit v0

    return-void

    .line 7048
    :cond_5f
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 7050
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 7051
    monitor-exit v0

    .line 7053
    return-void

    .line 7051
    :catchall_6c
    move-exception p1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_29 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method private updateA11yVolumeAlias(Z)V
    .registers 5

    .line 6399
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1f

    .line 6400
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 6402
    const/4 p1, 0x1

    const-string v0, "AS.AudioService"

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 6404
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 6405
    goto :goto_15

    .line 6406
    :cond_14
    move p1, v2

    .line 6404
    :goto_15
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 6407
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 6409
    :cond_1f
    return-void
.end method

.method private updateAssistantUId(Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 1489
    nop

    .line 1496
    nop

    .line 1497
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    if-eqz v0, :cond_b

    .line 1498
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RoleObserver;->getAssistantRoleHolder()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1497
    :cond_b
    const-string v0, ""

    .line 1500
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AS.AudioService"

    if-eqz v1, :cond_52

    .line 1501
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    const-string/jumbo v4, "voice_interaction_service"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1505
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "assistant"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1509
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1510
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1511
    if-nez v0, :cond_4e

    .line 1512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid service name for voice_interaction_service: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    return-void

    .line 1516
    :cond_4e
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1519
    :cond_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_82

    .line 1520
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1521
    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_82

    .line 1524
    :try_start_67
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_6b} :catch_6c

    .line 1528
    goto :goto_82

    .line 1525
    :catch_6c
    move-exception v1

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAssistantUId() could not find UID for package: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_82
    :goto_82
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    if-ne v3, v0, :cond_88

    if-eqz p1, :cond_8d

    .line 1533
    :cond_88
    invoke-static {v3}, Landroid/media/AudioSystem;->setAssistantUid(I)I

    .line 1534
    iput v3, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    .line 1536
    :cond_8d
    return-void
.end method

.method private updateAudioHalPids()V
    .registers 3

    .line 7747
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioHalPids()Ljava/util/Set;

    move-result-object v0

    .line 7748
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 7749
    const-string v0, "AS.AudioService"

    const-string v1, "Could not retrieve audio HAL service pids"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7750
    return-void

    .line 7752
    :cond_12
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/audio/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 7753
    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioHalPids([I)I

    .line 7754
    return-void
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .registers 2

    .line 6376
    if-eqz p1, :cond_7

    .line 6377
    const/16 p1, 0x3e8

    sput p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_a

    .line 6379
    :cond_7
    const/4 p1, 0x0

    sput p1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 6383
    :goto_a
    return-void
.end method

.method private updateDefaultVolumes()V
    .registers 6

    .line 1259
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 1260
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_1e

    .line 1261
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v0

    aget v2, v2, v4

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    .line 1259
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1267
    :cond_21
    return-void
.end method

.method private updateFlagsForTvPlatform(I)I
    .registers 4

    .line 2605
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_11

    .line 2607
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_11

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_11

    .line 2609
    and-int/lit8 p1, p1, -0x2

    .line 2612
    :cond_11
    monitor-exit v0

    .line 2613
    return p1

    .line 2612
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private updateHearingAidVolumeOnVoiceActivityUpdate()V
    .registers 7

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    .line 2277
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 2278
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2279
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IZII)V

    .line 2278
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2280
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2282
    return-void
.end method

.method private updateMasterBalance(Landroid/content/ContentResolver;)V
    .registers 5

    .line 1386
    const-string v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 1391
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterBalance(F)I

    move-result v0

    if-eqz v0, :cond_24

    .line 1392
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const-string/jumbo p1, "setMasterBalance failed for %f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_24
    return-void
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .registers 5

    .line 1377
    const/4 v0, 0x0

    const-string v1, "master_mono"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    move v0, v1

    .line 1382
    :cond_c
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1383
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 4129
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 4130
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string v3, "mode_ringer_streams_affected"

    const/16 v4, 0xa6

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4136
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v4, :cond_15

    .line 4137
    const/4 v1, 0x0

    goto :goto_1e

    .line 4138
    :cond_15
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_1e

    .line 4139
    nop

    .line 4140
    invoke-interface {v4, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 4142
    :cond_1e
    :goto_1e
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v4, :cond_25

    .line 4143
    and-int/lit16 v1, v1, -0x81

    goto :goto_27

    .line 4145
    :cond_25
    or-int/lit16 v1, v1, 0x80

    .line 4147
    :goto_27
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    .line 4148
    or-int/lit16 v1, v1, 0x100

    goto :goto_35

    .line 4150
    :cond_33
    and-int/lit16 v1, v1, -0x101

    .line 4153
    :goto_35
    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v4, :cond_42

    .line 4154
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4158
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 4159
    const/4 v0, 0x1

    return v0

    .line 4161
    :cond_42
    return v0
.end method

.method private updateRttEanbled(Landroid/content/ContentResolver;)V
    .registers 5

    .line 1539
    const/4 v0, 0x0

    const-string/jumbo v1, "rtt_calling_mode"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    .line 1541
    :cond_c
    invoke-static {v0}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    .line 1542
    return-void
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .registers 26

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v2, :cond_d

    .line 1284
    move v2, v4

    goto :goto_e

    :cond_d
    move v2, v3

    .line 1286
    :goto_e
    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_18

    .line 1287
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1288
    goto :goto_28

    .line 1290
    :cond_18
    iget v5, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_22

    .line 1296
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1297
    goto :goto_28

    .line 1292
    :cond_22
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1293
    nop

    .line 1294
    move v3, v6

    .line 1301
    :goto_28
    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_30

    .line 1302
    iput v7, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_45

    .line 1304
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1305
    nop

    .line 1306
    iget v3, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    move v3, v7

    goto :goto_45

    .line 1308
    :cond_3f
    iget v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1312
    :goto_45
    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v8, 0x8

    aput v3, v5, v8

    .line 1313
    aput v2, v5, v4

    .line 1315
    iget-boolean v9, v0, Lcom/android/server/audio/AudioService;->mVoiceCapable:Z

    if-eqz v9, :cond_5b

    .line 1316
    iget-boolean v9, v0, Lcom/android/server/audio/AudioService;->mLinkNotificationWithVolume:Z

    const/4 v10, 0x5

    if-eqz v9, :cond_59

    .line 1317
    aput v6, v5, v10

    goto :goto_5b

    .line 1319
    :cond_59
    aput v10, v5, v10

    .line 1324
    :cond_5b
    :goto_5b
    if-eqz p1, :cond_ca

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v5, :cond_ca

    .line 1325
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1327
    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1328
    :try_start_67
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_c7

    .line 1329
    :try_start_6a
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v9, v9, v8

    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v10, v3

    .line 1330
    invoke-virtual {v9, v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1331
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v4

    sget-object v9, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v3, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v4

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v9, v2

    invoke-virtual {v3, v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1335
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_c4

    .line 1336
    :try_start_8c
    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_c7

    .line 1337
    sget-boolean v1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v1, :cond_98

    .line 1339
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1343
    :cond_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {v0, v1, v7}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1344
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0xa

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v8

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1350
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0xa

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v21, v0, v4

    const/16 v22, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_ca

    .line 1335
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v6
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v0

    .line 1336
    :catchall_c7
    move-exception v0

    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c7

    throw v0

    .line 1357
    :cond_ca
    :goto_ca
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .registers 6

    .line 4095
    nop

    .line 4096
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-ne v0, v1, :cond_3c

    .line 4097
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 4098
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1e

    .line 4100
    const/16 v3, 0x10

    goto :goto_1f

    .line 4098
    :cond_1e
    move v3, v2

    .line 4103
    :goto_1f
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_27

    .line 4105
    or-int/lit8 v3, v3, 0x8

    .line 4108
    :cond_27
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2f

    .line 4110
    or-int/lit8 v3, v3, 0x2

    .line 4113
    :cond_2f
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4114
    or-int/lit8 v0, v3, 0x20

    .line 4115
    or-int/lit8 v0, v0, 0x4

    goto :goto_3d

    .line 4113
    :cond_3a
    move v0, v3

    goto :goto_3d

    .line 4119
    :cond_3c
    move v0, v2

    :goto_3d
    iget v3, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v3, v0, :cond_44

    .line 4120
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 4121
    return v1

    .line 4124
    :cond_44
    return v2
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .registers 7

    .line 2466
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    const/4 v2, 0x2

    if-eq v0, v1, :cond_12

    if-eq v0, v2, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    .line 2477
    return v1

    .line 2472
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2473
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_25

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    nop

    .line 2472
    :goto_26
    return v1

    .line 2468
    :cond_27
    return v1
.end method

.method private waitForAudioHandlerCreation()V
    .registers 3

    .line 1109
    monitor-enter p0

    .line 1110
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_12

    .line 1113
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    .line 1116
    :goto_8
    goto :goto_1

    .line 1114
    :catch_9
    move-exception v0

    .line 1115
    :try_start_a
    const-string v0, "AS.AudioService"

    const-string v1, "Interrupted while waiting on volume handler."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1118
    :cond_12
    monitor-exit p0

    .line 1119
    return-void

    .line 1118
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .registers 4

    .line 4217
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4218
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 4217
    :goto_10
    return p1
.end method

.method private wouldToggleZenMode(I)Z
    .registers 4

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 2094
    return v1

    .line 2095
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 2097
    return v1

    .line 2099
    :cond_13
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 6

    .line 6015
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 5

    .line 7086
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7087
    :try_start_3
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 7088
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object p2

    .line 7089
    const/4 v1, -0x1

    if-nez p2, :cond_e

    .line 7090
    monitor-exit v0

    return v1

    .line 7092
    :cond_e
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)I

    move-result p1

    if-nez p1, :cond_1a

    .line 7093
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    monitor-exit v0

    .line 7092
    return v1

    .line 7094
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 14

    .line 1741
    const/16 v0, 0xa

    if-ne p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    return-void

    .line 1746
    :cond_21
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1748
    nop

    .line 1749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1748
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1750
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 30

    .line 1754
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_b

    .line 1755
    return-void

    .line 1760
    :cond_b
    invoke-direct {v0, v9}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1761
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1763
    invoke-direct {v0, v9}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v10

    .line 1765
    if-eqz v10, :cond_1e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1766
    return-void

    .line 1771
    :cond_1e
    if-eqz v10, :cond_56

    if-eqz v8, :cond_25

    const/4 v1, 0x6

    if-ne v8, v1, :cond_56

    :cond_25
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1774
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
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

    .line 1777
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1785
    :cond_56
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v1, v8

    .line 1787
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v15

    .line 1789
    invoke-virtual {v0, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    .line 1791
    invoke-virtual {v14, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1792
    nop

    .line 1797
    and-int/lit16 v12, v13, 0x380

    if-nez v12, :cond_70

    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_70

    .line 1799
    return-void

    .line 1804
    :cond_70
    const/16 v2, 0x3e8

    move/from16 v3, p6

    if-ne v3, v2, :cond_83

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    goto :goto_84

    .line 1804
    :cond_83
    move v2, v3

    .line 1807
    :goto_84
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v15

    move-object/from16 v6, p4

    invoke-virtual {v3, v4, v2, v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_93

    .line 1809
    return-void

    .line 1813
    :cond_93
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1814
    const/4 v3, 0x0

    :try_start_97
    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1815
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_2e9

    .line 1817
    and-int/lit8 v2, p3, -0x21

    .line 1818
    const/4 v11, 0x3

    if-ne v15, v11, :cond_c5

    iget v3, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v13

    if-eqz v3, :cond_c5

    .line 1820
    or-int/lit8 v2, v2, 0x20

    .line 1825
    iget v3, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v3, v11, :cond_b5

    const v3, 0x400000c

    and-int/2addr v3, v13

    if-eqz v3, :cond_b5

    .line 1827
    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v3

    goto :goto_b9

    .line 1829
    :cond_b5
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    .line 1831
    :goto_b9
    if-eqz v1, :cond_c0

    .line 1832
    move/from16 v16, v3

    move/from16 v17, v16

    goto :goto_cf

    .line 1831
    :cond_c0
    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_cf

    .line 1836
    :cond_c5
    const/16 v3, 0xa

    invoke-direct {v0, v3, v8, v15}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v3

    move/from16 v16, v1

    move/from16 v17, v3

    .line 1841
    :goto_cf
    and-int/lit8 v1, v2, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_e2

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v15, v1, :cond_dc

    goto :goto_e2

    :cond_dc
    move v7, v5

    move/from16 v19, v12

    move v5, v2

    move v12, v7

    goto :goto_127

    .line 1843
    :cond_e2
    :goto_e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 1845
    if-ne v1, v5, :cond_ec

    .line 1846
    and-int/lit8 v1, v2, -0x11

    move v4, v1

    goto :goto_ed

    .line 1845
    :cond_ec
    move v4, v2

    .line 1850
    :goto_ed
    nop

    .line 1851
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v18

    .line 1850
    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, p2

    move/from16 p3, v4

    move/from16 v4, v17

    move/from16 v19, v12

    move v12, v5

    move/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    .line 1852
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_10f

    move v2, v12

    goto :goto_110

    :cond_10f
    const/4 v2, 0x0

    .line 1854
    :goto_110
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_11a

    .line 1855
    move/from16 v3, p3

    or-int/lit16 v4, v3, 0x80

    move v3, v4

    goto :goto_11c

    .line 1854
    :cond_11a
    move/from16 v3, p3

    .line 1858
    :goto_11c
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_125

    .line 1859
    or-int/lit16 v1, v3, 0x800

    move v5, v1

    move v7, v2

    goto :goto_127

    .line 1858
    :cond_125
    move v7, v2

    move v5, v3

    .line 1865
    :goto_127
    invoke-direct {v0, v15, v5}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 1866
    const/4 v7, 0x0

    .line 1868
    :cond_12e
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v8

    invoke-virtual {v1, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 1870
    if-eqz v7, :cond_2d7

    if-eqz v9, :cond_2d7

    .line 1871
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1873
    const/4 v1, -0x1

    const/16 v2, 0x65

    if-eqz v10, :cond_188

    .line 1875
    if-ne v9, v2, :cond_14e

    .line 1876
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    xor-int/2addr v4, v12

    goto :goto_155

    .line 1878
    :cond_14e
    const/16 v4, -0x64

    if-ne v9, v4, :cond_154

    move v4, v12

    goto :goto_155

    :cond_154
    const/4 v4, 0x0

    .line 1880
    :goto_155
    if-ne v15, v11, :cond_15a

    .line 1881
    invoke-direct {v0, v4}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1883
    :cond_15a
    const/4 v6, 0x0

    :goto_15b
    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v7, v7

    if-ge v6, v7, :cond_181

    .line 1884
    sget-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v7, v7, v6

    if-ne v15, v7, :cond_17e

    .line 1885
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    if-eqz v7, :cond_177

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v7, v6

    .line 1886
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v7

    const/4 v14, 0x7

    if-eq v7, v14, :cond_17e

    .line 1888
    :cond_177
    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1883
    :cond_17e
    add-int/lit8 v6, v6, 0x1

    goto :goto_15b

    .line 1892
    :cond_181
    move v4, v11

    move v7, v13

    move v2, v15

    move/from16 v6, v19

    goto/16 :goto_23a

    :cond_188
    if-ne v9, v12, :cond_1b4

    add-int v4, v16, v17

    .line 1893
    invoke-direct {v0, v15, v4, v13}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v4

    if-nez v4, :cond_1b4

    .line 1894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AS.AudioService"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    move v4, v11

    move v7, v13

    move v2, v15

    move/from16 v6, v19

    goto/16 :goto_23a

    .line 1896
    :cond_1b4
    iget v4, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v13

    if-nez v4, :cond_235

    mul-int v4, v9, v17

    .line 1897
    move-object/from16 v6, p5

    invoke-virtual {v14, v4, v13, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d1

    .line 1898
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    goto :goto_1d1

    :cond_1ca
    move v4, v11

    move v7, v13

    move v2, v15

    move/from16 v6, v19

    goto/16 :goto_23a

    .line 1901
    :cond_1d1
    :goto_1d1
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 1903
    if-ne v9, v12, :cond_1e5

    .line 1905
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    move v4, v11

    move v7, v13

    move-object/from16 v21, v14

    move v2, v15

    move/from16 v6, v19

    goto :goto_223

    .line 1906
    :cond_1e5
    const/4 v4, 0x0

    if-ne v9, v1, :cond_214

    .line 1907
    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v6, :cond_20c

    .line 1908
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x12

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x15e

    move v4, v11

    move-object v11, v6

    move v2, v12

    move/from16 v6, v19

    move v12, v7

    move v7, v13

    move/from16 v13, v16

    move-object/from16 v21, v14

    move v14, v15

    move v2, v15

    move v15, v5

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_223

    .line 1907
    :cond_20c
    move v4, v11

    move v7, v13

    move-object/from16 v21, v14

    move v2, v15

    move/from16 v6, v19

    goto :goto_223

    .line 1906
    :cond_214
    move v4, v11

    move v7, v13

    move-object/from16 v21, v14

    move v2, v15

    move/from16 v6, v19

    goto :goto_223

    .line 1901
    :cond_21c
    move v4, v11

    move v7, v13

    move-object/from16 v21, v14

    move v2, v15

    move/from16 v6, v19

    .line 1913
    :goto_223
    iget-object v11, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v19, v7

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_23a

    .line 1896
    :cond_235
    move v4, v11

    move v7, v13

    move v2, v15

    move/from16 v6, v19

    .line 1922
    :goto_23a
    iget-object v11, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v11, v8

    invoke-virtual {v11, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 1925
    if-ne v2, v4, :cond_251

    if-eqz v6, :cond_251

    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_251

    .line 1932
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v12, v11, 0xa

    invoke-virtual {v6, v12}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    .line 1936
    :cond_251
    const/high16 v6, 0x8000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_261

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v6

    if-ne v8, v6, :cond_261

    .line 1944
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v11, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 1949
    :cond_261
    if-ne v2, v4, :cond_26a

    .line 1950
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v6

    invoke-direct {v0, v3, v11, v6, v5}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 1952
    :cond_26a
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1953
    :try_start_26d
    iget-object v12, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v12, :cond_2d2

    .line 1955
    iget-boolean v12, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v12, :cond_2ac

    if-ne v2, v4, :cond_2ac

    iget v12, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v12, v7

    if-eqz v12, :cond_2ac

    .line 1959
    nop

    .line 1960
    if-eq v9, v1, :cond_28e

    const/4 v1, 0x1

    if-eq v9, v1, :cond_28b

    const/16 v1, 0x65

    if-eq v9, v1, :cond_288

    const/4 v1, 0x0

    goto :goto_291

    .line 1968
    :cond_288
    const/16 v1, 0xa4

    .line 1969
    goto :goto_291

    .line 1962
    :cond_28b
    const/16 v1, 0x18

    .line 1963
    goto :goto_291

    .line 1965
    :cond_28e
    const/16 v1, 0x19

    .line 1966
    nop

    .line 1973
    :goto_291
    if-eqz v1, :cond_2ac

    .line 1974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_297
    .catchall {:try_start_26d .. :try_end_297} :catchall_2d4

    .line 1976
    :try_start_297
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v14, 0x1

    invoke-virtual {v9, v1, v14}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1977
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v14, 0x0

    invoke-virtual {v9, v1, v14}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_2a3
    .catchall {:try_start_297 .. :try_end_2a3} :catchall_2a7

    .line 1979
    :try_start_2a3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1980
    goto :goto_2ac

    .line 1979
    :catchall_2a7
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1984
    :cond_2ac
    :goto_2ac
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v1, :cond_2d2

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_2d2

    if-ne v2, v4, :cond_2d2

    if-ne v3, v11, :cond_2ba

    if-eqz v10, :cond_2d2

    .line 1988
    :cond_2ba
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1989
    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 1990
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v11

    .line 1991
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v12

    .line 1992
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v4

    .line 1989
    invoke-virtual {v9, v10, v11, v12, v4}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    .line 1993
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    :cond_2d2
    monitor-exit v6

    goto :goto_2d8

    :catchall_2d4
    move-exception v0

    monitor-exit v6
    :try_end_2d6
    .catchall {:try_start_2a3 .. :try_end_2d6} :catchall_2d4

    throw v0

    .line 1870
    :cond_2d7
    move v7, v13

    .line 1998
    :goto_2d8
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v8

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 1999
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2000
    return-void

    .line 1815
    :catchall_2e9
    move-exception v0

    :try_start_2ea
    monitor-exit v2
    :try_end_2eb
    .catchall {:try_start_2ea .. :try_end_2eb} :catchall_2e9

    throw v0
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1667
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1668
    :try_start_3
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1669
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    .line 1670
    if-eqz v7, :cond_14

    .line 1671
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_22

    .line 1675
    :cond_14
    nop

    .line 1676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1675
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1678
    :goto_22
    return-void

    .line 1669
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 10

    .line 5683
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcpSupportsAbsoluteVolume addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " support="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 5685
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 5686
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 p2, 0x3

    aget-object v5, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5689
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 4

    .line 4354
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 4356
    const/4 p1, 0x1

    return p1

    .line 4358
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4361
    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    const/4 p1, 0x0

    return p1
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 10

    .line 5714
    const v0, 0x400000c

    and-int/2addr p1, v0

    if-eqz p1, :cond_14

    .line 5715
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5723
    :cond_14
    return-void
.end method

.method public disableRingtoneSync(I)V
    .registers 7

    .line 7287
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7288
    if-eq v0, p1, :cond_f

    .line 7289
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "disable sound settings syncing for another profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7292
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7295
    :try_start_13
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sync_parent_sounds"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_21

    .line 7298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7299
    nop

    .line 7300
    return-void

    .line 7298
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 10

    .line 6243
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6244
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6245
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 6246
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_28

    .line 6247
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

    .line 6252
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 6254
    :cond_28
    monitor-exit v0

    .line 6255
    return-void

    .line 6254
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 6

    .line 7619
    if-eqz p1, :cond_2e

    .line 7622
    if-eqz p3, :cond_26

    .line 7625
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7626
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 7629
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 7627
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7630
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p1

    .line 7623
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioPolicy callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7620
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioFocusInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 6498
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string p3, "AS.AudioService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 6500
    :cond_b
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6501
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6502
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6503
    const-string p1, "\nAudio routes:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6504
    const-string p1, "  mMainType=0x"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 6505
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object p1

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 6504
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6506
    const-string p1, "  mBluetoothName="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6508
    const-string p1, "\nOther state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6509
    const-string p1, "  mVolumeController="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6510
    const-string p1, "  mSafeMediaVolumeState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6511
    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6512
    const-string p1, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 6513
    const-string p1, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 6514
    const-string p1, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    .line 6515
    const-string p1, "  sIndependentA11yVolume="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6516
    const-string p1, "  mPendingVolumeCommand="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6517
    const-string p1, "  mMusicActiveMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 6518
    const-string p1, "  mMcc="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 6519
    const-string p1, "  mCameraSoundForced="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6520
    const-string p1, "  mHasVibrator="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6521
    const-string p1, "  mVolumePolicy="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6522
    const-string p1, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6523
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6524
    const-string p1, "  mIsSingleVolume="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6525
    const-string p1, "  mUseFixedVolume="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6526
    const-string p1, "  mFixedVolumeDevices=0x"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6527
    const-string p1, "  mHdmiCecSink="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6528
    const-string p1, "  mHdmiAudioSystemClient="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6529
    const-string p1, "  mHdmiPlaybackClient="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6530
    const-string p1, "  mHdmiTvClient="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6531
    const-string p1, "  mHdmiSystemAudioSupported="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6533
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 6534
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 6536
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 6538
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 6540
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6541
    const-string p3, "\nEvent logs:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6542
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p3, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 6543
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6544
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p3, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 6545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6546
    sget-object p3, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p3, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 6547
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6548
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 6549
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 7

    .line 2748
    if-nez p2, :cond_3

    .line 2749
    return-void

    .line 2751
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 2753
    const-string p1, "AS.AudioService"

    const-string p2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    return-void

    .line 2756
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2757
    const/4 v1, 0x0

    .line 2758
    const/4 v2, 0x1

    if-eqz p1, :cond_44

    .line 2759
    :try_start_1c
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 2760
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    iget p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez p1, :cond_3e

    .line 2762
    iget p1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2763
    iget p1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2764
    move v1, v2

    .line 2766
    :cond_3e
    iget p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_65

    .line 2769
    :cond_44
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez p1, :cond_65

    .line 2770
    iget p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2771
    iget p1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez p1, :cond_65

    .line 2772
    iget p1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const p2, -0x8001

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2773
    iget p1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2774
    move v1, v2

    .line 2778
    :cond_65
    :goto_65
    if-eqz v1, :cond_72

    .line 2780
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2781
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2783
    :cond_72
    monitor-exit v0

    .line 2784
    return-void

    .line 2783
    :catchall_74
    move-exception p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_1c .. :try_end_76} :catchall_74

    throw p1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 6

    .line 2482
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 2484
    return-void

    .line 2487
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2488
    :try_start_e
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    if-eq p1, v2, :cond_18

    .line 2489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 2491
    :cond_18
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2492
    iget p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne p1, v2, :cond_2e

    .line 2493
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz p1, :cond_2a

    .line 2494
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2495
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2497
    :cond_2a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_6a

    .line 2499
    :cond_2e
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez p1, :cond_3a

    .line 2500
    new-instance p1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_6a

    .line 2502
    :cond_3a
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p2, :cond_5e

    .line 2503
    const-string p1, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceVolumeControlStream cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already linked."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2505
    :cond_5e
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2506
    new-instance p1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2510
    :goto_6a
    monitor-exit v0

    .line 2511
    return-void

    .line 2510
    :catchall_6c
    move-exception p1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_e .. :try_end_6e} :catchall_6c

    throw p1
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

    .line 7319
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7320
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 7322
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 7256
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7257
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 7259
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedCapturePolicy()I
    .registers 5

    .line 7375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7377
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllowedCapturePolicy(I)I

    move-result v0

    .line 7378
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7379
    return v0
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

    .line 1127
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

    .line 1136
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 3827
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .line 6023
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceForStream(I)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4368
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result p1

    .line 4369
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    const/high16 v1, 0x200000

    const/high16 v2, 0x80000

    const/high16 v3, 0x40000

    if-eqz v0, :cond_29

    .line 4376
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_15

    .line 4377
    const/4 p1, 0x2

    goto :goto_29

    .line 4378
    :cond_15
    and-int v0, p1, v3

    if-eqz v0, :cond_1b

    .line 4379
    move p1, v3

    goto :goto_29

    .line 4380
    :cond_1b
    and-int v0, p1, v2

    if-eqz v0, :cond_21

    .line 4381
    move p1, v2

    goto :goto_29

    .line 4382
    :cond_21
    and-int v0, p1, v1

    if-eqz v0, :cond_27

    .line 4383
    move p1, v1

    goto :goto_29

    .line 4385
    :cond_27
    and-int/lit16 p1, p1, 0x380

    .line 4388
    :cond_29
    :goto_29
    return p1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 4

    .line 6027
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result p1

    return p1
.end method

.method getHearingAidStreamType()I
    .registers 2

    .line 2227
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4

    .line 2876
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2877
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2878
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 2175
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2176
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    return p1
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 2182
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2183
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    return p1
.end method

.method public getMode()I
    .registers 2

    .line 3430
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method getModeOwnerPid()I
    .registers 3

    .line 3221
    nop

    .line 3223
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 3226
    goto :goto_10

    .line 3224
    :catch_f
    move-exception v1

    .line 3227
    :goto_10
    return v0
.end method

.method public getRingerModeExternal()I
    .registers 3

    .line 2931
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2932
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 2933
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingerModeInternal()I
    .registers 3

    .line 2938
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2939
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 2940
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .line 6112
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3

    .line 2864
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2865
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getStreamMinVolume(I)I
    .registers 3

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getStreamVolume(I)I
    .registers 7

    .line 2845
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2846
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2847
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2848
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2851
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2852
    const/4 v2, 0x0

    .line 2854
    :cond_1d
    if-eqz v2, :cond_33

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_33

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_33

    .line 2856
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    .line 2858
    :cond_33
    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v1

    return v2

    .line 2859
    :catchall_39
    move-exception p1

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public getUiSoundsStreamType()I
    .registers 3

    .line 2883
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 3

    .line 3199
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 3200
    :cond_6
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 p1, p1, 0x2

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .registers 3

    .line 2165
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2166
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 2168
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2170
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    move-result p1

    return p1
.end method

.method getVssVolumeForDevice(II)I
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    return p1
.end method

.method public handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 12

    .line 4525
    if-eqz p1, :cond_48

    .line 4528
    const/4 v0, 0x2

    if-eq p3, v0, :cond_21

    const/16 v1, 0xb

    if-ne p3, v1, :cond_a

    goto :goto_21

    .line 4529
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid profile "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4531
    :cond_21
    :goto_21
    if-eq p2, v0, :cond_3d

    if-nez p2, :cond_26

    goto :goto_3d

    .line 4533
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid state "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4535
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 4537
    return-void

    .line 4526
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 4512
    if-eqz p1, :cond_8

    .line 4515
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 4516
    return-void

    .line 4513
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasAudioFocusUsers()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6033
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method public hasHapticChannels(Landroid/net/Uri;)Z
    .registers 7

    .line 4576
    const-string v0, "haptic-channel-count"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 4578
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 4579
    move p1, v2

    :goto_f
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge p1, v3, :cond_2a

    .line 4580
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 4581
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4582
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_2b

    if-lez v3, :cond_27

    .line 4583
    const/4 p1, 0x1

    return p1

    .line 4579
    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 4588
    :cond_2a
    goto :goto_42

    .line 4586
    :catch_2b
    move-exception p1

    .line 4587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasHapticChannels failure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    :goto_42
    return v2
.end method

.method public hasMediaDynamicPolicy()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5698
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 5699
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 5700
    monitor-exit v0

    return v2

    .line 5702
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 5703
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 5704
    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5706
    monitor-exit v0

    return v5

    .line 5708
    :cond_2e
    goto :goto_18

    .line 5709
    :cond_2f
    monitor-exit v0

    return v2

    .line 5710
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .registers 3

    .line 7176
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7177
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

    .line 7178
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isAudioServerRunning()Z
    .registers 2

    .line 7717
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 7718
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

    .line 3779
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 2

    .line 3764
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOnForApp()Z

    move-result v0

    return v0
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .line 6424
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6425
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 6426
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .line 6341
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isInCommunication()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4197
    nop

    .line 4199
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4200
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 4202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4203
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 4204
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4206
    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 4207
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    .line 4206
    :goto_2b
    return v0
.end method

.method public isMasterMute()Z
    .registers 2

    .line 2834
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method isPlatformAutomotive()Z
    .registers 3

    .line 238
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

    .line 234
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

    .line 3737
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 4

    .line 4166
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 4

    .line 4057
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamMute(I)Z
    .registers 4

    .line 2677
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_8

    .line 2678
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2680
    :cond_8
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2681
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2682
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object p1, v1, p1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2683
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public isValidRingerMode(I)Z
    .registers 3

    .line 2951
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public loadSoundEffects()Z
    .registers 9

    .line 3563
    nop

    .line 3564
    new-instance v7, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v7, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3566
    monitor-enter v7

    .line 3567
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, 0x3

    .line 3568
    :goto_13
    iget v1, v7, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_35

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2d

    .line 3570
    const-wide/16 v2, 0x1388

    :try_start_1e
    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_35

    .line 3573
    :goto_21
    goto :goto_2b

    .line 3571
    :catch_22
    move-exception v0

    .line 3572
    :try_start_23
    const-string v0, "AS.AudioService"

    const-string v2, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3568
    :goto_2b
    move v0, v1

    goto :goto_13

    .line 3575
    :cond_2d
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_35

    .line 3576
    iget v0, v7, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    return v2

    .line 3575
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 4

    .line 6620
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6623
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 6624
    return-void

    .line 6627
    :cond_f
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 6629
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    .line 6394
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 6395
    return-void
.end method

.method public onAudioServerDied()V
    .registers 10

    .line 976
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_1a8

    .line 977
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_1a8

    .line 983
    :cond_c
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    .line 991
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 993
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 996
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onAudioServerDied()V

    .line 999
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_53

    .line 1000
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1001
    invoke-static {v3}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1005
    :cond_53
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_56
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    .line 1007
    const/16 v1, 0xb

    goto :goto_5f

    :cond_5e
    move v1, v2

    .line 1008
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_1a5

    .line 1010
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    const-string/jumbo v4, "onAudioServerDied"

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1013
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1014
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6f
    if-ltz v0, :cond_8b

    .line 1015
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    .line 1016
    nop

    .line 1017
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    .line 1016
    invoke-static {v0, v4, v5}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1019
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1014
    add-int/lit8 v0, v0, -0x1

    goto :goto_6f

    .line 1023
    :cond_8b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1032
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_a3

    .line 1033
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1036
    :cond_a3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1037
    :try_start_a6
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_ad

    .line 1038
    const/16 v0, 0x8

    goto :goto_ae

    :cond_ad
    move v0, v2

    .line 1039
    :goto_ae
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x3

    const-string/jumbo v6, "onAudioServerDied"

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "onAudioServerDied"

    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1042
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    .line 1044
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_a6 .. :try_end_cd} :catchall_1a2

    .line 1045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_d0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    invoke-static {v3}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    .line 1047
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_19f

    .line 1048
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1049
    :try_start_d9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_e6

    .line 1050
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1052
    :cond_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_d9 .. :try_end_e7} :catchall_19c

    .line 1054
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 1055
    :try_start_ea
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1056
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    .line 1057
    goto :goto_f4

    .line 1058
    :cond_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_ea .. :try_end_105} :catchall_199

    .line 1061
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v3

    .line 1062
    :try_start_108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1063
    invoke-virtual {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllAllowedCapturePolicies()Ljava/util/HashMap;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1065
    nop

    .line 1066
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1067
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v2}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v6

    .line 1065
    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v5

    .line 1068
    if-eqz v5, :cond_17e

    .line 1069
    const-string v6, "AS.AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to restore capture policy, uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", capture policy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1069
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1076
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1075
    invoke-virtual {v5, v4, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    .line 1078
    :cond_17e
    goto :goto_116

    .line 1079
    :cond_17f
    monitor-exit v3
    :try_end_180
    .catchall {:try_start_108 .. :try_end_180} :catchall_196

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1083
    const-string/jumbo v0, "restarting=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1085
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1087
    return-void

    .line 1079
    :catchall_196
    move-exception v0

    :try_start_197
    monitor-exit v3
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0

    .line 1058
    :catchall_199
    move-exception v1

    :try_start_19a
    monitor-exit v0
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v1

    .line 1052
    :catchall_19c
    move-exception v0

    :try_start_19d
    monitor-exit v3
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    throw v0

    .line 1047
    :catchall_19f
    move-exception v1

    :try_start_1a0
    monitor-exit v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw v1

    .line 1044
    :catchall_1a2
    move-exception v0

    :try_start_1a3
    monitor-exit v3
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw v0

    .line 1008
    :catchall_1a5
    move-exception v1

    :try_start_1a6
    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    throw v1

    .line 978
    :cond_1a8
    :goto_1a8
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 981
    return-void
.end method

.method onIndicateSystemReady()V
    .registers 9

    .line 963
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_7

    .line 964
    return-void

    .line 966
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 973
    return-void
.end method

.method public onSystemReady()V
    .registers 10

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->scheduleLoadSoundEffects()V

    .line 888
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSystemReady()V

    .line 890
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 891
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 893
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 894
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_3d

    .line 895
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v3, -0x2c0003

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 897
    :cond_3d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 898
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v2, :cond_55

    .line 900
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 901
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 903
    :cond_55
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 904
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 905
    monitor-exit v0

    goto :goto_64

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_61

    throw v1

    .line 908
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 910
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 916
    const-string v0, "audio.safemedia.bypass"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 917
    goto :goto_83

    :cond_81
    const/16 v1, 0x7530

    :goto_83
    move v8, v1

    .line 910
    const-string v7, "AS.AudioService"

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 919
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 921
    new-instance v0, Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RoleObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    .line 922
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RoleObserver;->register()V

    .line 924
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 925
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .registers 2

    .line 6372
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 6373
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 3

    .line 3539
    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3540
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11

    .line 3545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3546
    return-void

    .line 3549
    :cond_8
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1e

    if-gez p1, :cond_f

    goto :goto_1e

    .line 3554
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr p2, v0

    float-to-int v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3556
    return-void

    .line 3550
    :cond_1e
    :goto_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioService effectType value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .registers 5

    .line 7330
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 7331
    return-void
.end method

.method public playerEvent(II)V
    .registers 5

    .line 7334
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 7335
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .registers 5

    .line 7338
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 7339
    return-void
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4549
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4551
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 11

    .line 5110
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5115
    return-void
.end method

.method postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 10

    .line 1161
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1163
    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4415
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4419
    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5102
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5107
    return-void
.end method

.method postUpdateRingerModeServiceInt()V
    .registers 8

    .line 3169
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3170
    return-void
.end method

.method public recorderEvent(II)V
    .registers 4

    .line 7276
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->recorderEvent(II)V

    .line 7277
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .registers 23

    .line 6864
    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v1}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 6866
    const/4 v11, 0x0

    if-nez p4, :cond_14

    if-nez p5, :cond_14

    if-eqz p3, :cond_12

    goto :goto_14

    :cond_12
    move v1, v11

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct {p0, v3, v1, v8, v9}, Lcom/android/server/audio/AudioService;->isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_4c

    .line 6870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied to register audio policy for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6871
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

    .line 6870
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    return-object v12

    .line 6876
    :cond_4c
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerAudioPolicy for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6877
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with config:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioService"

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 6876
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6879
    nop

    .line 6880
    iget-object v13, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v13

    .line 6881
    :try_start_7e
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 6882
    const-string v0, "AS.AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6883
    monitor-exit v13
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_f6

    return-object v12

    .line 6886
    :cond_93
    :try_start_93
    new-instance v14, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V

    .line 6888
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v14, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6889
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 6890
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_bc} :catch_d8
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_bc} :catch_bf
    .catchall {:try_start_93 .. :try_end_bc} :catchall_f6

    .line 6899
    nop

    .line 6900
    :try_start_bd
    monitor-exit v13

    .line 6901
    return-object v1

    .line 6896
    :catch_bf
    move-exception v0

    .line 6897
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed for binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6898
    monitor-exit v13

    return-object v12

    .line 6891
    :catch_d8
    move-exception v0

    .line 6893
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6895
    monitor-exit v13

    return-object v12

    .line 6900
    :catchall_f6
    move-exception v0

    monitor-exit v13
    :try_end_f8
    .catchall {:try_start_bd .. :try_end_f8} :catchall_f6

    throw v0
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 6

    .line 7686
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 7687
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 7688
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 7689
    const-string p1, "AS.AudioService"

    const-string v1, "Cannot re-register audio server state dispatcher"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7690
    monitor-exit v0

    return-void

    .line 7692
    :cond_1b
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_35

    .line 7694
    :try_start_20
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29
    .catchall {:try_start_20 .. :try_end_28} :catchall_35

    .line 7697
    goto :goto_2a

    .line 7695
    :catch_29
    move-exception v2

    .line 7698
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7699
    monitor-exit v0

    .line 7700
    return-void

    .line 7699
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 4

    .line 7308
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7309
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 7311
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 7312
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 4

    .line 7245
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7246
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 7248
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 7249
    return-void
.end method

.method public releasePlayer(I)V
    .registers 4

    .line 7342
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 7343
    return-void
.end method

.method public releaseRecorder(I)V
    .registers 3

    .line 7283
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    .line 7284
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 2

    .line 3653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3654
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 5

    .line 7100
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7101
    :try_start_3
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 7102
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object p2

    .line 7103
    const/4 v1, -0x1

    if-nez p2, :cond_e

    .line 7104
    monitor-exit v0

    return v1

    .line 7106
    :cond_e
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    move-result p1

    if-nez p1, :cond_1a

    .line 7107
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    monitor-exit v0

    .line 7106
    return v1

    .line 7108
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 5

    .line 7135
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7136
    :try_start_3
    const-string v1, "Cannot remove device affinity in audio policy"

    .line 7137
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object p1

    .line 7138
    if-nez p1, :cond_e

    .line 7139
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    .line 7141
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinities(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 7142
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 20

    .line 5985
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    and-int/lit8 v2, p7, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v2, v3, :cond_45

    .line 5986
    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5987
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 5989
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AS.AudioService"

    const-string v2, "Invalid permission to (un)lock audio focus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5990
    return v4

    .line 5994
    :cond_28
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 5995
    :try_start_2b
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 5996
    const-string v0, "AS.AudioService"

    const-string v1, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    monitor-exit v2

    return v4

    .line 5999
    :cond_40
    monitor-exit v2

    goto :goto_45

    :catchall_42
    move-exception v0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw v0

    .line 6003
    :cond_45
    :goto_45
    if-eqz p6, :cond_68

    if-eqz v5, :cond_68

    if-nez v1, :cond_4c

    goto :goto_68

    .line 6008
    :cond_4c
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 6010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v4, p2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v9

    .line 6008
    move-object v0, v2

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    .line 6004
    :cond_68
    :goto_68
    const-string v0, "AS.AudioService"

    const-string v1, "Invalid null parameter to request audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    return v4
.end method

.method protected scheduleLoadSoundEffects()V
    .registers 8

    .line 3584
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3585
    return-void
.end method

.method protected sendVolumeUpdate(IIIII)V
    .registers 6

    .line 2591
    sget-object p2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, p2, p1

    .line 2593
    const/4 p2, 0x3

    if-ne p1, p2, :cond_12

    .line 2594
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p4

    .line 2595
    iget p2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr p2, p5

    if-eqz p2, :cond_12

    .line 2596
    and-int/lit8 p4, p4, -0x2

    .line 2599
    :cond_12
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2600
    return-void
.end method

.method public setAllowedCapturePolicy(I)I
    .registers 8

    .line 7357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7358
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v1

    .line 7359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7360
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v4

    .line 7361
    :try_start_10
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v1

    .line 7362
    if-nez v1, :cond_1b

    .line 7363
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v5, v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    .line 7365
    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7366
    monitor-exit v4

    return v1

    .line 7367
    :catchall_20
    move-exception p1

    monitor-exit v4
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 12

    .line 4494
    if-eqz p1, :cond_2a

    .line 4497
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_8

    goto :goto_1f

    .line 4499
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4502
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 4504
    return-void

    .line 4495
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 4

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3772
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3773
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3774
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOn_Async(ZLjava/lang/String;)V

    .line 3775
    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .registers 13

    .line 4471
    if-eqz p1, :cond_3d

    .line 4474
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_8

    goto :goto_1f

    .line 4476
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4479
    :cond_1f
    :goto_1f
    if-ne p2, v0, :cond_2a

    .line 4480
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    goto :goto_31

    .line 4482
    :cond_2a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 4484
    :goto_31
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 4486
    return-void

    .line 4472
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBluetoothScoOn(Z)V
    .registers 4

    .line 3742
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3743
    return-void

    .line 3747
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_18

    .line 3748
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOnByApp(Z)V

    .line 3749
    return-void

    .line 3753
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3754
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3757
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 3758
    return-void
.end method

.method setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 12

    .line 5133
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 5135
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5137
    :try_start_9
    invoke-virtual {p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5140
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 5141
    add-int/lit8 v2, v2, -0x1

    :goto_12
    if-ltz v2, :cond_41

    .line 5142
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-eq v2, v3, :cond_3e

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    .line 5143
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-ne v3, v4, :cond_3e

    .line 5146
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 5147
    if-eq p2, v3, :cond_37

    if-eqz v0, :cond_37

    and-int/lit16 v4, p2, 0x380

    if-eqz v4, :cond_37

    .line 5149
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5152
    :cond_37
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5141
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 5156
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_4f

    .line 5158
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5166
    return-void

    .line 5156
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 8

    .line 7148
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7149
    :try_start_3
    const-string v1, "Cannot change audio policy focus properties"

    .line 7150
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 7151
    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 7152
    monitor-exit v0

    return v2

    .line 7154
    :cond_e
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 7155
    const-string p1, "AS.AudioService"

    const-string p2, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7156
    monitor-exit v0

    return v2

    .line 7158
    :cond_23
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4a

    .line 7160
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 7161
    iget v4, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v4, p2, :cond_49

    .line 7162
    const-string p1, "AS.AudioService"

    const-string p2, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7163
    monitor-exit v0

    return v2

    .line 7165
    :cond_49
    goto :goto_30

    .line 7167
    :cond_4a
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 7168
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v2, 0x0

    if-ne p1, p2, :cond_52

    goto :goto_53

    :cond_52
    move p2, v2

    :goto_53
    invoke-virtual {v1, p2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 7170
    monitor-exit v0

    .line 7171
    return v2

    .line 7170
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 6

    .line 7635
    if-eqz p1, :cond_2d

    .line 7638
    if-eqz p3, :cond_25

    .line 7641
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7642
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 7645
    iget-object p3, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 7646
    monitor-exit v0

    .line 7647
    return-void

    .line 7643
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unregistered AudioPolicy for external focus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7646
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p1

    .line 7639
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioPolicy callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7636
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioFocusInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 6

    .line 6318
    nop

    .line 6319
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6320
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 6321
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-nez v1, :cond_1a

    .line 6322
    const-string p1, "AS.AudioService"

    const-string v1, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    monitor-exit v0

    return v2

    .line 6326
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v1, p1, :cond_2f

    .line 6327
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6328
    if-eqz p1, :cond_25

    const/16 v2, 0xc

    goto :goto_26

    .line 6329
    :cond_25
    nop

    .line 6330
    :goto_26
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x5

    const-string/jumbo v3, "setHdmiSystemAudioSupported"

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 6333
    :cond_2f
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v2

    .line 6335
    :cond_34
    monitor-exit v0

    .line 6336
    return v2

    .line 6335
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .registers 11

    .line 2838
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2841
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .registers 7

    .line 2891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2892
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10

    .line 2893
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2896
    :cond_10
    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1d

    .line 2898
    return-void

    .line 2900
    :cond_1d
    const-string/jumbo p2, "setMicrophoneMute()"

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_27

    .line 2901
    return-void

    .line 2903
    :cond_27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p3, p2, :cond_38

    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2904
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_38

    .line 2907
    return-void

    .line 2909
    :cond_38
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    .line 2910
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    .line 3282
    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3283
    return-void

    .line 3286
    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 3287
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 3290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3290
    const-string p2, "AS.AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return-void

    .line 3295
    :cond_3e
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7b

    const/4 v1, 0x4

    if-lt p1, v1, :cond_45

    goto :goto_7b

    .line 3299
    :cond_45
    nop

    .line 3300
    nop

    .line 3301
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3302
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_61

    .line 3303
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    .line 3305
    :cond_61
    if-ne p1, v0, :cond_65

    .line 3306
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3308
    :cond_65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result p1

    .line 3309
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_78

    .line 3312
    if-eq p1, v3, :cond_77

    if-eqz p1, :cond_77

    .line 3313
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectBluetoothSco(I)V

    .line 3315
    :cond_77
    return-void

    .line 3309
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1

    .line 3296
    :cond_7b
    :goto_7b
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .registers 4

    .line 2955
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2956
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 2957
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Not allowed to change Do Not Disturb state"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2960
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2961
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4

    .line 2964
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2965
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2966
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5

    .line 6106
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6107
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 6108
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 6

    .line 3700
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3701
    return-void

    .line 3704
    :cond_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5e

    .line 3707
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3708
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

    .line 3709
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_58

    .line 3710
    const-string p1, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode is call, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
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

    .line 3710
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    monitor-exit v0

    return-void

    .line 3714
    :cond_58
    goto :goto_1d

    .line 3715
    :cond_59
    monitor-exit v0

    goto :goto_5e

    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_5b

    throw p1

    .line 3719
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3720
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3722
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(ZLjava/lang/String;)Z

    move-result p1

    .line 3723
    if-eqz p1, :cond_ae

    .line 3724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3726
    :try_start_91
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000  # 2.0f

    .line 3728
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3726
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a5
    .catchall {:try_start_91 .. :try_end_a5} :catchall_a9

    .line 3730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3731
    goto :goto_ae

    .line 3730
    :catchall_a9
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3733
    :cond_ae
    :goto_ae
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 14

    .line 2189
    const-string v0, "AS.AudioService"

    const/16 v1, 0xa

    if-ne p1, v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    return-void

    .line 2194
    :cond_21
    if-nez p1, :cond_44

    if-nez p2, :cond_44

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2195
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_44

    .line 2198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    return-void

    .line 2202
    :cond_44
    sget-object v7, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2204
    nop

    .line 2205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2204
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2206
    return-void
.end method

.method public setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .registers 8

    .line 7117
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7118
    :try_start_3
    const-string v1, "Cannot change device affinity in audio policy"

    .line 7119
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object p1

    .line 7120
    const/4 v1, -0x1

    if-nez p1, :cond_e

    .line 7121
    monitor-exit v0

    return v1

    .line 7123
    :cond_e
    invoke-virtual {p1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 7124
    monitor-exit v0

    return v1

    .line 7126
    :cond_16
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 7127
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public setVibrateSetting(II)V
    .registers 4

    .line 3206
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    return-void

    .line 3208
    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 3212
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 3214
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5

    .line 6589
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6592
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6593
    return-void

    .line 6597
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 6598
    if-eqz p1, :cond_25

    .line 6601
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 6612
    goto :goto_25

    .line 6610
    :catch_24
    move-exception v0

    .line 6614
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6616
    return-void
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    .registers 14

    .line 2130
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    .line 2131
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 2134
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2136
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    .line 2138
    invoke-static {p1, p2, v0}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    .line 2141
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object p1

    .line 2142
    if-nez p1, :cond_21

    .line 2143
    return-void

    .line 2145
    :cond_21
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_3b

    aget v3, p1, v1

    .line 2146
    nop

    .line 2147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2146
    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2145
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2149
    :cond_3b
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 3

    .line 6633
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 6634
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6635
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 6638
    :cond_12
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 4445
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1d

    if-nez p2, :cond_6

    goto :goto_1d

    .line 4447
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid state "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4449
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 5

    .line 3178
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3180
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13

    .line 3193
    return v1

    .line 3186
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result p1

    if-ne p1, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 3183
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    .line 3190
    :cond_25
    return v1
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 6

    .line 2969
    nop

    .line 2970
    nop

    .line 2971
    nop

    .line 2973
    nop

    .line 2974
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2975
    const v1, 0x11100fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2976
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_20

    .line 2975
    :cond_1f
    move v0, v1

    .line 2981
    :goto_20
    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    const/4 v0, 0x0

    move v2, v1

    move v3, v2

    goto :goto_3e

    .line 2983
    :cond_2a
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2984
    nop

    .line 2985
    const v2, 0x1040737

    .line 2986
    move v3, v2

    move v2, v1

    goto :goto_3e

    .line 2988
    :cond_35
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2989
    nop

    .line 2990
    const v3, 0x1040738

    .line 2993
    :goto_3e
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z

    .line 2994
    invoke-virtual {p0, v2, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2995
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2996
    return-void
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5

    .line 3785
    const/16 v0, 0x12

    if-ge p2, v0, :cond_6

    .line 3786
    const/4 p2, 0x0

    goto :goto_7

    :cond_6
    const/4 p2, -0x1

    .line 3787
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBluetoothSco()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3788
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3790
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 3791
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6

    .line 3802
    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_e

    goto :goto_1d

    .line 3806
    :cond_e
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3807
    :try_start_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 3808
    monitor-exit v0

    .line 3809
    return-void

    .line 3808
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1

    .line 3804
    :cond_1d
    :goto_1d
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 4

    .line 3795
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBluetoothScoVirtualCall()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3796
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3798
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 3799
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 6117
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p1

    return-object p1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 5

    .line 3813
    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_e

    goto :goto_41

    .line 3817
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3818
    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3820
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3821
    :try_start_37
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3822
    monitor-exit v1

    .line 3823
    return-void

    .line 3822
    :catchall_3e
    move-exception p1

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p1

    .line 3815
    :cond_41
    :goto_41
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 862
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 882
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 3

    .line 7326
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result p1

    return p1
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 3

    .line 7269
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->trackRecorder(Landroid/os/IBinder;)I

    move-result p1

    return p1
.end method

.method public unloadSoundEffects()V
    .registers 8

    .line 3593
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3594
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3

    .line 6019
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 6020
    return-void
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2

    .line 7031
    if-nez p1, :cond_3

    .line 7032
    return-void

    .line 7034
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 7035
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2

    .line 7023
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 7024
    return-void
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 5

    .line 7703
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 7704
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 7705
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 7706
    if-nez v1, :cond_3c

    .line 7707
    const-string p1, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7708
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7707
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7709
    monitor-exit v0

    return-void

    .line 7711
    :cond_3c
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 7713
    monitor-exit v0

    .line 7714
    return-void

    .line 7713
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 3

    .line 7315
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 7316
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 3

    .line 7252
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 7253
    return-void
.end method

.method updateAbsVolumeMultiModeDevices(II)V
    .registers 7

    .line 2290
    if-ne p1, p2, :cond_3

    .line 2291
    return-void

    .line 2293
    :cond_3
    if-eqz p2, :cond_10

    const/4 p1, 0x1

    if-eq p2, p1, :cond_f

    const/4 p1, 0x2

    if-eq p2, p1, :cond_10

    const/4 p1, 0x3

    if-eq p2, p1, :cond_10

    .line 2305
    return-void

    .line 2300
    :cond_f
    return-void

    .line 2297
    :cond_10
    nop

    .line 2308
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result p1

    .line 2310
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 2311
    iget v1, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    and-int v2, v0, v1

    if-nez v2, :cond_20

    .line 2312
    return-void

    .line 2316
    :cond_20
    and-int/2addr v0, v1

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_3b

    .line 2317
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 2318
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p2, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2320
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p2, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2322
    :cond_3b
    return-void
.end method
