.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE:Ljava/lang/String;

.field private static final DBG:Z

.field private static final DBG_LOC:Z

.field private static final ENABLE_LOG:Z

.field static final ENFORCE_COARSE_LOCATION_PERMISSION_MASK:I = 0x0

.field static final ENFORCE_FINE_LOCATION_PERMISSION_MASK:I = 0x410

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x100000c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z


# instance fields
.field private mActiveDataSubId:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:[I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallAttributes:[Landroid/telephony/CallAttributes;

.field private mCallDisconnectCause:[I

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallNetworkType:[I

.field private mCallPreciseDisconnectCause:[I

.field private mCallQuality:[Landroid/telephony/CallQuality;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivationState:[I

.field private mDataActivity:[I

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionState:[I

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mEmergencyNumberList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundCallState:[I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field private mHasNotifySubscriptionInfoChangedOccurred:Z

.field private mImsReasonInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenLog:Landroid/util/LocalLog;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:[I

.field private mPhoneCapability:Landroid/telephony/PhoneCapability;

.field private mPhysicalChannelConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

.field private mRadioPowerState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:[I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSrvccState:[I

.field private mUserMobileDataState:[Z

.field private mVoiceActivationState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 108
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "prd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TelephonyRegistry;->BUILD_TYPE:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.radio.enable_qcril_log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    sput-boolean v1, Lcom/android/server/TelephonyRegistry;->ENABLE_LOG:Z

    .line 110
    sget-object v1, Lcom/android/server/TelephonyRegistry;->BUILD_TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->ENABLE_LOG:Z

    if-eqz v1, :cond_2c

    :cond_2b
    move v0, v2

    :cond_2c
    sput-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    .line 111
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    sput-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    .line 112
    sput-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 236
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 238
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 250
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 254
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 256
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 258
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 260
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 263
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 265
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 288
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 345
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 386
    .local v3, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 387
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 390
    .local v4, "numPhones":I
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v5, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TelephonyRegistry: ctor numPhones="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 391
    :cond_73
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 392
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 393
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 394
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 396
    new-array v5, v4, [Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    .line 398
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 399
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 400
    new-array v5, v4, [Landroid/telephony/ServiceState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 401
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 402
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 403
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 404
    new-array v5, v4, [Landroid/telephony/SignalStrength;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 405
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 406
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 407
    new-array v5, v4, [Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 408
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 409
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    .line 410
    new-array v5, v4, [Landroid/telephony/PreciseCallState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 411
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 412
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 413
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 414
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 415
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 416
    new-array v5, v4, [Landroid/telephony/CallQuality;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 417
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 418
    new-array v5, v4, [Landroid/telephony/CallAttributes;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 419
    new-array v5, v4, [Landroid/telephony/PreciseDataConnectionState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    .line 420
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 422
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 423
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 424
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_fa
    if-ge v5, v4, :cond_1ad

    .line 425
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v6, v5

    .line 426
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v6, v5

    .line 427
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v2, v6, v5

    .line 428
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v6, v5

    .line 429
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v6, v5

    .line 430
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v5

    .line 431
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v7, v6, v5

    .line 432
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v7, Landroid/telephony/SignalStrength;

    invoke-direct {v7}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v7, v6, v5

    .line 433
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v6, v5

    .line 434
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v6, v5

    .line 435
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v6, v5

    .line 436
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    aput-object v7, v6, v5

    .line 437
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v6, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 439
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v2, v6, v5

    .line 440
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 441
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    const/4 v7, 0x1

    aput v7, v6, v5

    .line 442
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v2, v6, v5

    .line 443
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v2, v6, v5

    .line 444
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    new-instance v7, Landroid/telephony/CallQuality;

    invoke-direct {v7}, Landroid/telephony/CallQuality;-><init>()V

    aput-object v7, v6, v5

    .line 445
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v7, Landroid/telephony/CallAttributes;

    new-instance v8, Landroid/telephony/PreciseCallState;

    invoke-direct {v8}, Landroid/telephony/PreciseCallState;-><init>()V

    new-instance v9, Landroid/telephony/CallQuality;

    invoke-direct {v9}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {v7, v8, v0, v9}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v7, v6, v5

    .line 447
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v6, v5

    .line 448
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v7, Landroid/telephony/PreciseCallState;

    invoke-direct {v7}, Landroid/telephony/PreciseCallState;-><init>()V

    aput-object v7, v6, v5

    .line 449
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v6, v5

    .line 450
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v6, v5

    .line 451
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v6, v5

    .line 452
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v7, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v7}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    aput-object v7, v6, v5

    .line 454
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    aput-object v7, v6, v5

    .line 424
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_fa

    .line 460
    .end local v5  # "i":I
    :cond_1ad
    if-eqz v3, :cond_1bc

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b0
    if-ge v0, v4, :cond_1bc

    .line 462
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b0

    .line 466
    .end local v0  # "i":I
    :cond_1bc
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 467
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 102
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"  # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"  # I

    .line 102
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"  # I

    .line 102
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"  # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/TelephonyRegistry;

    .line 102
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 102
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    return v0
.end method

.method private add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;
    .registers 9
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 920
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 921
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 922
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1d

    .line 923
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 924
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v4, :cond_1a

    .line 926
    monitor-exit v0

    return-object v3

    .line 922
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 929
    .end local v2  # "i":I
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1d
    new-instance v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 930
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 931
    new-instance v4, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v4, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_66

    .line 934
    :try_start_2c
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_43
    .catchall {:try_start_2c .. :try_end_32} :catchall_66

    .line 939
    nop

    .line 941
    :try_start_33
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v3, :cond_41

    const-string v3, "add new record"

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 943
    .end local v1  # "N":I
    :cond_41
    monitor-exit v0

    .line 945
    return-object v2

    .line 935
    .restart local v1  # "N":I
    :catch_43
    move-exception v4

    .line 936
    .local v4, "e":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v5, :cond_64

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LinkToDeath remote exception sending to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 938
    :cond_64
    monitor-exit v0

    return-object v3

    .line 943
    .end local v1  # "N":I
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "e":Landroid/os/RemoteException;
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .registers 13
    .param p1, "state"  # I
    .param p2, "incomingNumber"  # Ljava/lang/String;
    .param p3, "phoneId"  # I
    .param p4, "subId"  # I

    .line 2121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2123
    .local v0, "ident":J
    const/16 v2, 0x5f

    if-nez p1, :cond_12

    .line 2124
    :try_start_8
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    .line 2125
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I

    goto :goto_22

    .line 2128
    :cond_12
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    .line 2129
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_21
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_22

    .line 2135
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2132
    :catch_21
    move-exception v2

    .line 2135
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2136
    nop

    .line 2138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v2, "intent":Landroid/content/Intent;
    nop

    .line 2140
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2144
    const/4 v3, -0x1

    if-eq p4, v3, :cond_4f

    .line 2145
    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2146
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2147
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2150
    :cond_4f
    if-eq p3, v3, :cond_57

    .line 2151
    const-string/jumbo v3, "slot"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2155
    :cond_57
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2158
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2159
    .local v3, "intentWithPhoneNumber":Landroid/content/Intent;
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2165
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v6, 0x33

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 2168
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_CALL_LOG"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 2171
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "apnType"  # Ljava/lang/String;
    .param p2, "subId"  # I

    .line 2205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2206
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2208
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2209
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .registers 13
    .param p1, "state"  # I
    .param p2, "isDataAllowed"  # Z
    .param p3, "apn"  # Ljava/lang/String;
    .param p4, "apnType"  # Ljava/lang/String;
    .param p5, "linkProperties"  # Landroid/net/LinkProperties;
    .param p6, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p7, "roaming"  # Z
    .param p8, "subId"  # I

    .line 2180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2181
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 2182
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2181
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    const/4 v1, 0x1

    if-nez p2, :cond_1f

    .line 2184
    const-string/jumbo v2, "networkUnvailable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2186
    :cond_1f
    if-eqz p5, :cond_33

    .line 2187
    const-string/jumbo v2, "linkProperties"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2188
    invoke-virtual {p5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2189
    .local v2, "iface":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 2190
    const-string/jumbo v3, "iface"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    .end local v2  # "iface":Ljava/lang/String;
    :cond_33
    if-eqz p6, :cond_3b

    .line 2194
    const-string/jumbo v2, "networkCapabilities"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2196
    :cond_3b
    if-eqz p7, :cond_43

    const-string/jumbo v2, "networkRoaming"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2198
    :cond_43
    const-string v1, "apn"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2199
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2200
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2202
    return-void
.end method

.method private broadcastPreciseCallStateChanged(III)V
    .registers 8
    .param p1, "ringingCallState"  # I
    .param p2, "foregroundCallState"  # I
    .param p3, "backgroundCallState"  # I

    .line 2213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2214
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2215
    const-string v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2216
    const-string v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2217
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2219
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .registers 11
    .param p1, "state"  # I
    .param p2, "networkType"  # I
    .param p3, "apnType"  # Ljava/lang/String;
    .param p4, "apn"  # Ljava/lang/String;
    .param p5, "linkProperties"  # Landroid/net/LinkProperties;
    .param p6, "failCause"  # I

    .line 2224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2226
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2227
    if-eqz p3, :cond_1a

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2228
    :cond_1a
    if-eqz p4, :cond_21

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2229
    :cond_21
    if-eqz p5, :cond_29

    .line 2230
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2232
    :cond_29
    const-string v1, "failCause"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2234
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2236
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .registers 10
    .param p1, "state"  # Landroid/telephony/ServiceState;
    .param p2, "phoneId"  # I
    .param p3, "subId"  # I

    .line 2072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2074
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_14

    .line 2078
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2075
    :catch_13
    move-exception v2

    .line 2078
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2079
    nop

    .line 2081
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2083
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2084
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2085
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2087
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2091
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .registers 10
    .param p1, "signalStrength"  # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"  # I
    .param p3, "subId"  # I

    .line 2095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2097
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    goto :goto_10

    .line 2101
    :catchall_a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2098
    :catch_f
    move-exception v2

    .line 2101
    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    nop

    .line 2104
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIG_STR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2106
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2107
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2108
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2109
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2110
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2111
    return-void
.end method

.method private checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"  # I

    .line 2422
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2424
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2425
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2426
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2427
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2428
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2429
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2430
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 2432
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$KVoaCNOF-BlPejFaEBKjW11o5Po;

    invoke-direct {v1, p0, v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$KVoaCNOF-BlPejFaEBKjW11o5Po;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"  # I

    .line 2404
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2406
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2407
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2408
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2409
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2410
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2411
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2412
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 2414
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$H1zNBtijaPaJZvAGiWo3ze1HvCk;

    invoke-direct {v1, p0, v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$H1zNBtijaPaJZvAGiWo3ze1HvCk;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "events"  # I
    .param p2, "subId"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "message"  # Ljava/lang/String;

    .line 2264
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 2266
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2268
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2271
    .local v0, "locationQueryBuilder":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    const/4 v1, 0x0

    .line 2272
    .local v1, "shouldCheckLocationPermissions":Z
    and-int/lit8 v2, p1, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    .line 2273
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2274
    const/4 v1, 0x1

    .line 2277
    :cond_3b
    and-int/lit16 v2, p1, 0x410

    if-eqz v2, :cond_45

    .line 2279
    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2280
    const/4 v1, 0x1

    .line 2283
    :cond_45
    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    .line 2284
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2286
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v5

    .line 2285
    invoke-static {v4, v5}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v4

    .line 2287
    .local v4, "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v5, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_61

    const/4 v6, 0x2

    if-eq v5, v6, :cond_60

    goto :goto_7d

    .line 2292
    :cond_60
    return v3

    .line 2289
    :cond_61
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to listen for events "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " due to insufficient location permissions."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2296
    .end local v4  # "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_7d
    :goto_7d
    const v4, 0x100000c

    and-int/2addr v4, p1

    if-eqz v4, :cond_8c

    .line 2297
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 2299
    return v3

    .line 2303
    :cond_8c
    and-int/lit16 v3, p1, 0x1800

    const-string v4, "android.permission.READ_PRECISE_PHONE_STATE"

    const/4 v5, 0x0

    if-eqz v3, :cond_98

    .line 2304
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :cond_98
    const v3, 0x8000

    and-int/2addr v3, p1

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    if-eqz v3, :cond_a5

    .line 2309
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_a5
    and-int/lit16 v3, p1, 0x4000

    if-eqz v3, :cond_ae

    .line 2314
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    :cond_ae
    const/high16 v3, 0x2000000

    and-int/2addr v3, p1

    if-eqz v3, :cond_b8

    .line 2319
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    :cond_b8
    const/high16 v3, 0x4000000

    and-int/2addr v3, p1

    if-eqz v3, :cond_c2

    .line 2324
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    :cond_c2
    const/high16 v3, 0x800000

    and-int/2addr v3, p1

    if-eqz v3, :cond_cc

    .line 2329
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :cond_cc
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_d6

    .line 2334
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    :cond_d6
    const/high16 v3, 0x8000000

    and-int/2addr v3, p1

    if-eqz v3, :cond_e0

    .line 2339
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :cond_e0
    return v2
.end method

.method private checkNotifyPermission()Z
    .registers 3

    .line 2258
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"  # Ljava/lang/String;

    .line 2248
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2249
    const/4 v0, 0x1

    return v0

    .line 2251
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
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

    .line 2253
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v1, :cond_38

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2254
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"  # I

    .line 2440
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 2442
    .local v0, "events":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_39

    .line 2444
    :try_start_6
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPossibleMissNotify: onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2446
    :cond_22
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_30} :catch_31

    .line 2450
    goto :goto_39

    .line 2448
    :catch_31
    move-exception v1

    .line 2449
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6c

    .line 2455
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 2456
    .local v1, "signalStrength":Landroid/telephony/SignalStrength;
    sget-boolean v2, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v2, :cond_59

    .line 2457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onSignalStrengthsChanged SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2459
    :cond_59
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_63} :catch_64

    .line 2462
    .end local v1  # "signalStrength":Landroid/telephony/SignalStrength;
    goto :goto_6c

    .line 2460
    :catch_64
    move-exception v1

    .line 2461
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_a5

    .line 2467
    :try_start_70
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 2468
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 2469
    .local v1, "gsmSignalStrength":I
    sget-boolean v2, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v2, :cond_90

    .line 2470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onSignalStrengthChanged SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2473
    :cond_90
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v3, 0x63

    if-ne v1, v3, :cond_98

    const/4 v3, -0x1

    goto :goto_99

    .line 2474
    :cond_98
    move v3, v1

    .line 2473
    :goto_99
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_9c} :catch_9d

    .line 2477
    .end local v1  # "gsmSignalStrength":I
    goto :goto_a5

    .line 2475
    :catch_9d
    move-exception v1

    .line 2476
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_a5
    :goto_a5
    const/16 v1, 0x400

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    const/16 v2, 0x1d

    if-eqz v1, :cond_f1

    .line 2482
    :try_start_af
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v1, :cond_d5

    .line 2483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onCellInfoChanged["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 2484
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2483
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2486
    :cond_d5
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 2487
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_e8} :catch_e9

    .line 2491
    :cond_e8
    goto :goto_f1

    .line 2489
    :catch_e9
    move-exception v1

    .line 2490
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_f1
    :goto_f1
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12c

    .line 2496
    :try_start_f6
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_11a

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onUserMobileDataStateChanged phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " umds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2500
    :cond_11a
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_123} :catch_124

    .line 2503
    goto :goto_12c

    .line 2501
    :catch_124
    move-exception v1

    .line 2502
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_12c
    :goto_12c
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_166

    .line 2508
    :try_start_130
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_154

    .line 2509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onMessageWaitingIndicatorChanged phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mwi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2512
    :cond_154
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_15d} :catch_15e

    .line 2516
    goto :goto_166

    .line 2514
    :catch_15e
    move-exception v1

    .line 2515
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_166
    :goto_166
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1a0

    .line 2521
    :try_start_16a
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_18e

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onCallForwardingIndicatorChanged phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cfi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2525
    :cond_18e
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_197
    .catch Landroid/os/RemoteException; {:try_start_16a .. :try_end_197} :catch_198

    .line 2529
    goto :goto_1a0

    .line 2527
    :catch_198
    move-exception v1

    .line 2528
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_1a0
    :goto_1a0
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_1e1

    .line 2534
    :try_start_1a8
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v1, :cond_1c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPossibleMissNotify: onCellLocationChanged mCellLocation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2536
    :cond_1c4
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 2537
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1d8} :catch_1d9

    .line 2541
    :cond_1d8
    goto :goto_1e1

    .line 2539
    :catch_1d9
    move-exception v1

    .line 2540
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_1e1
    :goto_1e1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_228

    .line 2546
    :try_start_1e5
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v1, :cond_212

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPossibleMissNotify: onDataConnectionStateChanged(mDataConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataConnectionNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2552
    :cond_212
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, p2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_1e5 .. :try_end_21f} :catch_220

    .line 2556
    goto :goto_228

    .line 2554
    :catch_220
    move-exception v1

    .line 2555
    .restart local v1  # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_228
    :goto_228
    return-void
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"  # Ljava/lang/String;

    .line 2239
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2240
    return-void

    .line 2244
    :cond_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 2243
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    .line 2245
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 4
    .param p1, "record"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"  # I

    .line 914
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method private handleRemoveListLocked()V
    .registers 4

    .line 2347
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2348
    .local v0, "size":I
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveListLocked: mRemoveList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2349
    :cond_1e
    if-lez v0, :cond_3b

    .line 2350
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2351
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2352
    .end local v2  # "b":Landroid/os/IBinder;
    goto :goto_26

    .line 2353
    :cond_36
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2355
    :cond_3b
    return-void
.end method

.method static synthetic lambda$notifyCarrierNetworkChange$0(I)Z
    .registers 2
    .param p0, "i"  # I

    .line 1213
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(I)Z

    move-result v0

    return v0
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 22
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callback"  # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"  # I
    .param p4, "notifyNow"  # Z
    .param p5, "subId"  # I

    .line 645
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 646
    .local v6, "callerUserId":I
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v0, v7, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "listen: E pkg="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " events=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " notifyNow="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " subId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " myUserId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " callerUserId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "str":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 651
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_65

    .line 652
    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 655
    :cond_65
    if-eqz v3, :cond_3cb

    .line 659
    const-string/jumbo v0, "listen"

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 660
    return-void

    .line 663
    :cond_71
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 664
    .local v8, "phoneId":I
    iget-object v9, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 666
    :try_start_78
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v10, v0

    .line 667
    .local v10, "b":Landroid/os/IBinder;
    invoke-direct {v1, v10}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v0

    move-object v11, v0

    .line 669
    .local v11, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v11, :cond_86

    .line 670
    monitor-exit v9

    return-void

    .line 673
    :cond_86
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;
    :try_end_8a
    .catchall {:try_start_78 .. :try_end_8a} :catchall_3c4

    .line 674
    move-object/from16 v12, p2

    :try_start_8c
    iput-object v12, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 675
    iput-object v2, v11, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 680
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 681
    const v0, 0x7fffffff

    iput v0, v11, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_aa

    .line 683
    :cond_a8
    iput v5, v11, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 685
    :goto_aa
    iput v8, v11, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 686
    iput v3, v11, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 687
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v0, :cond_d9

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "listen:  Register r="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " r.subId="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " phoneId="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 690
    :cond_d9
    if-eqz v4, :cond_3c2

    invoke-direct {v1, v8}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0
    :try_end_df
    .catchall {:try_start_8c .. :try_end_df} :catchall_3c9

    if-eqz v0, :cond_3c2

    .line 691
    and-int/lit8 v0, v3, 0x1

    const/16 v13, 0x1d

    if-eqz v0, :cond_13b

    .line 693
    :try_start_e7
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_104

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "listen: call onSSC state="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, v8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 694
    :cond_104
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, v8

    invoke-direct {v0, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 695
    .local v0, "rawSs":Landroid/telephony/ServiceState;
    invoke-direct {v1, v11, v13}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v14

    if-eqz v14, :cond_119

    .line 696
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_134

    .line 697
    :cond_119
    invoke-direct {v1, v11, v13}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v14

    if-eqz v14, :cond_12a

    .line 698
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_134

    .line 700
    :cond_12a
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_134} :catch_135
    .catchall {:try_start_e7 .. :try_end_134} :catchall_3c9

    .line 704
    .end local v0  # "rawSs":Landroid/telephony/ServiceState;
    :goto_134
    goto :goto_13b

    .line 702
    :catch_135
    move-exception v0

    .line 703
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_136
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_13b
    .catchall {:try_start_136 .. :try_end_13b} :catchall_3c9

    .line 706
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_13b
    :goto_13b
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_15a

    .line 708
    :try_start_13f
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v8

    .line 709
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 710
    .local v0, "gsmSignalStrength":I
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v15, 0x63

    if-ne v0, v15, :cond_14f

    const/4 v15, -0x1

    goto :goto_150

    .line 711
    :cond_14f
    move v15, v0

    .line 710
    :goto_150
    invoke-interface {v14, v15}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_153} :catch_154
    .catchall {:try_start_13f .. :try_end_153} :catchall_3c9

    .line 714
    .end local v0  # "gsmSignalStrength":I
    goto :goto_15a

    .line 712
    :catch_154
    move-exception v0

    .line 713
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_155
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_15a
    .catchall {:try_start_155 .. :try_end_15a} :catchall_3c9

    .line 716
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_15a
    :goto_15a
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_16e

    .line 718
    :try_start_15e
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v14, v14, v8

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_167} :catch_168
    .catchall {:try_start_15e .. :try_end_167} :catchall_3c9

    .line 722
    goto :goto_16e

    .line 720
    :catch_168
    move-exception v0

    .line 721
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_169
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16e
    .catchall {:try_start_169 .. :try_end_16e} :catchall_3c9

    .line 724
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_16e
    :goto_16e
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_182

    .line 726
    :try_start_172
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v14, v14, v8

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_17b} :catch_17c
    .catchall {:try_start_172 .. :try_end_17b} :catchall_3c9

    .line 730
    goto :goto_182

    .line 728
    :catch_17c
    move-exception v0

    .line 729
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_17d
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 732
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_182
    :goto_182
    const/16 v0, 0x10

    invoke-direct {v1, v11, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0
    :try_end_188
    .catchall {:try_start_17d .. :try_end_188} :catchall_3c9

    if-eqz v0, :cond_1c2

    .line 734
    :try_start_18a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v0, :cond_1a7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "listen: mCellLocation = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, v8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 736
    :cond_1a7
    invoke-direct {v1, v11, v13}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 737
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v14, Landroid/os/Bundle;

    iget-object v15, v1, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v15, v15, v8

    invoke-direct {v14, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_1bb} :catch_1bc
    .catchall {:try_start_18a .. :try_end_1bb} :catchall_3c9

    .line 742
    :cond_1bb
    goto :goto_1c2

    .line 740
    :catch_1bc
    move-exception v0

    .line 741
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_1bd
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1c2
    .catchall {:try_start_1bd .. :try_end_1c2} :catchall_3c9

    .line 744
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_1c2
    :goto_1c2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_1da

    .line 746
    :try_start_1c6
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v14, v14, v8

    .line 747
    invoke-direct {v1, v11, v8}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v15

    .line 746
    invoke-interface {v0, v14, v15}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1c6 .. :try_end_1d3} :catch_1d4
    .catchall {:try_start_1c6 .. :try_end_1d3} :catchall_3c9

    .line 750
    goto :goto_1da

    .line 748
    :catch_1d4
    move-exception v0

    .line 749
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_1d5
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1da
    .catchall {:try_start_1d5 .. :try_end_1da} :catchall_3c9

    .line 752
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_1da
    :goto_1da
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_1f2

    .line 754
    :try_start_1de
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v14, v14, v8

    iget-object v15, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v15, v15, v8

    invoke-interface {v0, v14, v15}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1de .. :try_end_1eb} :catch_1ec
    .catchall {:try_start_1de .. :try_end_1eb} :catchall_3c9

    .line 758
    goto :goto_1f2

    .line 756
    :catch_1ec
    move-exception v0

    .line 757
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_1ed
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1f2
    .catchall {:try_start_1ed .. :try_end_1f2} :catchall_3c9

    .line 760
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_1f2
    :goto_1f2
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_206

    .line 762
    :try_start_1f6
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v14, v14, v8

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1ff
    .catch Landroid/os/RemoteException; {:try_start_1f6 .. :try_end_1ff} :catch_200
    .catchall {:try_start_1f6 .. :try_end_1ff} :catchall_3c9

    .line 765
    goto :goto_206

    .line 763
    :catch_200
    move-exception v0

    .line 764
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_201
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_206
    .catchall {:try_start_201 .. :try_end_206} :catchall_3c9

    .line 767
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_206
    :goto_206
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_21a

    .line 769
    :try_start_20a
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, v8

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_213} :catch_214
    .catchall {:try_start_20a .. :try_end_213} :catchall_3c9

    .line 772
    goto :goto_21a

    .line 770
    :catch_214
    move-exception v0

    .line 771
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_215
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_21a
    .catchall {:try_start_215 .. :try_end_21a} :catchall_3c9

    .line 774
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_21a
    :goto_21a
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_22e

    .line 776
    :try_start_21e
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aget v14, v14, v8

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_227
    .catch Landroid/os/RemoteException; {:try_start_21e .. :try_end_227} :catch_228
    .catchall {:try_start_21e .. :try_end_227} :catchall_3c9

    .line 779
    goto :goto_22e

    .line 777
    :catch_228
    move-exception v0

    .line 778
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_229
    iget-object v14, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v14}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 781
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_22e
    :goto_22e
    const/16 v0, 0x400

    invoke-direct {v1, v11, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0
    :try_end_234
    .catchall {:try_start_229 .. :try_end_234} :catchall_3c9

    if-eqz v0, :cond_277

    .line 783
    :try_start_236
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v0, :cond_25d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "listen: mCellInfo["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 785
    :cond_25d
    invoke-direct {v1, v11, v13}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 786
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_270
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_270} :catch_271
    .catchall {:try_start_236 .. :try_end_270} :catchall_3c9

    .line 790
    :cond_270
    goto :goto_277

    .line 788
    :catch_271
    move-exception v0

    .line 789
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_272
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_277
    .catchall {:try_start_272 .. :try_end_277} :catchall_3c9

    .line 792
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_277
    :goto_277
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_28b

    .line 794
    :try_start_27b
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v13, v13, v8

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_284} :catch_285
    .catchall {:try_start_27b .. :try_end_284} :catchall_3c9

    .line 797
    goto :goto_28b

    .line 795
    :catch_285
    move-exception v0

    .line 796
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_286
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_28b
    .catchall {:try_start_286 .. :try_end_28b} :catchall_3c9

    .line 799
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_28b
    :goto_28b
    const/high16 v0, 0x2000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2a4

    .line 801
    :try_start_290
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v13, v13, v8

    iget-object v14, v1, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v14, v14, v8

    invoke-interface {v0, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_29d
    .catch Landroid/os/RemoteException; {:try_start_290 .. :try_end_29d} :catch_29e
    .catchall {:try_start_290 .. :try_end_29d} :catchall_3c9

    .line 805
    goto :goto_2a4

    .line 803
    :catch_29e
    move-exception v0

    .line 804
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_29f
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2a4
    .catchall {:try_start_29f .. :try_end_2a4} :catchall_3c9

    .line 807
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_2a4
    :goto_2a4
    const/high16 v0, 0x8000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2bd

    .line 809
    :try_start_2a9
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2b6
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2b6} :catch_2b7
    .catchall {:try_start_2a9 .. :try_end_2b6} :catchall_3c9

    .line 812
    goto :goto_2bd

    .line 810
    :catch_2b7
    move-exception v0

    .line 811
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_2b8
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2bd
    .catchall {:try_start_2b8 .. :try_end_2bd} :catchall_3c9

    .line 814
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_2bd
    :goto_2bd
    and-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_2d1

    .line 816
    :try_start_2c1
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v13, v13, v8

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_2ca
    .catch Landroid/os/RemoteException; {:try_start_2c1 .. :try_end_2ca} :catch_2cb
    .catchall {:try_start_2c1 .. :try_end_2ca} :catchall_3c9

    .line 820
    goto :goto_2d1

    .line 818
    :catch_2cb
    move-exception v0

    .line 819
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_2cc
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2d1
    .catchall {:try_start_2cc .. :try_end_2d1} :catchall_3c9

    .line 822
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_2d1
    :goto_2d1
    const/high16 v0, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2e4

    .line 824
    :try_start_2d6
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, v1, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_2dd
    .catch Landroid/os/RemoteException; {:try_start_2d6 .. :try_end_2dd} :catch_2de
    .catchall {:try_start_2d6 .. :try_end_2dd} :catchall_3c9

    .line 827
    goto :goto_2e4

    .line 825
    :catch_2de
    move-exception v0

    .line 826
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_2df
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2e4
    .catchall {:try_start_2df .. :try_end_2e4} :catchall_3c9

    .line 829
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_2e4
    :goto_2e4
    const/high16 v0, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2f9

    .line 831
    :try_start_2e9
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v13, v13, v8

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_2f2
    .catch Landroid/os/RemoteException; {:try_start_2e9 .. :try_end_2f2} :catch_2f3
    .catchall {:try_start_2e9 .. :try_end_2f2} :catchall_3c9

    .line 834
    goto :goto_2f9

    .line 832
    :catch_2f3
    move-exception v0

    .line 833
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_2f4
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2f9
    .catchall {:try_start_2f4 .. :try_end_2f9} :catchall_3c9

    .line 836
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_2f9
    :goto_2f9
    const/high16 v0, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_30e

    .line 838
    :try_start_2fe
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v13, v13, v8

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_307
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_307} :catch_308
    .catchall {:try_start_2fe .. :try_end_307} :catchall_3c9

    .line 841
    goto :goto_30e

    .line 839
    :catch_308
    move-exception v0

    .line 840
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_309
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_30e
    .catchall {:try_start_309 .. :try_end_30e} :catchall_3c9

    .line 843
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_30e
    :goto_30e
    const/high16 v0, 0x80000

    and-int/2addr v0, v3

    if-eqz v0, :cond_323

    .line 845
    :try_start_313
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v13, v13, v8

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_31c
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_31c} :catch_31d
    .catchall {:try_start_313 .. :try_end_31c} :catchall_3c9

    .line 848
    goto :goto_323

    .line 846
    :catch_31d
    move-exception v0

    .line 847
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_31e
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_323
    .catchall {:try_start_31e .. :try_end_323} :catchall_3c9

    .line 850
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_323
    :goto_323
    const/high16 v0, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_33c

    .line 852
    :try_start_328
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 853
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 852
    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_335
    .catch Landroid/os/RemoteException; {:try_start_328 .. :try_end_335} :catch_336
    .catchall {:try_start_328 .. :try_end_335} :catchall_3c9

    .line 856
    goto :goto_33c

    .line 854
    :catch_336
    move-exception v0

    .line 855
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_337
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_33c
    .catchall {:try_start_337 .. :try_end_33c} :catchall_3c9

    .line 858
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_33c
    :goto_33c
    const/high16 v0, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_34f

    .line 860
    :try_start_341
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_348
    .catch Landroid/os/RemoteException; {:try_start_341 .. :try_end_348} :catch_349
    .catchall {:try_start_341 .. :try_end_348} :catchall_3c9

    .line 863
    goto :goto_34f

    .line 861
    :catch_349
    move-exception v0

    .line 862
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_34a
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_34f
    .catchall {:try_start_34a .. :try_end_34f} :catchall_3c9

    .line 865
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_34f
    :goto_34f
    const/high16 v0, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_362

    .line 867
    :try_start_354
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, v1, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_35b
    .catch Landroid/os/RemoteException; {:try_start_354 .. :try_end_35b} :catch_35c
    .catchall {:try_start_354 .. :try_end_35b} :catchall_3c9

    .line 870
    goto :goto_362

    .line 868
    :catch_35c
    move-exception v0

    .line 869
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_35d
    iget-object v13, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v13}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 872
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_362
    :goto_362
    const/high16 v0, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_386

    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    iget v13, v11, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v14, v11, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v15, v11, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    const-string/jumbo v2, "listen_active_data_subid_change"

    .line 874
    invoke-static {v0, v13, v14, v15, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_376
    .catchall {:try_start_35d .. :try_end_376} :catchall_3c9

    if-eqz v0, :cond_386

    .line 878
    :try_start_378
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v2, v1, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_37f
    .catch Landroid/os/RemoteException; {:try_start_378 .. :try_end_37f} :catch_380
    .catchall {:try_start_378 .. :try_end_37f} :catchall_3c9

    .line 881
    goto :goto_386

    .line 879
    :catch_380
    move-exception v0

    .line 880
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_381
    iget-object v2, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_386
    .catchall {:try_start_381 .. :try_end_386} :catchall_3c9

    .line 883
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_386
    :goto_386
    const/high16 v0, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_399

    .line 885
    :try_start_38b
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v2, v1, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_392
    .catch Landroid/os/RemoteException; {:try_start_38b .. :try_end_392} :catch_393
    .catchall {:try_start_38b .. :try_end_392} :catchall_3c9

    .line 888
    goto :goto_399

    .line 886
    :catch_393
    move-exception v0

    .line 887
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_394
    iget-object v2, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_399
    .catchall {:try_start_394 .. :try_end_399} :catchall_3c9

    .line 890
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_399
    :goto_399
    and-int/lit16 v0, v3, 0x4000

    if-eqz v0, :cond_3ad

    .line 892
    :try_start_39d
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, v1, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v2, v2, v8

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_3a6
    .catch Landroid/os/RemoteException; {:try_start_39d .. :try_end_3a6} :catch_3a7
    .catchall {:try_start_39d .. :try_end_3a6} :catchall_3c9

    .line 895
    goto :goto_3ad

    .line 893
    :catch_3a7
    move-exception v0

    .line 894
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_3a8
    iget-object v2, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_3ad
    .catchall {:try_start_3a8 .. :try_end_3ad} :catchall_3c9

    .line 897
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_3ad
    :goto_3ad
    const/high16 v0, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_3c2

    .line 899
    :try_start_3b2
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, v1, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v2, v2, v8

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_3bb
    .catch Landroid/os/RemoteException; {:try_start_3b2 .. :try_end_3bb} :catch_3bc
    .catchall {:try_start_3b2 .. :try_end_3bb} :catchall_3c9

    .line 902
    goto :goto_3c2

    .line 900
    :catch_3bc
    move-exception v0

    .line 901
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_3bd
    iget-object v2, v11, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 905
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v10  # "b":Landroid/os/IBinder;
    .end local v11  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3c2
    :goto_3c2
    monitor-exit v9

    .line 906
    .end local v8  # "phoneId":I
    goto :goto_3de

    .line 905
    .restart local v8  # "phoneId":I
    :catchall_3c4
    move-exception v0

    move-object/from16 v12, p2

    :goto_3c7
    monitor-exit v9
    :try_end_3c8
    .catchall {:try_start_3bd .. :try_end_3c8} :catchall_3c9

    throw v0

    :catchall_3c9
    move-exception v0

    goto :goto_3c7

    .line 907
    .end local v8  # "phoneId":I
    :cond_3cb
    move-object/from16 v12, p2

    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v0, :cond_3d7

    const-string/jumbo v0, "listen: Unregister"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 908
    :cond_3d7
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 910
    :goto_3de
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 2383
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 2387
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 949
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 951
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_7b

    .line 952
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 953
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_78

    .line 954
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v4, :cond_45

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove: binder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " r.callingPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " r.callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 959
    :cond_45
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_7d

    if-eqz v4, :cond_71

    .line 961
    :try_start_49
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4f
    .catch Ljava/util/NoSuchElementException; {:try_start_49 .. :try_end_4f} :catch_50
    .catchall {:try_start_49 .. :try_end_4f} :catchall_7d

    .line 965
    goto :goto_71

    .line 962
    :catch_50
    move-exception v4

    .line 963
    .local v4, "e":Ljava/util/NoSuchElementException;
    :try_start_51
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v5, :cond_71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnlinkToDeath NoSuchElementException sending to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 968
    .end local v4  # "e":Ljava/util/NoSuchElementException;
    :cond_71
    :goto_71
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 969
    monitor-exit v0

    return-void

    .line 951
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 972
    .end local v1  # "recordCount":I
    .end local v2  # "i":I
    :cond_7b
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 9
    .param p1, "r"  # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"  # I

    .line 2359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2360
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    .line 2362
    .local v2, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 2363
    .local v3, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v3, :cond_19

    .line 2364
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    move v2, v4

    .line 2365
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_5b

    .line 2366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateEventsAndUserLocked: valid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " r.callerUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " foregroundUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " r.events="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " events="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_60

    .line 2371
    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2372
    nop

    .line 2373
    return v2

    .line 2371
    .end local v3  # "foregroundUser":I
    :catchall_60
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private validatePhoneId(I)Z
    .registers 5
    .param p1, "phoneId"  # I

    .line 2377
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2378
    .local v0, "valid":Z
    :goto_9
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2379
    :cond_22
    return v0
.end method


# virtual methods
.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callback"  # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 535
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 536
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 537
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_4e

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listen ooscl: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback.asBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 543
    :cond_4e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 545
    :try_start_51
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 546
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 548
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_5d

    .line 549
    monitor-exit v1

    return-void

    .line 552
    :cond_5d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 553
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 554
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 557
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 558
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v4, :cond_8d

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen ooscl:  Register r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 562
    :cond_8d
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_8f
    .catchall {:try_start_51 .. :try_end_8f} :catchall_f9

    if-eqz v4, :cond_f1

    .line 564
    :try_start_91
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_aa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen ooscl: send to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 565
    :cond_aa
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 566
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen ooscl: sent to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_c8} :catch_c9
    .catchall {:try_start_91 .. :try_end_c8} :catchall_f9

    goto :goto_f0

    .line 567
    :catch_c9
    move-exception v4

    .line 568
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_ca
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v5, :cond_eb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listen ooscl: remote exception sending to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 569
    :cond_eb
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 570
    .end local v4  # "e":Landroid/os/RemoteException;
    :cond_f0
    :goto_f0
    goto :goto_f7

    .line 572
    :cond_f1
    const-string/jumbo v4, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 574
    .end local v2  # "b":Landroid/os/IBinder;
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_f7
    monitor-exit v1

    .line 575
    return-void

    .line 574
    :catchall_f9
    move-exception v2

    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_ca .. :try_end_fb} :catchall_f9

    throw v2
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callback"  # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 482
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 483
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 484
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_4e

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listen oscl: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback.asBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 490
    :cond_4e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 492
    :try_start_51
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 493
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 495
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_5d

    .line 496
    monitor-exit v1

    return-void

    .line 499
    :cond_5d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 500
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 501
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 504
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 505
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v4, :cond_8d

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen oscl:  Register r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 509
    :cond_8d
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_8f
    .catchall {:try_start_51 .. :try_end_8f} :catchall_f9

    if-eqz v4, :cond_f1

    .line 511
    :try_start_91
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_aa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen oscl: send to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 512
    :cond_aa
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 513
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listen oscl: sent to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_c8} :catch_c9
    .catchall {:try_start_91 .. :try_end_c8} :catchall_f9

    goto :goto_f0

    .line 514
    :catch_c9
    move-exception v4

    .line 515
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_ca
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v5, :cond_eb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listen oscl: remote exception sending to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 516
    :cond_eb
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 517
    .end local v4  # "e":Landroid/os/RemoteException;
    :cond_f0
    :goto_f0
    goto :goto_f7

    .line 519
    :cond_f1
    const-string/jumbo v4, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 521
    .end local v2  # "b":Landroid/os/IBinder;
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_f7
    monitor-exit v1

    .line 522
    return-void

    .line 521
    :catchall_f9
    move-exception v2

    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_ca .. :try_end_fb} :catchall_f9

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2002
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2004
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "TelephonyRegistry"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2006
    :cond_12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2007
    :try_start_15
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2008
    .local v2, "recordCount":I
    const-string/jumbo v3, "last known state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2010
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_2db

    .line 2011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRingingCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mForegroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBackgroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserMobileDataState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOtaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallPreciseDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallAttributes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2010
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 2041
    .end local v3  # "i":I
    :cond_2db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCarrierNetworkChangeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhoneCapability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActiveDataSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRadioPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmergencyNumberList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2052
    const-string/jumbo v3, "local logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2054
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2055
    const-string/jumbo v3, "listen logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registrations: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2060
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 2061
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2062
    .end local v4  # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_3b9

    .line 2063
    :cond_3c9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2064
    nop

    .end local v2  # "recordCount":I
    monitor-exit v1

    .line 2065
    return-void

    .line 2064
    :catchall_3cf
    move-exception v2

    monitor-exit v1
    :try_end_3d1
    .catchall {:try_start_15 .. :try_end_3d1} :catchall_3cf

    throw v2
.end method

.method idMatch(III)Z
    .registers 7
    .param p1, "rSubId"  # I
    .param p2, "subId"  # I
    .param p3, "phoneId"  # I

    .line 2392
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_b

    .line 2394
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_9

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    return v0

    .line 2396
    :cond_b
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_17

    .line 2397
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 2399
    :cond_17
    if-ne p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method public synthetic lambda$checkCoarseLocationAccess$3$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "query"  # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2433
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2434
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 2435
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$checkFineLocationAccess$2$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "query"  # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2415
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2416
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 2417
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$notifyActiveDataSubIdChanged$1$TelephonyRegistry(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 7
    .param p1, "r"  # Lcom/android/server/TelephonyRegistry$Record;

    .line 1883
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1885
    const-string/jumbo v4, "notifyActiveDataSubIdChanged"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1883
    :goto_1c
    return v0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 11
    .param p1, "pkgForDebug"  # Ljava/lang/String;
    .param p2, "callback"  # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"  # I
    .param p4, "notifyNow"  # Z

    .line 633
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 635
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 12
    .param p1, "subId"  # I
    .param p2, "pkgForDebug"  # Ljava/lang/String;
    .param p3, "callback"  # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"  # I
    .param p5, "notifyNow"  # Z

    .line 640
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 641
    return-void
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .registers 9
    .param p1, "activeDataSubId"  # I

    .line 1867
    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1868
    return-void

    .line 1871
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_23

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1877
    :cond_23
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1878
    :try_start_26
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1879
    .local v1, "copiedRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/TelephonyRegistry$Record;>;"
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_7c

    .line 1880
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 1883
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/server/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/android/server/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 1887
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 1889
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1890
    :try_start_4d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1891
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_79

    if-eqz v4, :cond_73

    .line 1893
    :try_start_65
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_6b
    .catchall {:try_start_65 .. :try_end_6a} :catchall_79

    .line 1896
    goto :goto_73

    .line 1894
    :catch_6b
    move-exception v4

    .line 1895
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_6c
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    goto :goto_51

    .line 1899
    :cond_74
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1900
    monitor-exit v2

    .line 1901
    return-void

    .line 1900
    :catchall_79
    move-exception v0

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_79

    throw v0

    .line 1879
    .end local v1  # "copiedRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/TelephonyRegistry$Record;>;"
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3
    .param p1, "cfi"  # Z

    .line 1374
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1375
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "cfi"  # Z

    .line 1378
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1379
    return-void

    .line 1381
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCallForwardingChangedForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cfi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1385
    :cond_2b
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1386
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1387
    :try_start_32
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1388
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 1389
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1390
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1392
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_72

    if-eqz v4, :cond_6c

    .line 1394
    :try_start_5e
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64
    .catchall {:try_start_5e .. :try_end_63} :catchall_72

    .line 1397
    goto :goto_6c

    .line 1395
    :catch_64
    move-exception v4

    .line 1396
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_65
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    goto :goto_42

    .line 1401
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1402
    monitor-exit v1

    .line 1403
    return-void

    .line 1402
    :catchall_72
    move-exception v2

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_72

    throw v2
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .registers 11
    .param p1, "callQuality"  # Landroid/telephony/CallQuality;
    .param p2, "phoneId"  # I
    .param p3, "subId"  # I
    .param p4, "callNetworkType"  # I

    .line 1970
    const-string/jumbo v0, "notifyCallQualityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1971
    return-void

    .line 1974
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1975
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1977
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 1978
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 1979
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3, p4, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p2

    .line 1982
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1983
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1985
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_62

    if-eqz v3, :cond_5c

    .line 1987
    :try_start_4a
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v4, v4, p2

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_54
    .catchall {:try_start_4a .. :try_end_53} :catchall_62

    .line 1990
    goto :goto_5c

    .line 1988
    :catch_54
    move-exception v3

    .line 1989
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_55
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    goto :goto_2e

    .line 1995
    :cond_5d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1996
    monitor-exit v0

    .line 1997
    return-void

    .line 1996
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 9
    .param p1, "state"  # I
    .param p2, "phoneNumber"  # Ljava/lang/String;

    .line 976
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 977
    return-void

    .line 980
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCallState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 984
    :cond_2b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 985
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 986
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_71

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_67

    .line 991
    :try_start_4f
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_57

    move-object v3, p2

    goto :goto_59

    :cond_57
    const-string v3, ""

    .line 992
    .local v3, "phoneNumberOrEmpty":Ljava/lang/String;
    :goto_59
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5e} :catch_5f
    .catchall {:try_start_4f .. :try_end_5e} :catchall_71

    .line 995
    .end local v3  # "phoneNumberOrEmpty":Ljava/lang/String;
    goto :goto_67

    .line 993
    :catch_5f
    move-exception v3

    .line 994
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_60
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    goto :goto_34

    .line 998
    :cond_68
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 999
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_71

    .line 1003
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1006
    return-void

    .line 999
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public notifyCallStateForPhoneId(IIILjava/lang/String;)V
    .registers 11
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "state"  # I
    .param p4, "incomingNumber"  # Ljava/lang/String;

    .line 1010
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1011
    return-void

    .line 1013
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_33

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCallStateForPhoneId: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " incomingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1017
    :cond_33
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1018
    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1019
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1020
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1021
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1022
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_7b

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_84

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_7b

    .line 1026
    :try_start_69
    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_72} :catch_73
    .catchall {:try_start_69 .. :try_end_72} :catchall_84

    .line 1030
    .end local v3  # "incomingNumberOrEmpty":Ljava/lang/String;
    goto :goto_7b

    .line 1028
    :catch_73
    move-exception v3

    .line 1029
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_74
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    goto :goto_4a

    .line 1034
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1035
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_84

    .line 1036
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1037
    return-void

    .line 1035
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 13
    .param p1, "active"  # Z

    .line 1211
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1212
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1211
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;->INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;

    .line 1213
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1214
    .local v0, "subIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1220
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1221
    :try_start_21
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 1222
    array-length v2, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_83

    aget v4, v0, v3

    .line 1223
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1225
    .local v5, "phoneId":I
    sget-boolean v6, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v6, :cond_4f

    .line 1226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyCarrierNetworkChange: active="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1228
    :cond_4f
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1229
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v8

    if-eqz v8, :cond_7f

    iget v8, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1231
    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v8
    :try_end_6f
    .catchall {:try_start_21 .. :try_end_6f} :catchall_88

    if-eqz v8, :cond_7f

    .line 1233
    :try_start_71
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_77
    .catchall {:try_start_71 .. :try_end_76} :catchall_88

    .line 1236
    goto :goto_7f

    .line 1234
    :catch_77
    move-exception v8

    .line 1235
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_78
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v7  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8  # "ex":Landroid/os/RemoteException;
    :cond_7f
    :goto_7f
    goto :goto_55

    .line 1222
    .end local v4  # "subId":I
    .end local v5  # "phoneId":I
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1240
    :cond_83
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1241
    monitor-exit v1

    .line 1242
    return-void

    .line 1241
    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_78 .. :try_end_8a} :catchall_88

    throw v2

    .line 1215
    :cond_8b
    const-string/jumbo v1, "notifyCarrierNetworkChange without carrier privilege"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1217
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "notifyCarrierNetworkChange without carrier privilege"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1245
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1246
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 10
    .param p1, "subId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1249
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v0, "notifyCellInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1250
    return-void

    .line 1252
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellInfoForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1256
    :cond_2b
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1257
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1258
    :try_start_32
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1259
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1261
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_96

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1262
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_96

    const/16 v4, 0x1d

    .line 1263
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_65
    .catchall {:try_start_32 .. :try_end_65} :catchall_9c

    if-eqz v4, :cond_96

    .line 1265
    :try_start_67
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v4, :cond_88

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellInfo: mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1268
    :cond_88
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_8d} :catch_8e
    .catchall {:try_start_67 .. :try_end_8d} :catchall_9c

    .line 1271
    goto :goto_96

    .line 1269
    :catch_8e
    move-exception v4

    .line 1270
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8f
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_96
    :goto_96
    goto :goto_43

    .line 1275
    :cond_97
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1276
    monitor-exit v1

    .line 1277
    return-void

    .line 1276
    :catchall_9c
    move-exception v2

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_9c

    throw v2
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "cellLocation"  # Landroid/os/Bundle;

    .line 1582
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1583
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "cellLocation"  # Landroid/os/Bundle;

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1588
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1589
    return-void

    .line 1591
    :cond_27
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_48

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1595
    :cond_48
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1596
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1597
    :try_start_4f
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 1598
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v2, v0

    .line 1599
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1600
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_b7

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1601
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_b7

    const/16 v4, 0x1d

    .line 1602
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_bd

    if-eqz v4, :cond_b7

    .line 1604
    :try_start_83
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v4, :cond_a4

    .line 1605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellLocation: cellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1608
    :cond_a4
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_ae} :catch_af
    .catchall {:try_start_83 .. :try_end_ae} :catchall_bd

    .line 1611
    goto :goto_b7

    .line 1609
    :catch_af
    move-exception v4

    .line 1610
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_b0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_b7
    :goto_b7
    goto :goto_5f

    .line 1615
    :cond_b8
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1616
    monitor-exit v1

    .line 1617
    return-void

    .line 1616
    :catchall_bd
    move-exception v2

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_b0 .. :try_end_bf} :catchall_bd

    throw v2
