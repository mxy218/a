.class public Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"

.field private static final isHdmiCecNeverClaimPlaybackLogicAddr:Z

.field private static final mTerminologyToBibliographicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field protected final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private final mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIoLooper:Landroid/os/Looper;

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalAddress:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    .line 110
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "sqi"

    const-string v2, "alb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "hye"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "eus"

    const-string v2, "baq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "mya"

    const-string v2, "bur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "ces"

    const-string v2, "cze"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "nld"

    const-string v2, "dut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "kat"

    const-string v2, "geo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "deu"

    const-string v2, "ger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "ell"

    const-string v2, "gre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "fra"

    const-string v2, "fre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "isl"

    const-string v2, "ice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "mkd"

    const-string v2, "mac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "mri"

    const-string v2, "mao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "msa"

    const-string v2, "may"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "fas"

    const-string/jumbo v2, "per"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "ron"

    const-string/jumbo v2, "rum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string/jumbo v1, "slk"

    const-string/jumbo v2, "slo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "bod"

    const-string/jumbo v2, "tib"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    const-string v1, "cym"

    const-string/jumbo v2, "wel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    nop

    .line 155
    const-string/jumbo v0, "ro.hdmi.property_hdmi_cec_never_claim_playback_logical_address"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiControlService;->isHdmiCecNeverClaimPlaybackLogicAddr:Z

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance p1, Ljava/util/Locale;

    const-string/jumbo v0, "zh"

    const-string v1, "HK"

    invoke-direct {p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 104
    new-instance p1, Ljava/util/Locale;

    const-string v1, "MO"

    invoke-direct {p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 147
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 151
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 246
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hdmi Control Io Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 319
    nop

    .line 320
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 322
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 325
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 356
    const v2, 0xffff

    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPhysicalAddress:I

    .line 362
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 366
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 426
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    .line 428
    new-instance p1, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {p1}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 432
    const-string/jumbo p1, "ro.hdmi.device_type"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    .line 433
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object p0
.end method

.method static synthetic access$1200(Z)I
    .registers 1

    .line 101
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPhysicalAddress:I

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getRemoteControlSourceAddress()I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/Map;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->mTerminologyToBibliographicMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    return-void
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 4

    .line 2182
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 2184
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1b

    .line 2188
    nop

    .line 2189
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2190
    :try_start_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    monitor-exit p1

    .line 2192
    return-void

    .line 2191
    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    .line 2185
    :catch_1b
    move-exception p1

    .line 2186
    const-string p1, "HdmiControlService"

    const-string v0, "Listener already died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return-void
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 4

    .line 2636
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 2639
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1b

    .line 2643
    nop

    .line 2645
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2646
    :try_start_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    monitor-exit p1

    .line 2648
    return-void

    .line 2647
    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    .line 2640
    :catch_1b
    move-exception p1

    .line 2641
    const-string p1, "HdmiControlService"

    const-string v0, "Listener already died."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    return-void
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 5

    .line 2139
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 2141
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_23

    .line 2145
    nop

    .line 2146
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2147
    :try_start_11
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_20

    .line 2152
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 2167
    return-void

    .line 2148
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1

    .line 2142
    :catch_23
    move-exception p1

    .line 2143
    const-string p1, "HdmiControlService"

    const-string v0, "Listener already died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    return-void
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 4

    .line 2207
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 2210
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1b

    .line 2214
    nop

    .line 2215
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2216
    :try_start_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    monitor-exit p1

    .line 2218
    return-void

    .line 2217
    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    .line 2211
    :catch_1b
    move-exception p1

    .line 2212
    const-string p1, "HdmiControlService"

    const-string v0, "Listener already died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    return-void
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4

    .line 2587
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 2589
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1b

    .line 2593
    nop

    .line 2594
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2595
    :try_start_11
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    monitor-exit p1

    .line 2597
    return-void

    .line 2596
    :catchall_18
    move-exception p2

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p2

    .line 2590
    :catch_1b
    move-exception p1

    .line 2591
    const-string p1, "HdmiControlService"

    const-string p2, "Listener already died"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .registers 5

    .line 2353
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 2354
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2355
    :try_start_8
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 2356
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$5300(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    .line 2357
    goto :goto_e

    .line 2358
    :cond_22
    monitor-exit p1

    .line 2359
    return-void

    .line 2358
    :catchall_24
    move-exception p2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p2
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .line 1001
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 1004
    return-void

    .line 1002
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canGoToStandby()Z
    .registers 3

    .line 2524
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2525
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v0, 0x0

    return v0

    .line 2526
    :cond_1e
    goto :goto_a

    .line 2527
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private checkPollStrategy(I)I
    .registers 5

    .line 1140
    and-int/lit8 v0, p1, 0x3

    .line 1141
    if-eqz v0, :cond_23

    .line 1144
    const/high16 v1, 0x30000

    and-int/2addr v1, p1

    .line 1145
    if-eqz v1, :cond_c

    .line 1148
    or-int p1, v0, v1

    return p1

    .line 1146
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid iteration strategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid poll strategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2559
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2560
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_8

    .line 2561
    return-void

    .line 2563
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 2564
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    .line 2565
    return-void
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 14

    .line 1195
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "device_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1196
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v5

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v7

    move-object v2, v0

    move v3, p1

    move v6, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 1196
    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5

    .line 2548
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_1e

    .line 2549
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2550
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2551
    goto :goto_c

    .line 2554
    :cond_1e
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    .line 2555
    return-void
.end method

.method private disableHdmiControlService()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2753
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2768
    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1069
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1070
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1071
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    if-eq v1, v2, :cond_29

    .line 1073
    const/4 p1, 0x1

    return p1

    .line 1075
    :cond_29
    goto :goto_d

    .line 1077
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_47

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled cec command:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :cond_47
    return v1
.end method

.method private enableHdmiControlService()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2744
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2745
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2746
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2748
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2749
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 4

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.HDMI_CEC"

    const-string v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method protected static getIntList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 439
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2a} :catch_2b

    .line 445
    goto :goto_42

    .line 443
    :catch_2b
    move-exception v2

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parseInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiControlService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_42
    goto :goto_13

    .line 447
    :cond_43
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object v0
.end method

.method private getRemoteControlSourceAddress()I
    .registers 2

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0

    .line 2092
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0

    .line 2095
    :cond_26
    const/16 v0, 0xf

    return v0
.end method

.method private getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 2

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    return-object v0

    .line 2104
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    return-object v0

    .line 2107
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private initializeCec(I)V
    .registers 5

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 689
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 690
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    .line 692
    return-void
.end method

.method private initializeLocalDevices(I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 696
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 700
    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    sget-boolean v3, Lcom/android/server/hdmi/HdmiControlService;->isHdmiCecNeverClaimPlaybackLogicAddr:Z

    if-eqz v3, :cond_26

    .line 702
    goto :goto_e

    .line 704
    :cond_26
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 705
    if-nez v3, :cond_32

    .line 706
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 708
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 709
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    goto :goto_e

    .line 713
    :cond_39
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    .line 714
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 715
    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 4

    .line 2337
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2340
    goto :goto_1b

    .line 2338
    :catch_4
    move-exception p1

    .line 2339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invoking callback failed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :goto_1b
    return-void
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 5

    .line 2364
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2367
    goto :goto_1f

    .line 2365
    :catch_4
    move-exception p1

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report hotplug event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HdmiControlService"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2368
    :goto_1f
    return-void
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .registers 4

    .line 2346
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2349
    goto :goto_1b

    .line 2347
    :catch_4
    move-exception p1

    .line 2348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invoking callback failed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :goto_1b
    return-void
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .line 769
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 770
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 771
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 772
    invoke-virtual {v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    .line 773
    goto :goto_7

    .line 774
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 775
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 777
    :cond_2e
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .registers 7

    .line 544
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 545
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 547
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 549
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    .line 550
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 552
    :cond_1e
    nop

    .line 553
    const/4 v0, -0x1

    if-eqz p1, :cond_2f

    if-eq p1, v3, :cond_2d

    if-eq p1, v2, :cond_2b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2b

    move v1, v0

    goto :goto_31

    .line 562
    :cond_2b
    move v1, v2

    goto :goto_31

    .line 555
    :cond_2d
    nop

    .line 556
    goto :goto_31

    .line 558
    :cond_2f
    nop

    .line 559
    move v1, v3

    .line 565
    :goto_31
    if-eq v1, v0, :cond_36

    .line 566
    invoke-virtual {p0, v3, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 568
    :cond_36
    return-void
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2532
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2533
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 2537
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 2539
    :cond_17
    return-void
.end method

.method private onStandbyCompleted(I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2569
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2570
    const-string v0, "HdmiControlService"

    const-string/jumbo v1, "onStandbyCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 2573
    return-void

    .line 2575
    :cond_11
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2576
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2577
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v2, v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    .line 2578
    goto :goto_1e

    .line 2579
    :cond_30
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2580
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-nez v0, :cond_45

    .line 2581
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2582
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2584
    :cond_45
    return-void
.end method

.method private onWakeUp()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2474
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2475
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2476
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_18

    .line 2477
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_1f

    .line 2478
    nop

    .line 2479
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz v1, :cond_14

    .line 2480
    const/4 v0, 0x3

    .line 2482
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2483
    goto :goto_1f

    .line 2485
    :cond_18
    const-string v0, "HdmiControlService"

    const-string v1, "Device does not support HDMI-CEC."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_1f
    :goto_1f
    return-void
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2112
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 2114
    if-nez v0, :cond_d

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    .line 2118
    :cond_d
    if-nez v0, :cond_1b

    .line 2119
    const-string v0, "HdmiControlService"

    const-string v1, "Local source device not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 2121
    return-void

    .line 2123
    :cond_1b
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2124
    return-void
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2128
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 2130
    if-nez v0, :cond_15

    .line 2131
    const-string v0, "HdmiControlService"

    const-string v1, "Local playback device not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 2133
    return-void

    .line 2135
    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2136
    return-void
.end method

.method private registerContentObserver()V
    .registers 10

    .line 571
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 572
    const-string v1, "hdmi_control_enabled"

    const-string v2, "hdmi_control_auto_wakeup_enabled"

    const-string v3, "hdmi_control_auto_device_off_enabled"

    const-string v4, "hdmi_system_audio_control_enabled"

    const-string v5, "mhl_input_switching_enabled"

    const-string v6, "mhl_power_charge_enabled"

    const-string v7, "hdmi_cec_switch_enabled"

    const-string v8, "device_name"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 582
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    if-ge v4, v2, :cond_30

    aget-object v5, v1, v4

    .line 583
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v3, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 586
    :cond_30
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 7

    .line 2170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 2172
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$5300(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_31

    .line 2173
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2174
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2175
    goto :goto_32

    .line 2177
    :cond_31
    goto :goto_9

    .line 2178
    :cond_32
    :goto_32
    monitor-exit v0

    .line 2179
    return-void

    .line 2178
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 6

    .line 2221
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 2224
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_2d

    .line 2225
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2226
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2227
    goto :goto_2e

    .line 2229
    :cond_2d
    goto :goto_9

    .line 2230
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 2231
    return-void

    .line 2230
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .registers 14

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1205
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 1206
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1207
    goto :goto_8

    .line 1209
    :cond_23
    new-instance v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1210
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v6

    .line 1211
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v7

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v8

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v9

    .line 1212
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v11

    move-object v4, v3

    move-object v10, p1

    invoke-direct/range {v4 .. v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 1209
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1213
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1215
    goto :goto_8

    .line 1216
    :cond_50
    return-void
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 5

    .line 2275
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2276
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 2278
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15
    .catchall {:try_start_a .. :try_end_14} :catchall_1f

    .line 2281
    goto :goto_1d

    .line 2279
    :catch_15
    move-exception p1

    .line 2280
    :try_start_16
    const-string v1, "HdmiControlService"

    const-string v2, "Listener already died."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    :goto_1d
    monitor-exit v0

    .line 2283
    return-void

    .line 2282
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 5

    .line 2251
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2252
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 2254
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_17
    .catchall {:try_start_a .. :try_end_14} :catchall_21

    .line 2258
    nop

    .line 2259
    :try_start_15
    monitor-exit v0

    .line 2260
    return-void

    .line 2255
    :catch_17
    move-exception p1

    .line 2256
    const-string p1, "HdmiControlService"

    const-string v1, "Listener already died"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    monitor-exit v0

    return-void

    .line 2259
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private static toInt(Z)I
    .registers 1

    .line 655
    return p0
.end method

.method private updateSafeMhlInput()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1282
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    .line 1285
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 1286
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 1287
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    .line 1288
    if-eqz v4, :cond_32

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1295
    :cond_35
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1296
    :try_start_38
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 1297
    monitor-exit v1

    .line 1298
    return-void

    .line 1297
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v0
.end method


# virtual methods
.method protected allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .line 721
    move-object v7, p0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 722
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 723
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 724
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 725
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 731
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 733
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 734
    iget-object v11, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v12

    .line 735
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v13

    new-instance v14, Lcom/android/server/hdmi/HdmiControlService$1;

    move-object v0, v14

    move-object v1, p0

    move-object v3, v8

    move-object/from16 v4, p1

    move-object v5, v9

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 734
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    .line 764
    goto :goto_20

    .line 765
    :cond_48
    return-void
.end method

.method announceSystemAudioModeChange(Z)V
    .registers 5

    .line 1186
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1189
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V

    .line 1190
    goto :goto_9

    .line 1191
    :cond_1d
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .registers 3

    .line 2401
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    return-object v0
.end method

.method changeInputForMhl(IZ)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2871
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2872
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 2873
    :cond_a
    const/4 v0, -0x1

    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result p2

    goto :goto_17

    :cond_16
    move p2, v0

    .line 2874
    :goto_17
    if-eq p1, v0, :cond_25

    .line 2875
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$7;

    invoke-direct {v1, p0, p2}, Lcom/android/server/hdmi/HdmiControlService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2887
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 2893
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p2

    .line 2894
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    goto :goto_43

    .line 2895
    :cond_39
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2896
    :goto_43
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 2897
    return-void
.end method

.method displayOsd(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2915
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2917
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2918
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.HDMI_CEC"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2920
    return-void
.end method

.method displayOsd(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2924
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2926
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2927
    const-string p1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2928
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.HDMI_CEC"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2930
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .registers 4

    .line 1064
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->enableAudioReturnChannel(IZ)V

    .line 1065
    return-void
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 3

    .line 2781
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2782
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    monitor-exit v0

    return-object v1

    .line 2783
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getAllLocalDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 1152
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1153
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 2406
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method getCecVersion()I
    .registers 2

    .line 972
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v0

    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 954
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 955
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 960
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 961
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object p1

    .line 962
    if-eqz p1, :cond_10

    .line 963
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1

    .line 965
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method getIoLooper()Landroid/os/Looper;
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2543
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2544
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputForMhl()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2859
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2860
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return v0
.end method

.method getPhysicalAddress()I
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 4

    .line 856
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object p1
.end method

.method getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2417
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2418
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .registers 2

    .line 1157
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .registers 2

    .line 523
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method getVendorId()I
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result v0

    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1045
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1046
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 1047
    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 1050
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 1051
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1053
    :cond_12
    return v1

    .line 1056
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1057
    return v1

    .line 1060
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method handleMhlBusModeChanged(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1246
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_f

    .line 1249
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    goto :goto_32

    .line 1251
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", busmode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_32
    return-void
.end method

.method handleMhlBusOvercurrent(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1258
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_f

    .line 1261
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    goto :goto_2a

    .line 1263
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_2a
    return-void
.end method

.method handleMhlDeviceStatusChanged(III)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1269
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1270
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_f

    .line 1273
    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    goto :goto_3a

    .line 1275
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No mhl device exists for device status event[portId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adopterId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", deviceId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :goto_3a
    return-void
.end method

.method handleMhlHotplugEvent(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1220
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1222
    const-string v0, "HdmiControlService"

    if-eqz p2, :cond_3c

    .line 1223
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1224
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    .line 1225
    if-eqz v2, :cond_30

    .line 1226
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old device of port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1230
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    .line 1231
    goto :goto_67

    .line 1232
    :cond_3c
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    .line 1233
    if-eqz v1, :cond_53

    .line 1234
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1235
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1236
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_67

    .line 1238
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device to remove:[portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_67
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 1242
    return-void
.end method

.method protected initPortInfo()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 788
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 789
    nop

    .line 791
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPhysicalAddress:I

    .line 793
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_ee

    .line 797
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_17

    .line 798
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    goto :goto_18

    .line 797
    :cond_17
    const/4 v0, 0x0

    .line 800
    :goto_18
    if-nez v0, :cond_1b

    .line 801
    return-void

    .line 804
    :cond_1b
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 805
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 806
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 807
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_2d
    if-ge v6, v4, :cond_5a

    aget-object v7, v0, v6

    .line 808
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v8

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    new-instance v9, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v10

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v7

    invoke-direct {v9, v10, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 812
    :cond_5a
    new-instance v4, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    invoke-direct {v4, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 813
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 814
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v1, v3}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 816
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v1, :cond_74

    .line 817
    return-void

    .line 819
    :cond_74
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v1

    .line 820
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, v1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 821
    array-length v3, v1

    move v4, v5

    :goto_80
    if-ge v4, v3, :cond_98

    aget-object v6, v1, v4

    .line 822
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 823
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 829
    :cond_98
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 830
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 831
    return-void

    .line 833
    :cond_a9
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    array-length v3, v0

    :goto_b0
    if-ge v5, v3, :cond_e7

    aget-object v4, v0, v5

    .line 835
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 836
    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v9

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v10

    .line 837
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    .line 836
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 839
    :cond_e1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    :goto_e4
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 842
    :cond_e7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 843
    return-void

    .line 793
    :catchall_ee
    move-exception v1

    :try_start_ef
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw v1
.end method

.method invokeClearTimerRecordingResult(II)V
    .registers 5

    .line 2323
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2324
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_19

    .line 2326
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5700(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 2330
    goto :goto_19

    .line 2328
    :catch_11
    move-exception p1

    .line 2329
    :try_start_12
    const-string p2, "HdmiControlService"

    const-string v1, "Failed to call onClearTimerRecordingResult."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    :cond_19
    :goto_19
    monitor-exit v0

    .line 2333
    return-void

    .line 2332
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 9

    .line 2195
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_37

    .line 2198
    :try_start_15
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->access$5400(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    .line 2201
    goto :goto_34

    .line 2199
    :catch_1d
    move-exception v2

    .line 2200
    :try_start_1e
    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to report device event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :goto_34
    goto :goto_9

    .line 2203
    :cond_35
    monitor-exit v0

    .line 2204
    return-void

    .line 2203
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_37

    throw p1
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 6

    .line 2263
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eqz v1, :cond_28

    .line 2266
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->access$5600(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_2a

    .line 2269
    goto :goto_28

    .line 2267
    :catch_11
    move-exception p1

    .line 2268
    :try_start_12
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_28
    :goto_28
    monitor-exit v0

    .line 2272
    return-void

    .line 2271
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .registers 10

    .line 2651
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    .line 2654
    :try_start_15
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->access$6100(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    .line 2657
    goto :goto_25

    .line 2655
    :catch_1d
    move-exception v2

    .line 2656
    :try_start_1e
    const-string v3, "HdmiControlService"

    const-string v4, "Failed to notify MHL vendor command"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2658
    :goto_25
    goto :goto_9

    .line 2659
    :cond_26
    monitor-exit v0

    .line 2660
    return-void

    .line 2659
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw p1
.end method

.method invokeOneTouchRecordResult(II)V
    .registers 5

    .line 2299
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_19

    .line 2302
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5700(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 2305
    goto :goto_19

    .line 2303
    :catch_11
    move-exception p1

    .line 2304
    :try_start_12
    const-string p2, "HdmiControlService"

    const-string v1, "Failed to call onOneTouchRecordResult."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2307
    :cond_19
    :goto_19
    monitor-exit v0

    .line 2308
    return-void

    .line 2307
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method invokeRecordRequestListener(I)[B
    .registers 5

    .line 2286
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-eqz v1, :cond_1b

    .line 2289
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5700(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13
    .catchall {:try_start_7 .. :try_end_11} :catchall_1f

    :try_start_11
    monitor-exit v0

    return-object p1

    .line 2290
    :catch_13
    move-exception p1

    .line 2291
    const-string v1, "HdmiControlService"

    const-string v2, "Failed to start record."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2294
    :cond_1b
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    monitor-exit v0

    return-object p1

    .line 2295
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method invokeTimerRecordingResult(II)V
    .registers 5

    .line 2311
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_19

    .line 2314
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5700(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 2317
    goto :goto_19

    .line 2315
    :catch_11
    move-exception p1

    .line 2316
    :try_start_12
    const-string p2, "HdmiControlService"

    const-string v1, "Failed to call onTimerRecordingResult."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2319
    :cond_19
    :goto_19
    monitor-exit v0

    .line 2320
    return-void

    .line 2319
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .registers 8

    .line 2620
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2622
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2624
    :cond_e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_34

    .line 2626
    :try_start_20
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$6000(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    .line 2629
    goto :goto_30

    .line 2627
    :catch_28
    move-exception v2

    .line 2628
    :try_start_29
    const-string v3, "HdmiControlService"

    const-string v4, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2630
    :goto_30
    goto :goto_14

    .line 2631
    :cond_31
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2632
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .registers 11

    .line 2601
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2602
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2603
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2605
    :cond_e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 2606
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5900(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I

    move-result v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3b

    if-eq v3, p1, :cond_27

    .line 2607
    goto :goto_14

    .line 2610
    :cond_27
    :try_start_27
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$6000(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catchall {:try_start_27 .. :try_end_2e} :catchall_3b

    .line 2613
    goto :goto_37

    .line 2611
    :catch_2f
    move-exception v2

    .line 2612
    :try_start_30
    const-string v3, "HdmiControlService"

    const-string v4, "Failed to notify vendor command reception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2614
    :goto_37
    goto :goto_14

    .line 2615
    :cond_38
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2616
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method isAddressAllocated()Z
    .registers 2

    .line 780
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return v0
.end method

.method isAudioSystemDevice()Z
    .registers 3

    .line 2379
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 988
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 989
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result p1

    return p1
.end method

.method isConnectedToArcPort(I)Z
    .registers 3

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    .line 980
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 981
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result p1

    return p1

    .line 983
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method isControlEnabled()Z
    .registers 3

    .line 2410
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2411
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    monitor-exit v0

    return v1

    .line 2412
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isMhlInputChangeEnabled()Z
    .registers 3

    .line 2908
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2909
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    monitor-exit v0

    return v1

    .line 2910
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isPlaybackDevice()Z
    .registers 3

    .line 2383
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPowerOnOrTransient()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2423
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2424
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isPowerStandby()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2437
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2438
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method isPowerStandbyOrTransient()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2430
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2431
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method isProhibitMode()Z
    .registers 3

    .line 2687
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2688
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    monitor-exit v0

    return v1

    .line 2689
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isStandbyMessageReceived()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2469
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    return v0
.end method

.method isSwitchDevice()Z
    .registers 3

    .line 2387
    const-string/jumbo v0, "ro.hdmi.property_is_device_hdmi_cec_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSystemAudioActivated()Z
    .registers 3

    .line 2699
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2700
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    monitor-exit v0

    return v1

    .line 2701
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isTvDevice()Z
    .registers 3

    .line 2375
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTvDeviceEnabled()Z
    .registers 2

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isValidPortId(I)Z
    .registers 2

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isWakeUpMessageReceived()Z
    .registers 2

    .line 2464
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1039
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1040
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1041
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 515
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_22

    .line 516
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 518
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 520
    :cond_22
    return-void
.end method

.method onHotplug(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1091
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1093
    if-eqz p2, :cond_60

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSwitchDevice()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    .line 1097
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initPortInfo for switch device when onHotplug from tx."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1101
    if-ne v2, v3, :cond_4a

    sget-boolean v3, Lcom/android/server/hdmi/HdmiControlService;->isHdmiCecNeverClaimPlaybackLogicAddr:Z

    if-eqz v3, :cond_4a

    .line 1103
    goto :goto_32

    .line 1105
    :cond_4a
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1106
    if-nez v3, :cond_59

    .line 1107
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1108
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 1110
    :cond_59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    goto :goto_32

    .line 1112
    :cond_5d
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 1115
    :cond_60
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1116
    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    .line 1117
    goto :goto_6a

    .line 1118
    :cond_7a
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 1119
    return-void
.end method

.method protected onStandby(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2493
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2494
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2495
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2498
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isStandbyMessageReceived()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_34

    .line 2501
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2503
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    .line 2504
    goto :goto_21

    .line 2505
    :cond_33
    return-void

    .line 2508
    :cond_34
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2521
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 452
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    if-nez v0, :cond_11

    .line 453
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 454
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 456
    :cond_11
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 458
    const/4 v2, 0x1

    const-string v3, "hdmi_control_enabled"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    .line 459
    const-string v3, "mhl_input_switching_enabled"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 461
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v3, :cond_32

    .line 462
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 464
    :cond_32
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const-string v4, "HdmiControlService"

    if-eqz v3, :cond_aa

    .line 465
    iget-boolean v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v5, :cond_40

    .line 466
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    goto :goto_43

    .line 468
    :cond_40
    invoke-virtual {v3, v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 474
    :goto_43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v0, :cond_4d

    .line 475
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 477
    :cond_4d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 478
    const-string v0, "Device does not support MHL-control."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 482
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    .line 483
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    if-nez v0, :cond_6e

    .line 484
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 486
    :cond_6e
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    const-string v1, "hdmi_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_a2

    .line 490
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 491
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .line 500
    :cond_a2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 501
    return-void

    .line 471
    :cond_aa
    const-string v0, "Device does not support HDMI-CEC."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method pathToPortId(I)I
    .registers 6

    .line 886
    nop

    .line 887
    nop

    .line 889
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_5
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPhysicalAddress:I

    .line 891
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1f

    .line 892
    const v0, 0xf000

    move v2, v0

    move v3, v2

    move v0, v1

    .line 894
    :goto_e
    if-eqz v0, :cond_16

    .line 895
    and-int v0, v1, v3

    .line 896
    or-int/2addr v2, v3

    .line 897
    shr-int/lit8 v3, v3, 0x4

    goto :goto_e

    .line 900
    :cond_16
    and-int/2addr p1, v2

    .line 901
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result p1

    return p1

    .line 891
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method protected playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 3

    .line 2396
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 2397
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 2396
    return-object v0
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1134
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    .line 1137
    return-void
.end method

.method portIdToPath(I)I
    .registers 4

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    .line 865
    if-nez v0, :cond_20

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find the port info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiControlService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const p1, 0xffff

    return p1

    .line 869
    :cond_20
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result p1

    return p1
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p2

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    return p2
.end method

.method readBooleanSystemProperty(Ljava/lang/String;Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 675
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 680
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 682
    return-object p2

    .line 684
    :cond_13
    return-object p1
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 4

    .line 527
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 528
    :cond_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 529
    return-void
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 993
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 994
    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 3

    .line 997
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1027
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 1029
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1014
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1015
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-nez v0, :cond_11

    .line 1016
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_2e

    .line 1018
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    if-eqz p2, :cond_2e

    .line 1020
    const/4 p1, 0x3

    invoke-interface {p2, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 1023
    :cond_2e
    :goto_2e
    return-void
.end method

.method setActivePortId(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2772
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2773
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 2777
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 2778
    return-void
.end method

.method setActiveSource(II)V
    .registers 5

    .line 2787
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2788
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 2789
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 2790
    monitor-exit v0

    .line 2791
    return-void

    .line 2790
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected setAndBroadcastActiveSource(III)V
    .registers 6

    .line 2801
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_16

    .line 2802
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v1

    .line 2803
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setIsActiveSource(Z)V

    .line 2804
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    .line 2805
    invoke-virtual {v1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    .line 2806
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 2809
    :cond_16
    const/4 v1, 0x5

    if-ne p2, v1, :cond_36

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p2

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 2812
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setIsActiveSource(Z)V

    goto :goto_36

    .line 2814
    :cond_28
    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setIsActiveSource(Z)V

    .line 2815
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->wakeUpIfActiveSource()V

    .line 2816
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->maySendActiveSource(I)V

    .line 2817
    iget p2, p2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 2820
    :cond_36
    :goto_36
    return-void
.end method

.method protected setAndBroadcastActiveSourceFromOneDeviceType(II)V
    .registers 6

    .line 2831
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 2832
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    .line 2833
    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 2834
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setIsActiveSource(Z)V

    .line 2835
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    .line 2836
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    .line 2837
    if-eqz v1, :cond_1a

    .line 2838
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setIsActiveSource(Z)V

    .line 2840
    :cond_1a
    iget p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    goto :goto_30

    .line 2842
    :cond_20
    if-eqz v1, :cond_30

    .line 2843
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setIsActiveSource(Z)V

    .line 2844
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->wakeUpIfActiveSource()V

    .line 2845
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->maySendActiveSource(I)V

    .line 2846
    iget p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mAddress:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(II)V

    .line 2849
    :cond_30
    :goto_30
    return-void
.end method

.method setAudioStatus(ZI)V
    .registers 6

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 1164
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1165
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 1166
    if-eqz p1, :cond_23

    .line 1167
    if-nez v2, :cond_4c

    .line 1168
    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_4c

    .line 1171
    :cond_23
    if-eqz v2, :cond_29

    .line 1172
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1176
    :cond_29
    nop

    .line 1177
    if-ltz p2, :cond_4c

    const/16 p1, 0x64

    if-gt p2, p1, :cond_4c

    .line 1178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volume: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "HdmiControlService"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/16 p1, 0x101

    .line 1180
    invoke-virtual {v0, v1, p2, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1183
    :cond_4c
    :goto_4c
    return-void

    .line 1162
    :cond_4d
    :goto_4d
    return-void
.end method

.method setCecController(Lcom/android/server/hdmi/HdmiCecController;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 506
    return-void
.end method

.method setCecOption(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2712
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2713
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2714
    return-void
.end method

.method setControlEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2718
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2720
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2721
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    .line 2722
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1d

    .line 2724
    if-eqz p1, :cond_f

    .line 2725
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    .line 2726
    return-void

    .line 2729
    :cond_f
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2733
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 2739
    return-void

    .line 2722
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method setHdmiMhlController(Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 511
    return-void
.end method

.method setIoLooper(Landroid/os/Looper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 920
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 921
    return-void
.end method

.method setLastInputForMhl(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2853
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2854
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 2855
    return-void
.end method

.method setMessageValidator(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 925
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 926
    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .registers 5

    .line 2900
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2902
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2903
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 2904
    monitor-exit v0

    .line 2905
    return-void

    .line 2904
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw p1
.end method

.method setProhibitMode(Z)V
    .registers 3

    .line 2693
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2694
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 2695
    monitor-exit v0

    .line 2696
    return-void

    .line 2695
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setStandbyMode(Z)V
    .registers 6

    .line 2663
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 2665
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2667
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->sendStandby(I)V

    goto :goto_47

    .line 2670
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p1, :cond_47

    .line 2671
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    const-string v3, "android.server.hdmi:WAKE"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2673
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 2674
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2684
    :cond_47
    :goto_47
    return-void
.end method

.method setSystemAudioActivated(Z)V
    .registers 3

    .line 2705
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2706
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 2707
    monitor-exit v0

    .line 2708
    return-void

    .line 2707
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method standby()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2453
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2454
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2455
    return-void

    .line 2457
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2458
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2461
    return-void
.end method

.method public tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 3

    .line 2371
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 533
    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 534
    return-void
.end method

.method wakeUp()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 2443
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 2445
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x8

    const-string v4, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2449
    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .registers 4

    .line 665
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 666
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p2

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    return-void
.end method

.method writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 670
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method