.end method

.method public notifyDataActivity(I)V
    .registers 3
    .param p1, "state"  # I

    .line 1406
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1407
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "state"  # I

    .line 1410
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1411
    return-void

    .line 1413
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1414
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1415
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1416
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 1417
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1419
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1420
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1422
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1425
    goto :goto_4b

    .line 1423
    :catch_43
    move-exception v4

    .line 1424
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_44
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1429
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1430
    monitor-exit v1

    .line 1431
    return-void

    .line 1430
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 20
    .param p1, "state"  # I
    .param p2, "isDataAllowed"  # Z
    .param p3, "apn"  # Ljava/lang/String;
    .param p4, "apnType"  # Ljava/lang/String;
    .param p5, "linkProperties"  # Landroid/net/LinkProperties;
    .param p6, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p7, "networkType"  # I
    .param p8, "roaming"  # Z

    .line 1437
    const v1, 0x7fffffff

    const v2, 0x7fffffff

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIIZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1441
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .registers 3
    .param p1, "apnType"  # Ljava/lang/String;

    .line 1540
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(IILjava/lang/String;)V

    .line 1543
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(IILjava/lang/String;)V
    .registers 14
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "apnType"  # Ljava/lang/String;

    .line 1546
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1547
    return-void

    .line 1549
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDataConnectionFailedForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1553
    :cond_2b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1554
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1555
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1557
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v9, v1, p1

    .line 1559
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1560
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1562
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_67
    .catchall {:try_start_2e .. :try_end_67} :catchall_8e

    if-eqz v3, :cond_7b

    .line 1564
    :try_start_69
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_72} :catch_73
    .catchall {:try_start_69 .. :try_end_72} :catchall_8e

    .line 1568
    goto :goto_7b

    .line 1566
    :catch_73
    move-exception v3

    .line 1567
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_74
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    goto :goto_4d

    .line 1573
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1574
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_8e

    .line 1575
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;I)V

    .line 1576
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1579
    return-void

    .line 1574
    :catchall_8e
    move-exception v1

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v1
.end method

.method public notifyDataConnectionForSubscriber(IIIZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 30
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "state"  # I
    .param p4, "isDataAllowed"  # Z
    .param p5, "apn"  # Ljava/lang/String;
    .param p6, "apnType"  # Ljava/lang/String;
    .param p7, "linkProperties"  # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"  # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"  # I
    .param p10, "roaming"  # Z

    .line 1448
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v1, p3

    move-object/from16 v13, p6

    move/from16 v14, p9

    const-string/jumbo v0, "notifyDataConnection()"

    invoke-direct {v10, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1449
    return-void

    .line 1451
    :cond_16
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_6a

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDataConnectionForSubscriber: subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDataAllowed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\' apn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' apnType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRecords.size()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1455
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_6e

    .line 1451
    :cond_6a
    move/from16 v15, p4

    move-object/from16 v9, p5

    .line 1457
    :goto_6e
    iget-object v8, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1458
    :try_start_71
    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, "modified":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a3

    .line 1462
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v11

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string/jumbo v2, "ims"

    .line 1463
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 1464
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v11

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, v11

    if-eq v2, v1, :cond_bf

    .line 1466
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v2, v11

    .line 1467
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_c1

    .line 1471
    :cond_a3
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v11

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1472
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1473
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v2, v11

    .line 1474
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_c1

    .line 1485
    :cond_bf
    move/from16 v16, v0

    .end local v0  # "modified":Z
    .local v16, "modified":Z
    :goto_c1
    if-eqz v16, :cond_15b

    .line 1486
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v0, v0, v11
    :try_end_c7
    .catchall {:try_start_71 .. :try_end_c7} :catchall_1d5

    move v1, v0

    .line 1489
    .end local p3  # "state":I
    .local v1, "state":I
    :try_start_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-static/range {p9 .. p9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1493
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1494
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1495
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_109
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v4, v0

    .line 1496
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget v0, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1498
    invoke-virtual {v10, v0, v12, v11}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_124
    .catchall {:try_start_c8 .. :try_end_124} :catchall_1d8

    if-eqz v0, :cond_14c

    .line 1500
    :try_start_126
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v0, :cond_13e

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify data connection state changed on sub: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1503
    :cond_13e
    iget-object v0, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, v1, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_143} :catch_144
    .catchall {:try_start_126 .. :try_end_143} :catchall_1d8

    .line 1506
    goto :goto_14c

    .line 1504
    :catch_144
    move-exception v0

    .line 1505
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_145
    iget-object v5, v10, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v4  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_14c
    :goto_14c
    goto :goto_109

    .line 1509
    :cond_14d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1511
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v0, v11

    .line 1512
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput v14, v0, v11
    :try_end_158
    .catchall {:try_start_145 .. :try_end_158} :catchall_1d8

    move/from16 v17, v1

    goto :goto_15d

    .line 1485
    .end local v1  # "state":I
    .end local v2  # "str":Ljava/lang/String;
    .restart local p3  # "state":I
    :cond_15b
    move/from16 v17, v1

    .line 1514
    .end local p3  # "state":I
    .local v17, "state":I
    :goto_15d
    :try_start_15d
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v18, Landroid/telephony/PreciseDataConnectionState;

    .line 1516
    invoke-static/range {p6 .. p6}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, p9

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v18, v0, v11

    .line 1518
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v2, v0

    .line 1519
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v2, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1aa

    iget v0, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1521
    invoke-virtual {v10, v0, v12, v11}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_196
    .catchall {:try_start_15d .. :try_end_196} :catchall_1d1

    if-eqz v0, :cond_1aa

    .line 1523
    :try_start_198
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v10, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v3, v3, v11

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1a1
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1a1} :catch_1a2
    .catchall {:try_start_198 .. :try_end_1a1} :catchall_1d1

    .line 1527
    goto :goto_1aa

    .line 1525
    :catch_1a2
    move-exception v0

    .line 1526
    .restart local v0  # "ex":Landroid/os/RemoteException;
    :try_start_1a3
    iget-object v3, v10, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1aa
    :goto_1aa
    goto :goto_17b

    .line 1458
    .end local v16  # "modified":Z
    .end local v17  # "state":I
    .restart local p3  # "state":I
    :cond_1ab
    move/from16 v17, v1

    .line 1531
    .end local p3  # "state":I
    .restart local v17  # "state":I
    :cond_1ad
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1532
    monitor-exit v8
    :try_end_1b1
    .catchall {:try_start_1a3 .. :try_end_1b1} :catchall_1d1

    .line 1533
    move-object/from16 v1, p0

    move/from16 v2, v17

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p10

    move/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1535
    const/4 v7, 0x0

    move/from16 v3, p9

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1537
    return-void

    .line 1532
    :catchall_1d1
    move-exception v0

    move/from16 v1, v17

    goto :goto_1d6

    .end local v17  # "state":I
    .restart local p3  # "state":I
    :catchall_1d5
    move-exception v0

    .end local p3  # "state":I
    .restart local v1  # "state":I
    :goto_1d6
    :try_start_1d6
    monitor-exit v8
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1d8

    throw v0

    :catchall_1d8
    move-exception v0

    goto :goto_1d6
.end method

.method public notifyDisconnectCause(IIII)V
    .registers 11
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "disconnectCause"  # I
    .param p4, "preciseDisconnectCause"  # I

    .line 1702
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1703
    return-void

    .line 1705
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1706
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1707
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 1708
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, v1, p1

    .line 1709
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1710
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_53

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1711
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_59

    if-eqz v3, :cond_53

    .line 1713
    :try_start_3d
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, p1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4b
    .catchall {:try_start_3d .. :try_end_4a} :catchall_59

    .line 1717
    goto :goto_53

    .line 1715
    :catch_4b
    move-exception v3

    .line 1716
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_53
    :goto_53
    goto :goto_21

    .line 1721
    :cond_54
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1722
    monitor-exit v0

    .line 1723
    return-void

    .line 1722
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public notifyEmergencyNumberList(II)V
    .registers 10
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I

    .line 1936
    const-string/jumbo v0, "notifyEmergencyNumberList()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1937
    return-void

    .line 1940
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1941
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1942
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1944
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 1946
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1947
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_71

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1949
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_77

    if-eqz v4, :cond_71

    .line 1951
    :try_start_46
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    .line 1952
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_68

    .line 1953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyEmergencyNumberList: emergencyNumberList= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_68} :catch_69
    .catchall {:try_start_46 .. :try_end_68} :catchall_77

    .line 1958
    :cond_68
    goto :goto_71

    .line 1956
    :catch_69
    move-exception v4

    .line 1957
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_6a
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_71
    :goto_71
    goto :goto_2a

    .line 1963
    .end local v1  # "tm":Landroid/telephony/TelephonyManager;
    :cond_72
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1964
    monitor-exit v0

    .line 1965
    return-void

    .line 1964
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_77

    throw v1
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "imsReasonInfo"  # Landroid/telephony/ims/ImsReasonInfo;

    .line 1726
    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1727
    return-void

    .line 1729
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1730
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1731
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1732
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1734
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_75

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1736
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_7b

    if-eqz v4, :cond_75

    .line 1738
    :try_start_3e
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v4, :cond_5f

    .line 1739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyImsCallDisconnectCause: mImsReasonInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1742
    :cond_5f
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_6c} :catch_6d
    .catchall {:try_start_3e .. :try_end_6c} :catchall_7b

    .line 1745
    goto :goto_75

    .line 1743
    :catch_6d
    move-exception v4

    .line 1744
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_6e
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    goto :goto_22

    .line 1749
    :cond_76
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1750
    monitor-exit v1

    .line 1751
    return-void

    .line 1750
    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "mwi"  # Z

    .line 1320
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1321
    return-void

    .line 1323
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMessageWaitingChangedForSubscriberPhoneID: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mwi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1327
    :cond_2b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1328
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1329
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1330
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1331
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1333
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_6d

    if-eqz v3, :cond_67

    .line 1335
    :try_start_59
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_6d

    .line 1338
    goto :goto_67

    .line 1336
    :catch_5f
    move-exception v3

    .line 1337
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_60
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    goto :goto_3e

    .line 1342
    :cond_68
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1343
    monitor-exit v0

    .line 1344
    return-void

    .line 1343
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .registers 10
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "rawData"  # [B

    .line 1815
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1816
    return-void

    .line 1819
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1820
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1821
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1822
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_46

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyOemHookRawEventForSubscriber:  r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1825
    :cond_46
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_65

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1827
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_6b

    if-eqz v3, :cond_65

    .line 1829
    :try_start_57
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d
    .catchall {:try_start_57 .. :try_end_5c} :catchall_6b

    .line 1832
    goto :goto_65

    .line 1830
    :catch_5d
    move-exception v3

    .line 1831
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    goto :goto_19

    .line 1836
    :cond_66
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1837
    monitor-exit v0

    .line 1838
    return-void

    .line 1837
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .registers 7

    .line 605
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "notifyOpptSubscriptionInfoChanged:"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 606
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 607
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_2c

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 609
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 611
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 612
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 614
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v3
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_ab

    if-eqz v3, :cond_a5

    .line 616
    :try_start_4c
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyOpptSubChanged: call oosc to r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 617
    :cond_65
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 618
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 619
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_83

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyOpptSubChanged: done oosc to r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_83} :catch_84
    .catchall {:try_start_4c .. :try_end_83} :catchall_ab

    .line 623
    :cond_83
    goto :goto_a5

    .line 620
    :catch_84
    move-exception v3

    .line 621
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_85
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_9e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyOpptSubChanged: RemoteException r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 622
    :cond_9e
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_a5
    :goto_a5
    goto :goto_3a

    .line 626
    :cond_a6
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_85 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public notifyOtaspChanged(II)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "otaspMode"  # I

    .line 1620
    const-string/jumbo v0, "notifyOtaspChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1621
    return-void

    .line 1623
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1624
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1625
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1626
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aput p2, v2, v0

    .line 1627
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1628
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1629
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1631
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1634
    goto :goto_4b

    .line 1632
    :catch_43
    move-exception v4

    .line 1633
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_44
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1638
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1639
    monitor-exit v1

    .line 1640
    return-void

    .line 1639
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 8
    .param p1, "capability"  # Landroid/telephony/PhoneCapability;

    .line 1841
    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1842
    return-void

    .line 1845
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_23

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyPhoneCapabilityChanged: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1849
    :cond_23
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1850
    :try_start_26
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 1852
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1853
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_56

    if-eqz v3, :cond_50

    .line 1856
    :try_start_42
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_56

    .line 1859
    goto :goto_50

    .line 1857
    :catch_48
    move-exception v3

    .line 1858
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_49
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    goto :goto_2e

    .line 1862
    :cond_51
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1863
    monitor-exit v0

    .line 1864
    return-void

    .line 1863
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public notifyPhysicalChannelConfiguration(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1280
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V

    .line 1282
    return-void
.end method

.method public notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V
    .registers 10
    .param p1, "subId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1286
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const-string/jumbo v0, "notifyPhysicalChannelConfiguration()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1287
    return-void

    .line 1290
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyPhysicalChannelConfiguration: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1294
    :cond_2b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1295
    :try_start_2e
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1296
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1297
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1299
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x100000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_8e

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1301
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_94

    if-eqz v4, :cond_8e

    .line 1303
    :try_start_5f
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v4, :cond_80

    .line 1304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPhysicalChannelConfiguration: mPhysicalChannelConfigs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1307
    :cond_80
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_85} :catch_86
    .catchall {:try_start_5f .. :try_end_85} :catchall_94

    .line 1310
    goto :goto_8e

    .line 1308
    :catch_86
    move-exception v4

    .line 1309
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_87
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    goto :goto_43

    .line 1314
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1315
    .end local v1  # "phoneId":I
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public notifyPreciseCallState(IIIII)V
    .registers 15
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "ringingCallState"  # I
    .param p4, "foregroundCallState"  # I
    .param p5, "backgroundCallState"  # I

    .line 1644
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1645
    return-void

    .line 1647
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1648
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1649
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput p3, v1, p1

    .line 1650
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput p4, v1, p1

    .line 1651
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput p5, v1, p1

    .line 1652
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v8, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    aput-object v8, v1, p1

    .line 1657
    const/4 v1, 0x1

    .line 1658
    .local v1, "notifyCallAttributes":Z
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    if-nez v2, :cond_3b

    .line 1659
    const-string/jumbo v2, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1661
    const/4 v1, 0x0

    goto :goto_69

    .line 1665
    :cond_3b
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    .line 1667
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 1668
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    new-instance v3, Landroid/telephony/CallQuality;

    invoke-direct {v3}, Landroid/telephony/CallQuality;-><init>()V

    aput-object v3, v2, p1

    .line 1670
    :cond_54
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v3, Landroid/telephony/CallAttributes;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v6, v6, p1

    invoke-direct {v3, v4, v5, v6}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v3, v2, p1

    .line 1674
    :goto_69
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1675
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1676
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_89
    .catchall {:try_start_d .. :try_end_89} :catchall_ca

    if-eqz v4, :cond_9d

    .line 1678
    :try_start_8b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_95
    .catchall {:try_start_8b .. :try_end_94} :catchall_ca

    .line 1681
    goto :goto_9d

    .line 1679
    :catch_95
    move-exception v4

    .line 1680
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_96
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_9d
    :goto_9d
    if-eqz v1, :cond_c1

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_c1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1685
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_ad
    .catchall {:try_start_96 .. :try_end_ad} :catchall_ca

    if-eqz v4, :cond_c1

    .line 1687
    :try_start_af
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b8} :catch_b9
    .catchall {:try_start_af .. :try_end_b8} :catchall_ca

    .line 1690
    goto :goto_c1

    .line 1688
    :catch_b9
    move-exception v4

    .line 1689
    .restart local v4  # "ex":Landroid/os/RemoteException;
    :try_start_ba
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_c1
    :goto_c1
    goto :goto_6f

    .line 1694
    .end local v1  # "notifyCallAttributes":Z
    :cond_c2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1695
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_ca

    .line 1696
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(III)V

    .line 1698
    return-void

    .line 1695
    :catchall_ca
    move-exception v1

    :try_start_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v1
.end method

.method public notifyPreciseDataConnectionFailed(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "apnType"  # Ljava/lang/String;
    .param p4, "apn"  # Ljava/lang/String;
    .param p5, "failCause"  # I

    .line 1755
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1756
    return-void

    .line 1758
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1759
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1760
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1762
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v9, v1, p1

    .line 1763
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1764
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1766
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_6a

    if-eqz v3, :cond_5a

    .line 1768
    :try_start_48
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_6a

    .line 1772
    goto :goto_5a

    .line 1770
    :catch_52
    move-exception v3

    .line 1771
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_53
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    goto :goto_2c

    .line 1777
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1778
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_6a

    .line 1779
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1781
    return-void

    .line 1778
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public notifyRadioPowerStateChanged(III)V
    .registers 10
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "state"  # I

    .line 1905
    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1906
    return-void

    .line 1909
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyRadioPowerStateChanged: state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1913
    :cond_2b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1914
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1915
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 1917
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1918
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_66

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1920
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_6c

    if-eqz v3, :cond_66

    .line 1922
    :try_start_58
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e
    .catchall {:try_start_58 .. :try_end_5d} :catchall_6c

    .line 1925
    goto :goto_66

    .line 1923
    :catch_5e
    move-exception v3

    .line 1924
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    goto :goto_3c

    .line 1930
    :cond_67
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1931
    monitor-exit v0

    .line 1932
    return-void

    .line 1931
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "state"  # Landroid/telephony/ServiceState;

    .line 1040
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1041
    return-void

    .line 1044
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1045
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "str":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v2, :cond_36

    .line 1048
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1050
    :cond_36
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1052
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v2, p1

    .line 1054
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1055
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_88

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyServiceStateForSubscriber: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1059
    :cond_88
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5

    if-eqz v5, :cond_f4

    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1060
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v5
    :try_end_95
    .catchall {:try_start_d .. :try_end_95} :catchall_114

    if-eqz v5, :cond_f4

    .line 1064
    const/16 v5, 0x1d

    :try_start_99
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1065
    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .local v4, "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_b5

    .line 1066
    .end local v4  # "stateToSend":Landroid/telephony/ServiceState;
    :cond_a5
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 1067
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .restart local v4  # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_b5

    .line 1069
    .end local v4  # "stateToSend":Landroid/telephony/ServiceState;
    :cond_b1
    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1071
    .restart local v4  # "stateToSend":Landroid/telephony/ServiceState;
    :goto_b5
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v5, :cond_e6

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyServiceStateForSubscriber: callback.onSSC r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1076
    :cond_e6
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_eb} :catch_ec
    .catchall {:try_start_99 .. :try_end_eb} :catchall_114

    .line 1079
    .end local v4  # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_f4

    .line 1077
    :catch_ec
    move-exception v4

    .line 1078
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_ed
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_f4
    :goto_f4
    goto/16 :goto_4b

    :cond_f6
    goto :goto_10c

    .line 1083
    :cond_f7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1085
    :goto_10c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1086
    .end local v1  # "str":Ljava/lang/String;
    monitor-exit v0
    :try_end_110
    .catchall {:try_start_ed .. :try_end_110} :catchall_114

    .line 1087
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 1088
    return-void

    .line 1086
    :catchall_114
    move-exception v1

    :try_start_115
    monitor-exit v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v1
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 11
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "signalStrength"  # Landroid/telephony/SignalStrength;

    .line 1153
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1154
    return-void

    .line 1156
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_33

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySignalStrengthForPhoneId: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1161
    :cond_33
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1162
    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 1163
    sget-boolean v1, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: valid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1164
    :cond_55
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1165
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1166
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_9c

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySignalStrengthForPhoneId: r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1170
    :cond_9c
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_f0

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1172
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_aa
    .catchall {:try_start_36 .. :try_end_aa} :catchall_171

    if-eqz v3, :cond_f0

    .line 1174
    :try_start_ac
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v3, :cond_dd

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySignalStrengthForPhoneId: callback.onSsS r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1179
    :cond_dd
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_e7} :catch_e8
    .catchall {:try_start_ac .. :try_end_e7} :catchall_171

    .line 1182
    goto :goto_f0

    .line 1180
    :catch_e8
    move-exception v3

    .line 1181
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_e9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_f0
    :goto_f0
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_151

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1185
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_fd
    .catchall {:try_start_e9 .. :try_end_fd} :catchall_171

    if-eqz v3, :cond_151

    .line 1187
    :try_start_ff
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 1188
    .local v3, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v3, v4, :cond_109

    const/4 v4, -0x1

    goto :goto_10a

    :cond_109
    move v4, v3

    .line 1189
    .local v4, "ss":I
    :goto_10a
    sget-boolean v5, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v5, :cond_143

    .line 1190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifySignalStrengthForPhoneId: callback.onSS r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " gsmSS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1194
    :cond_143
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_148} :catch_149
    .catchall {:try_start_ff .. :try_end_148} :catchall_171

    .line 1197
    .end local v3  # "gsmSignalStrength":I
    .end local v4  # "ss":I
    goto :goto_151

    .line 1195
    :catch_149
    move-exception v3

    .line 1196
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_14a
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_151
    :goto_151
    goto/16 :goto_5f

    :cond_153
    goto :goto_169

    .line 1201
    :cond_154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1203
    :goto_169
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1204
    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_14a .. :try_end_16d} :catchall_171

    .line 1205
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 1206
    return-void

    .line 1204
    :catchall_171
    move-exception v1

    :try_start_172
    monitor-exit v0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v1
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 12
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "activationType"  # I
    .param p4, "activationState"  # I

    .line 1092
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1093
    return-void

    .line 1095
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_3c

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySimActivationStateForPhoneId: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1099
    :cond_3c
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1100
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 1101
    const/4 v1, 0x1

    if-eqz p3, :cond_51

    if-eq p3, v1, :cond_4c

    .line 1109
    monitor-exit v0

    return-void

    .line 1106
    :cond_4c
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v2, p1

    .line 1107
    goto :goto_56

    .line 1103
    :cond_51
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v2, p1

    .line 1104
    nop

    .line 1111
    :goto_56
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1112
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_a2

    .line 1113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySimActivationStateForPhoneId: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_3f .. :try_end_a2} :catchall_15c

    .line 1118
    :cond_a2
    if-nez p3, :cond_ed

    const/high16 v4, 0x20000

    .line 1119
    :try_start_a6
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_ed

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1121
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 1122
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v4, :cond_e5

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyVoiceActivationStateForPhoneId: callback.onVASC r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1127
    :cond_e5
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto :goto_ed

    .line 1140
    :catch_eb
    move-exception v4

    goto :goto_136

    .line 1129
    :cond_ed
    :goto_ed
    if-ne p3, v1, :cond_13e

    const/high16 v4, 0x40000

    .line 1130
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_13e

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1132
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 1133
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v4, :cond_130

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyDataActivationStateForPhoneId: callback.onDASC r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1138
    :cond_130
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_135} :catch_eb
    .catchall {:try_start_a6 .. :try_end_135} :catchall_15c

    goto :goto_13e

    .line 1141
    .local v4, "ex":Landroid/os/RemoteException;
    :goto_136
    :try_start_136
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13f

    .line 1142
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_13e
    :goto_13e
    nop

    .line 1143
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_13f
    goto/16 :goto_5c

    :cond_141
    goto :goto_157

    .line 1145
    :cond_142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1147
    :goto_157
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1148
    monitor-exit v0

    .line 1149
    return-void

    .line 1148
    :catchall_15c
    move-exception v1

    monitor-exit v0
    :try_end_15e
    .catchall {:try_start_136 .. :try_end_15e} :catchall_15c

    throw v1
.end method

.method public notifySrvccStateChanged(II)V
    .registers 10
    .param p1, "subId"  # I
    .param p2, "state"  # I

    .line 1785
    const-string/jumbo v0, "notifySrvccStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1786
    return-void

    .line 1788
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_2b

    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySrvccStateChanged: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " srvccState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1791
    :cond_2b
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1792
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1793
    :try_start_32
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1794
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 1795
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1796
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_8d

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1798
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_93

    if-eqz v4, :cond_8d

    .line 1800
    :try_start_5e
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->DBG_LOC:Z

    if-eqz v4, :cond_7f

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySrvccStateChanged: mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1803
    :cond_7f
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_84} :catch_85
    .catchall {:try_start_5e .. :try_end_84} :catchall_93

    .line 1806
    goto :goto_8d

    .line 1804
    :catch_85
    move-exception v4

    .line 1805
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_86
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v3  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_8d
    :goto_8d
    goto :goto_42

    .line 1810
    :cond_8e
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1811
    monitor-exit v1

    .line 1812
    return-void

    .line 1811
    :catchall_93
    move-exception v2

    monitor-exit v1
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_93

    throw v2
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 7

    .line 579
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "notifySubscriptionInfoChanged:"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 580
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 581
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_2c

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 583
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 585
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 586
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 587
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 588
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_ab

    if-eqz v3, :cond_a5

    .line 590
    :try_start_4c
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySubscriptionInfoChanged: call osc to r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 591
    :cond_65
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 592
    sget-boolean v3, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v3, :cond_83

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySubscriptionInfoChanged: done osc to r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_83} :catch_84
    .catchall {:try_start_4c .. :try_end_83} :catchall_ab

    .line 596
    :cond_83
    goto :goto_a5

    .line 593
    :catch_84
    move-exception v3

    .line 594
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_85
    sget-boolean v4, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v4, :cond_9e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: RemoteException r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 595
    :cond_9e
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_a5
    :goto_a5
    goto :goto_3a

    .line 599
    :cond_a6
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 600
    monitor-exit v0

    .line 601
    return-void

    .line 600
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_85 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"  # I
    .param p2, "subId"  # I
    .param p3, "state"  # Z

    .line 1347
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1348
    return-void

    .line 1350
    :cond_a
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->VDBG:Z

    if-eqz v0, :cond_33

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUserMobileDataStateChangedForSubscriberPhoneID: PhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1354
    :cond_33
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1355
    :try_start_36
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1356
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 1357
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1358
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_70

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1360
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_76

    if-eqz v3, :cond_70

    .line 1362
    :try_start_62
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_68
    .catchall {:try_start_62 .. :try_end_67} :catchall_76

    .line 1365
    goto :goto_70

    .line 1363
    :catch_68
    move-exception v3

    .line 1364
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_69
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    .end local v2  # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_70
    :goto_70
    goto :goto_46

    .line 1369
    :cond_71
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1370
    monitor-exit v0

    .line 1371
    return-void

    .line 1370
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkgForDebug"  # Ljava/lang/String;
    .param p2, "callback"  # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 527
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->DBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "listen oscl: Unregister"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 528
    :cond_a
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 529
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .line 471
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    return-void
.end method
