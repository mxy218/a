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
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_COARSE_LOCATION_PERMISSION_MASK:I = 0x0

.field static final ENFORCE_FINE_LOCATION_PERMISSION_MASK:I = 0x410

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x100000c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = false


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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 222
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 224
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 236
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 240
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 242
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 244
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 246
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 249
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 251
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 274
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 331
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 372
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 373
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 375
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    .line 377
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 378
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 379
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 380
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 381
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 382
    new-array v4, p1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 383
    new-array v4, p1, [Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 384
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 385
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 386
    new-array v4, p1, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 387
    new-array v4, p1, [Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 388
    new-array v4, p1, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 389
    new-array v4, p1, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 390
    new-array v4, p1, [Landroid/os/Bundle;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 391
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 392
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    .line 393
    new-array v4, p1, [Landroid/telephony/PreciseCallState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 394
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 395
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 396
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 397
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 398
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 399
    new-array v4, p1, [Landroid/telephony/CallQuality;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 400
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 401
    new-array v4, p1, [Landroid/telephony/CallAttributes;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 402
    new-array v4, p1, [Landroid/telephony/PreciseDataConnectionState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 406
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 407
    move v4, v0

    :goto_de
    if-ge v4, p1, :cond_188

    .line 408
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v5, v4

    .line 409
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v5, v4

    .line 410
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v2, v5, v4

    .line 411
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v5, v4

    .line 412
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v5, v4

    .line 413
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 414
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v6, Landroid/telephony/ServiceState;

    invoke-direct {v6}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v6, v5, v4

    .line 415
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v6, v5, v4

    .line 416
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v5, v4

    .line 417
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v5, v4

    .line 418
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v5, v4

    .line 419
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v5, v4

    .line 420
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 421
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 422
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v2, v5, v4

    .line 423
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 424
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    const/4 v6, 0x1

    aput v6, v5, v4

    .line 425
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v2, v5, v4

    .line 426
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v2, v5, v4

    .line 427
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    new-instance v6, Landroid/telephony/CallQuality;

    invoke-direct {v6}, Landroid/telephony/CallQuality;-><init>()V

    aput-object v6, v5, v4

    .line 428
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v6, Landroid/telephony/CallAttributes;

    new-instance v7, Landroid/telephony/PreciseCallState;

    invoke-direct {v7}, Landroid/telephony/PreciseCallState;-><init>()V

    new-instance v8, Landroid/telephony/CallQuality;

    invoke-direct {v8}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {v6, v7, v0, v8}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v6, v5, v4

    .line 430
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v5, v4

    .line 431
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v6, Landroid/telephony/PreciseCallState;

    invoke-direct {v6}, Landroid/telephony/PreciseCallState;-><init>()V

    aput-object v6, v5, v4

    .line 432
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v5, v4

    .line 433
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v5, v4

    .line 434
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v5, v4

    .line 435
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v6, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v6}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    aput-object v6, v5, v4

    .line 407
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_de

    .line 440
    :cond_188
    if-eqz v3, :cond_197

    .line 441
    nop

    :goto_18b
    if-ge v0, p1, :cond_197

    .line 442
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_18b

    .line 446
    :cond_197
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p0

    return p0
.end method

.method private add(Landroid/os/IBinder;IZ)Lcom/android/server/TelephonyRegistry$Record;
    .registers 11

    .line 904
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 905
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 907
    nop

    .line 908
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_26

    .line 909
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 910
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1d

    .line 912
    monitor-exit v0

    return-object v5

    .line 914
    :cond_1d
    iget v5, v5, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    if-ne v5, p2, :cond_23

    .line 915
    add-int/lit8 v4, v4, 0x1

    .line 908
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 919
    :cond_26
    if-eqz p3, :cond_4c

    const/16 v1, 0x32

    if-ge v4, v1, :cond_2d

    goto :goto_4c

    .line 920
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Pid "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has exceeded the number of permissibleregistered listeners. Ignoring request to add."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 923
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 924
    :cond_4c
    :goto_4c
    if-eqz p3, :cond_70

    const/16 p3, 0x19

    if-lt v4, p3, :cond_70

    .line 926
    const-string p3, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has exceeded half the number of permissibleregistered listeners. Now at "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_70
    new-instance p2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 931
    iput-object p1, p2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 932
    new-instance v1, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v1, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v1, p2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_8f

    .line 935
    :try_start_7f
    iget-object v1, p2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_84} :catch_8c
    .catchall {:try_start_7f .. :try_end_84} :catchall_8f

    .line 940
    nop

    .line 942
    :try_start_85
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    monitor-exit v0

    .line 946
    return-object p2

    .line 936
    :catch_8c
    move-exception p1

    .line 939
    monitor-exit v0

    return-object p3

    .line 944
    :catchall_8f
    move-exception p1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .registers 9

    .line 2100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2102
    const/16 v2, 0x5f

    if-nez p1, :cond_12

    .line 2103
    :try_start_8
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    .line 2104
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I

    goto :goto_22

    .line 2107
    :cond_12
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    .line 2108
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_21
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_22

    .line 2114
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2111
    :catch_21
    move-exception v2

    .line 2114
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    nop

    .line 2117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    nop

    .line 2119
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2118
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    const/4 p1, -0x1

    if-eq p4, p1, :cond_4f

    .line 2124
    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2125
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2126
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2129
    :cond_4f
    if-eq p3, p1, :cond_57

    .line 2130
    const-string/jumbo p1, "slot"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2134
    :cond_57
    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2137
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2138
    const-string p3, "incoming_number"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2142
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2144
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 p4, 0x33

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v0, p3, v1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 2147
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p4, "android.permission.READ_CALL_LOG"

    filled-new-array {v1, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 2150
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;I)V
    .registers 5

    .line 2184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2185
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2187
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2188
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .registers 11

    .line 2159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2160
    nop

    .line 2161
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2160
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    const/4 p1, 0x1

    if-nez p2, :cond_1f

    .line 2163
    const-string/jumbo p2, "networkUnvailable"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2165
    :cond_1f
    if-eqz p5, :cond_31

    .line 2166
    const-string p2, "linkProperties"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2167
    invoke-virtual {p5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    .line 2168
    if-eqz p2, :cond_31

    .line 2169
    const-string p5, "iface"

    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2172
    :cond_31
    if-eqz p6, :cond_39

    .line 2173
    const-string/jumbo p2, "networkCapabilities"

    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2175
    :cond_39
    if-eqz p7, :cond_41

    const-string/jumbo p2, "networkRoaming"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2177
    :cond_41
    const-string p1, "apn"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    const-string p1, "apnType"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2180
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2181
    return-void
.end method

.method private broadcastPreciseCallStateChanged(III)V
    .registers 6

    .line 2192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2193
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    const-string p1, "foreground_state"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2195
    const-string p1, "background_state"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2196
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .registers 9

    .line 2203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2204
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2205
    const-string/jumbo p1, "networkType"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2206
    if-eqz p3, :cond_1a

    const-string p1, "apnType"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    :cond_1a
    if-eqz p4, :cond_21

    const-string p1, "apn"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2208
    :cond_21
    if-eqz p5, :cond_28

    .line 2209
    const-string p1, "linkProperties"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2211
    :cond_28
    const-string p1, "failCause"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2213
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2215
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .registers 8

    .line 2051
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2053
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    goto :goto_14

    .line 2057
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2054
    :catch_13
    move-exception v2

    .line 2057
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2058
    nop

    .line 2060
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2061
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2062
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2063
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2064
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2066
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2067
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2068
    const-string/jumbo p1, "slot"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2069
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2070
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .registers 7

    .line 2074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2076
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    goto :goto_10

    .line 2080
    :catchall_a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2077
    :catch_f
    move-exception v2

    .line 2080
    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2081
    nop

    .line 2083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2084
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2085
    invoke-virtual {p1, v1}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2086
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2087
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    const-string/jumbo p1, "slot"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2090
    return-void
.end method

.method private checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5

    .line 2401
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2403
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2404
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2405
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2406
    const-string v0, "TelephonyRegistry push"

    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2407
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2408
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2409
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 2411
    new-instance p2, Lcom/android/server/-$$Lambda$TelephonyRegistry$KVoaCNOF-BlPejFaEBKjW11o5Po;

    invoke-direct {p2, p0, p1}, Lcom/android/server/-$$Lambda$TelephonyRegistry$KVoaCNOF-BlPejFaEBKjW11o5Po;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5

    .line 2383
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2385
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2386
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2387
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2388
    const-string v0, "TelephonyRegistry push"

    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2389
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2390
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 2391
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 2393
    new-instance p2, Lcom/android/server/-$$Lambda$TelephonyRegistry$H1zNBtijaPaJZvAGiWo3ze1HvCk;

    invoke-direct {p2, p0, p1}, Lcom/android/server/-$$Lambda$TelephonyRegistry$H1zNBtijaPaJZvAGiWo3ze1HvCk;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 2243
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 2245
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

    .line 2246
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2247
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2250
    nop

    .line 2251
    and-int/lit8 v1, p1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    .line 2252
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2253
    move v1, v2

    goto :goto_3e

    .line 2251
    :cond_3d
    move v1, v3

    .line 2256
    :goto_3e
    and-int/lit16 v4, p1, 0x410

    if-eqz v4, :cond_48

    .line 2258
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2259
    move v1, v2

    .line 2262
    :cond_48
    if-eqz v1, :cond_7f

    .line 2263
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2265
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 2264
    invoke-static {v1, v0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 2266
    sget-object v1, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_63

    const/4 v1, 0x2

    if-eq v0, v1, :cond_62

    goto :goto_7f

    .line 2271
    :cond_62
    return v3

    .line 2268
    :cond_63
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to listen for events "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to insufficient location permissions."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2275
    :cond_7f
    :goto_7f
    const v0, 0x100000c

    and-int/2addr v0, p1

    if-eqz v0, :cond_8e

    .line 2276
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8e

    .line 2278
    return v3

    .line 2282
    :cond_8e
    and-int/lit16 p2, p1, 0x1800

    const-string p3, "android.permission.READ_PRECISE_PHONE_STATE"

    const/4 p4, 0x0

    if-eqz p2, :cond_9a

    .line 2283
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_9a
    const p2, 0x8000

    and-int/2addr p2, p1

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    if-eqz p2, :cond_a7

    .line 2288
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :cond_a7
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_b0

    .line 2293
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :cond_b0
    const/high16 p2, 0x2000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_ba

    .line 2298
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    :cond_ba
    const/high16 p2, 0x4000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_c4

    .line 2303
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    :cond_c4
    const/high16 p2, 0x800000

    and-int/2addr p2, p1

    if-eqz p2, :cond_ce

    .line 2308
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    :cond_ce
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-eqz p2, :cond_d8

    .line 2313
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_d8
    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_e2

    .line 2318
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_e2
    return v2
.end method

.method private checkNotifyPermission()Z
    .registers 3

    .line 2237
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

    .line 2227
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2228
    const/4 p1, 0x1

    return p1

    .line 2230
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2233
    const/4 p1, 0x0

    return p1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 7

    .line 2419
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 2421
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1d

    .line 2425
    :try_start_6
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    .line 2429
    goto :goto_1d

    .line 2427
    :catch_15
    move-exception v1

    .line 2428
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_1d
    :goto_1d
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_38

    .line 2434
    :try_start_21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 2438
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2f} :catch_30

    .line 2441
    goto :goto_38

    .line 2439
    :catch_30
    move-exception v1

    .line 2440
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    :cond_38
    :goto_38
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_59

    .line 2446
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 2447
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 2452
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v3, 0x63

    if-ne v1, v3, :cond_4c

    const/4 v1, -0x1

    goto :goto_4d

    .line 2453
    :cond_4c
    nop

    .line 2452
    :goto_4d
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_50} :catch_51

    .line 2456
    goto :goto_59

    .line 2454
    :catch_51
    move-exception v1

    .line 2455
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    :cond_59
    :goto_59
    const/16 v1, 0x400

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    const/16 v2, 0x1d

    if-eqz v1, :cond_7f

    .line 2465
    :try_start_63
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2466
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_76} :catch_77

    .line 2470
    :cond_76
    goto :goto_7f

    .line 2468
    :catch_77
    move-exception v1

    .line 2469
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    :cond_7f
    :goto_7f
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_96

    .line 2479
    :try_start_84
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8d} :catch_8e

    .line 2482
    goto :goto_96

    .line 2480
    :catch_8e
    move-exception v1

    .line 2481
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2485
    :cond_96
    :goto_96
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_ac

    .line 2491
    :try_start_9a
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a3} :catch_a4

    .line 2495
    goto :goto_ac

    .line 2493
    :catch_a4
    move-exception v1

    .line 2494
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    :cond_ac
    :goto_ac
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_c2

    .line 2504
    :try_start_b0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v3, v3, p2

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b9} :catch_ba

    .line 2508
    goto :goto_c2

    .line 2506
    :catch_ba
    move-exception v1

    .line 2507
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    :cond_c2
    :goto_c2
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 2515
    :try_start_ca
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 2516
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_de} :catch_df

    .line 2520
    :cond_de
    goto :goto_e7

    .line 2518
    :catch_df
    move-exception v1

    .line 2519
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    :cond_e7
    :goto_e7
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_101

    .line 2531
    :try_start_eb
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p2, v2, p2

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f8} :catch_f9

    .line 2535
    goto :goto_101

    .line 2533
    :catch_f9
    move-exception p2

    .line 2534
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    :cond_101
    :goto_101
    return-void
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 3

    .line 2218
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2219
    return-void

    .line 2223
    :cond_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 2222
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    .line 2224
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 3

    .line 898
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object p1, p1, p2

    goto :goto_d

    :cond_b
    const-string p1, ""

    :goto_d
    return-object p1
.end method

.method private handleRemoveListLocked()V
    .registers 3

    .line 2326
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2328
    if-lez v0, :cond_23

    .line 2329
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2330
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2331
    goto :goto_e

    .line 2332
    :cond_1e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2334
    :cond_23
    return-void
.end method

.method static synthetic lambda$notifyCarrierNetworkChange$0(I)Z
    .registers 1

    .line 1220
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(I)Z

    move-result p0

    return p0
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 13

    .line 625
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 626
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listen: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 635
    if-eqz p3, :cond_344

    .line 639
    const-string v0, "listen"

    invoke-direct {p0, p3, p5, p1, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 640
    return-void

    .line 643
    :cond_5e
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 644
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 646
    :try_start_65
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_87

    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_87

    .line 650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_87

    move v3, v6

    goto :goto_88

    :cond_87
    move v3, v5

    .line 651
    :goto_88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v2

    .line 653
    if-nez v2, :cond_94

    .line 654
    monitor-exit v1

    return-void

    .line 657
    :cond_94
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 658
    iput-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 659
    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 664
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 665
    const p1, 0x7fffffff

    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_b6

    .line 667
    :cond_b4
    iput p5, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 669
    :goto_b6
    iput v0, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 670
    iput p3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 674
    if-eqz p4, :cond_33f

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p1
    :try_end_c0
    .catchall {:try_start_65 .. :try_end_c0} :catchall_341

    if-eqz p1, :cond_33f

    .line 675
    and-int/lit8 p1, p3, 0x1

    const/16 p2, 0x1d

    if-eqz p1, :cond_fd

    .line 678
    :try_start_c8
    new-instance p1, Landroid/telephony/ServiceState;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object p4, p4, v0

    invoke-direct {p1, p4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 679
    invoke-direct {p0, v2, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_dd

    .line 680
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_f6

    .line 681
    :cond_dd
    invoke-direct {p0, v2, p2}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_ed

    .line 682
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_f6

    .line 684
    :cond_ed
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_f6} :catch_f7
    .catchall {:try_start_c8 .. :try_end_f6} :catchall_341

    .line 688
    :goto_f6
    goto :goto_fd

    .line 686
    :catch_f7
    move-exception p1

    .line 687
    :try_start_f8
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_341

    .line 690
    :cond_fd
    :goto_fd
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_11c

    .line 692
    :try_start_101
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object p1, p1, v0

    .line 693
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    .line 694
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 p5, 0x63

    if-ne p1, p5, :cond_111

    const/4 p1, -0x1

    goto :goto_112

    .line 695
    :cond_111
    nop

    .line 694
    :goto_112
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_115} :catch_116
    .catchall {:try_start_101 .. :try_end_115} :catchall_341

    .line 698
    goto :goto_11c

    .line 696
    :catch_116
    move-exception p1

    .line 697
    :try_start_117
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_11c
    .catchall {:try_start_117 .. :try_end_11c} :catchall_341

    .line 700
    :cond_11c
    :goto_11c
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_130

    .line 702
    :try_start_120
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean p4, p4, v0

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_129} :catch_12a
    .catchall {:try_start_120 .. :try_end_129} :catchall_341

    .line 706
    goto :goto_130

    .line 704
    :catch_12a
    move-exception p1

    .line 705
    :try_start_12b
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_341

    .line 708
    :cond_130
    :goto_130
    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_144

    .line 710
    :try_start_134
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean p4, p4, v0

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_13d} :catch_13e
    .catchall {:try_start_134 .. :try_end_13d} :catchall_341

    .line 714
    goto :goto_144

    .line 712
    :catch_13e
    move-exception p1

    .line 713
    :try_start_13f
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 716
    :cond_144
    :goto_144
    const/16 p1, 0x10

    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p1
    :try_end_14a
    .catchall {:try_start_13f .. :try_end_14a} :catchall_341

    if-eqz p1, :cond_167

    .line 720
    :try_start_14c
    invoke-direct {p0, v2, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p1

    if-eqz p1, :cond_160

    .line 721
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance p4, Landroid/os/Bundle;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object p5, p5, v0

    invoke-direct {p4, p5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_160} :catch_161
    .catchall {:try_start_14c .. :try_end_160} :catchall_341

    .line 726
    :cond_160
    goto :goto_167

    .line 724
    :catch_161
    move-exception p1

    .line 725
    :try_start_162
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_167
    .catchall {:try_start_162 .. :try_end_167} :catchall_341

    .line 728
    :cond_167
    :goto_167
    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_17f

    .line 730
    :try_start_16b
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget p4, p4, v0

    .line 731
    invoke-direct {p0, v2, v0}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object p5

    .line 730
    invoke-interface {p1, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_178} :catch_179
    .catchall {:try_start_16b .. :try_end_178} :catchall_341

    .line 734
    goto :goto_17f

    .line 732
    :catch_179
    move-exception p1

    .line 733
    :try_start_17a
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_341

    .line 736
    :cond_17f
    :goto_17f
    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_197

    .line 738
    :try_start_183
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget p4, p4, v0

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p5, p5, v0

    invoke-interface {p1, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_190} :catch_191
    .catchall {:try_start_183 .. :try_end_190} :catchall_341

    .line 742
    goto :goto_197

    .line 740
    :catch_191
    move-exception p1

    .line 741
    :try_start_192
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_341

    .line 744
    :cond_197
    :goto_197
    and-int/lit16 p1, p3, 0x80

    if-eqz p1, :cond_1ab

    .line 746
    :try_start_19b
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget p4, p4, v0

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1a4
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_19b .. :try_end_1a4} :catchall_341

    .line 749
    goto :goto_1ab

    .line 747
    :catch_1a5
    move-exception p1

    .line 748
    :try_start_1a6
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1ab
    .catchall {:try_start_1a6 .. :try_end_1ab} :catchall_341

    .line 751
    :cond_1ab
    :goto_1ab
    and-int/lit16 p1, p3, 0x100

    if-eqz p1, :cond_1bf

    .line 753
    :try_start_1af
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object p4, p4, v0

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1b8
    .catch Landroid/os/RemoteException; {:try_start_1af .. :try_end_1b8} :catch_1b9
    .catchall {:try_start_1af .. :try_end_1b8} :catchall_341

    .line 756
    goto :goto_1bf

    .line 754
    :catch_1b9
    move-exception p1

    .line 755
    :try_start_1ba
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1bf
    .catchall {:try_start_1ba .. :try_end_1bf} :catchall_341

    .line 758
    :cond_1bf
    :goto_1bf
    and-int/lit16 p1, p3, 0x200

    if-eqz p1, :cond_1d3

    .line 760
    :try_start_1c3
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aget p4, p4, v0

    invoke-interface {p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1cc} :catch_1cd
    .catchall {:try_start_1c3 .. :try_end_1cc} :catchall_341

    .line 763
    goto :goto_1d3

    .line 761
    :catch_1cd
    move-exception p1

    .line 762
    :try_start_1ce
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 765
    :cond_1d3
    :goto_1d3
    const/16 p1, 0x400

    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p1
    :try_end_1d9
    .catchall {:try_start_1ce .. :try_end_1d9} :catchall_341

    if-eqz p1, :cond_1f5

    .line 769
    :try_start_1db
    invoke-direct {p0, v2, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p1

    if-eqz p1, :cond_1ee

    .line 770
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1ee
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1ee} :catch_1ef
    .catchall {:try_start_1db .. :try_end_1ee} :catchall_341

    .line 774
    :cond_1ee
    goto :goto_1f5

    .line 772
    :catch_1ef
    move-exception p1

    .line 773
    :try_start_1f0
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1f5
    .catchall {:try_start_1f0 .. :try_end_1f5} :catchall_341

    .line 776
    :cond_1f5
    :goto_1f5
    and-int/lit16 p1, p3, 0x800

    if-eqz p1, :cond_209

    .line 778
    :try_start_1f9
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_202
    .catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_202} :catch_203
    .catchall {:try_start_1f9 .. :try_end_202} :catchall_341

    .line 781
    goto :goto_209

    .line 779
    :catch_203
    move-exception p1

    .line 780
    :try_start_204
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_209
    .catchall {:try_start_204 .. :try_end_209} :catchall_341

    .line 783
    :cond_209
    :goto_209
    const/high16 p1, 0x2000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_222

    .line 785
    :try_start_20e
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget p2, p2, v0

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget p4, p4, v0

    invoke-interface {p1, p2, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_21b
    .catch Landroid/os/RemoteException; {:try_start_20e .. :try_end_21b} :catch_21c
    .catchall {:try_start_20e .. :try_end_21b} :catchall_341

    .line 789
    goto :goto_222

    .line 787
    :catch_21c
    move-exception p1

    .line 788
    :try_start_21d
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_222
    .catchall {:try_start_21d .. :try_end_222} :catchall_341

    .line 791
    :cond_222
    :goto_222
    const/high16 p1, 0x8000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_23b

    .line 793
    :try_start_227
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_234
    .catch Landroid/os/RemoteException; {:try_start_227 .. :try_end_234} :catch_235
    .catchall {:try_start_227 .. :try_end_234} :catchall_341

    .line 796
    goto :goto_23b

    .line 794
    :catch_235
    move-exception p1

    .line 795
    :try_start_236
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_23b
    .catchall {:try_start_236 .. :try_end_23b} :catchall_341

    .line 798
    :cond_23b
    :goto_23b
    and-int/lit16 p1, p3, 0x1000

    if-eqz p1, :cond_24f

    .line 800
    :try_start_23f
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_23f .. :try_end_248} :catch_249
    .catchall {:try_start_23f .. :try_end_248} :catchall_341

    .line 804
    goto :goto_24f

    .line 802
    :catch_249
    move-exception p1

    .line 803
    :try_start_24a
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_24f
    .catchall {:try_start_24a .. :try_end_24f} :catchall_341

    .line 806
    :cond_24f
    :goto_24f
    const/high16 p1, 0x10000

    and-int/2addr p1, p3

    if-eqz p1, :cond_262

    .line 808
    :try_start_254
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_25b
    .catch Landroid/os/RemoteException; {:try_start_254 .. :try_end_25b} :catch_25c
    .catchall {:try_start_254 .. :try_end_25b} :catchall_341

    .line 811
    goto :goto_262

    .line 809
    :catch_25c
    move-exception p1

    .line 810
    :try_start_25d
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_262
    .catchall {:try_start_25d .. :try_end_262} :catchall_341

    .line 813
    :cond_262
    :goto_262
    const/high16 p1, 0x20000

    and-int/2addr p1, p3

    if-eqz p1, :cond_277

    .line 815
    :try_start_267
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_270
    .catch Landroid/os/RemoteException; {:try_start_267 .. :try_end_270} :catch_271
    .catchall {:try_start_267 .. :try_end_270} :catchall_341

    .line 818
    goto :goto_277

    .line 816
    :catch_271
    move-exception p1

    .line 817
    :try_start_272
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_277
    .catchall {:try_start_272 .. :try_end_277} :catchall_341

    .line 820
    :cond_277
    :goto_277
    const/high16 p1, 0x40000

    and-int/2addr p1, p3

    if-eqz p1, :cond_28c

    .line 822
    :try_start_27c
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_285
    .catch Landroid/os/RemoteException; {:try_start_27c .. :try_end_285} :catch_286
    .catchall {:try_start_27c .. :try_end_285} :catchall_341

    .line 825
    goto :goto_28c

    .line 823
    :catch_286
    move-exception p1

    .line 824
    :try_start_287
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_28c
    .catchall {:try_start_287 .. :try_end_28c} :catchall_341

    .line 827
    :cond_28c
    :goto_28c
    const/high16 p1, 0x80000

    and-int/2addr p1, p3

    if-eqz p1, :cond_2a1

    .line 829
    :try_start_291
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_29a
    .catch Landroid/os/RemoteException; {:try_start_291 .. :try_end_29a} :catch_29b
    .catchall {:try_start_291 .. :try_end_29a} :catchall_341

    .line 832
    goto :goto_2a1

    .line 830
    :catch_29b
    move-exception p1

    .line 831
    :try_start_29c
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2a1
    .catchall {:try_start_29c .. :try_end_2a1} :catchall_341

    .line 834
    :cond_2a1
    :goto_2a1
    const/high16 p1, 0x100000

    and-int/2addr p1, p3

    if-eqz p1, :cond_2ba

    .line 836
    :try_start_2a6
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 836
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_2b3
    .catch Landroid/os/RemoteException; {:try_start_2a6 .. :try_end_2b3} :catch_2b4
    .catchall {:try_start_2a6 .. :try_end_2b3} :catchall_341

    .line 840
    goto :goto_2ba

    .line 838
    :catch_2b4
    move-exception p1

    .line 839
    :try_start_2b5
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2ba
    .catchall {:try_start_2b5 .. :try_end_2ba} :catchall_341

    .line 842
    :cond_2ba
    :goto_2ba
    const/high16 p1, 0x1000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_2cd

    .line 844
    :try_start_2bf
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_2c6
    .catch Landroid/os/RemoteException; {:try_start_2bf .. :try_end_2c6} :catch_2c7
    .catchall {:try_start_2bf .. :try_end_2c6} :catchall_341

    .line 847
    goto :goto_2cd

    .line 845
    :catch_2c7
    move-exception p1

    .line 846
    :try_start_2c8
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2cd
    .catchall {:try_start_2c8 .. :try_end_2cd} :catchall_341

    .line 849
    :cond_2cd
    :goto_2cd
    const/high16 p1, 0x200000

    and-int/2addr p1, p3

    if-eqz p1, :cond_2e0

    .line 851
    :try_start_2d2
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2d9
    .catch Landroid/os/RemoteException; {:try_start_2d2 .. :try_end_2d9} :catch_2da
    .catchall {:try_start_2d2 .. :try_end_2d9} :catchall_341

    .line 854
    goto :goto_2e0

    .line 852
    :catch_2da
    move-exception p1

    .line 853
    :try_start_2db
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 856
    :cond_2e0
    :goto_2e0
    const/high16 p1, 0x400000

    and-int/2addr p1, p3

    if-eqz p1, :cond_303

    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    iget p2, v2, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    const-string v3, "listen_active_data_subid_change"

    .line 858
    invoke-static {p1, p2, p4, p5, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_2f3
    .catchall {:try_start_2db .. :try_end_2f3} :catchall_341

    if-eqz p1, :cond_303

    .line 862
    :try_start_2f5
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_2fc
    .catch Landroid/os/RemoteException; {:try_start_2f5 .. :try_end_2fc} :catch_2fd
    .catchall {:try_start_2f5 .. :try_end_2fc} :catchall_341

    .line 865
    goto :goto_303

    .line 863
    :catch_2fd
    move-exception p1

    .line 864
    :try_start_2fe
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_303
    .catchall {:try_start_2fe .. :try_end_303} :catchall_341

    .line 867
    :cond_303
    :goto_303
    const/high16 p1, 0x800000

    and-int/2addr p1, p3

    if-eqz p1, :cond_316

    .line 869
    :try_start_308
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p2, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_30f
    .catch Landroid/os/RemoteException; {:try_start_308 .. :try_end_30f} :catch_310
    .catchall {:try_start_308 .. :try_end_30f} :catchall_341

    .line 872
    goto :goto_316

    .line 870
    :catch_310
    move-exception p1

    .line 871
    :try_start_311
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_316
    .catchall {:try_start_311 .. :try_end_316} :catchall_341

    .line 874
    :cond_316
    :goto_316
    and-int/lit16 p1, p3, 0x4000

    if-eqz p1, :cond_32a

    .line 876
    :try_start_31a
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_323
    .catch Landroid/os/RemoteException; {:try_start_31a .. :try_end_323} :catch_324
    .catchall {:try_start_31a .. :try_end_323} :catchall_341

    .line 879
    goto :goto_32a

    .line 877
    :catch_324
    move-exception p1

    .line 878
    :try_start_325
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_32a
    .catchall {:try_start_325 .. :try_end_32a} :catchall_341

    .line 881
    :cond_32a
    :goto_32a
    const/high16 p1, 0x4000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_33f

    .line 883
    :try_start_32f
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_338
    .catch Landroid/os/RemoteException; {:try_start_32f .. :try_end_338} :catch_339
    .catchall {:try_start_32f .. :try_end_338} :catchall_341

    .line 886
    goto :goto_33f

    .line 884
    :catch_339
    move-exception p1

    .line 885
    :try_start_33a
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 889
    :cond_33f
    :goto_33f
    monitor-exit v1

    .line 890
    goto :goto_34b

    .line 889
    :catchall_341
    move-exception p1

    monitor-exit v1
    :try_end_343
    .catchall {:try_start_33a .. :try_end_343} :catchall_341

    throw p1

    .line 892
    :cond_344
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 894
    :goto_34b
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 2362
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .line 2366
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 8

    .line 950
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 952
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2e

    .line 953
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 954
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_2b

    .line 960
    iget-object v1, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    if-eqz v1, :cond_24

    .line 962
    :try_start_1d
    iget-object v1, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_22
    .catch Ljava/util/NoSuchElementException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_30

    .line 966
    goto :goto_24

    .line 963
    :catch_23
    move-exception p1

    .line 969
    :cond_24
    :goto_24
    :try_start_24
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 970
    monitor-exit v0

    return-void

    .line 952
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 973
    :cond_2e
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 7

    .line 2338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2339
    nop

    .line 2341
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2342
    iget v3, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, v2, :cond_19

    .line 2343
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1f

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 2350
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2351
    nop

    .line 2352
    return p1

    .line 2350
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private validatePhoneId(I)Z
    .registers 3

    .line 2356
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 2358
    :goto_9
    return p1
.end method


# virtual methods
.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 7

    .line 515
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 516
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 525
    :try_start_f
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    .line 528
    if-nez v1, :cond_20

    .line 529
    monitor-exit v0

    return-void

    .line 532
    :cond_20
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 533
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 534
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 537
    iput v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 542
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_4e

    if-eqz p1, :cond_47

    .line 545
    :try_start_3a
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4e

    .line 550
    :goto_3f
    goto :goto_4c

    .line 547
    :catch_40
    move-exception p1

    .line 549
    :try_start_41
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3f

    .line 552
    :cond_47
    const-string p1, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 554
    :goto_4c
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 7

    .line 462
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 463
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 472
    :try_start_f
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    .line 475
    if-nez v1, :cond_20

    .line 476
    monitor-exit v0

    return-void

    .line 479
    :cond_20
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 480
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 481
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 484
    iput v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 489
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_4e

    if-eqz p1, :cond_47

    .line 492
    :try_start_3a
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4e

    .line 497
    :goto_3f
    goto :goto_4c

    .line 494
    :catch_40
    move-exception p1

    .line 496
    :try_start_41
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3f

    .line 499
    :cond_47
    const-string p1, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 501
    :goto_4c
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1981
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1983
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "TelephonyRegistry"

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 1985
    :cond_12
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter p2

    .line 1986
    :try_start_15
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1987
    const-string v2, "last known state:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1989
    const/4 v2, 0x0

    :goto_24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_2c0

    .line 1990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRingingCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mForegroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBackgroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreciseCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallIncomingNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVoiceActivationState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataActivationState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserMobileDataState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMessageWaiting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallForwarding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCellLocation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCellInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsCallDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSrvccState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOtaspMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallPreciseDisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallQuality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallAttributes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreciseDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1989
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    .line 2020
    :cond_2c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarrierNetworkChangeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneCapability="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveDataSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRadioPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmergencyNumberList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2031
    const-string v2, "local logs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2033
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2034
    const-string v2, "listen logs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2037
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registrations: count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2039
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_395
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2040
    invoke-virtual {v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2041
    goto :goto_395

    .line 2042
    :cond_3a5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2043
    monitor-exit p2

    .line 2044
    return-void

    .line 2043
    :catchall_3aa
    move-exception p1

    monitor-exit p2
    :try_end_3ac
    .catchall {:try_start_15 .. :try_end_3ac} :catchall_3aa

    throw p1
.end method

.method idMatch(III)Z
    .registers 6

    .line 2371
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_b

    .line 2373
    iget p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne p1, p3, :cond_9

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    return v0

    .line 2375
    :cond_b
    const p3, 0x7fffffff

    if-ne p1, p3, :cond_17

    .line 2376
    iget p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 2378
    :cond_17
    if-ne p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method public synthetic lambda$checkCoarseLocationAccess$3$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2412
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2413
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p1

    .line 2414
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$checkFineLocationAccess$2$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2394
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2395
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p1

    .line 2396
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$notifyActiveDataSubIdChanged$1$TelephonyRegistry(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 6

    .line 1862
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1864
    const-string/jumbo v3, "notifyActiveDataSubIdChanged"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 1862
    :goto_1c
    return p1
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 11

    .line 613
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 615
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 12

    .line 620
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 621
    return-void
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .registers 6

    .line 1846
    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1847
    return-void

    .line 1856
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1857
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1858
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_62

    .line 1859
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 1862
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$kbHTNHMcu4ep02HSrYzRQeY7ThQ;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/android/server/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 1866
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1868
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1869
    :try_start_33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1870
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_5f

    if-eqz v3, :cond_59

    .line 1872
    :try_start_4b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_5f

    .line 1875
    goto :goto_59

    .line 1873
    :catch_51
    move-exception v3

    .line 1874
    :try_start_52
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    :cond_59
    :goto_59
    goto :goto_37

    .line 1878
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1879
    monitor-exit v1

    .line 1880
    return-void

    .line 1879
    :catchall_5f
    move-exception p1

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_5f

    throw p1

    .line 1858
    :catchall_62
    move-exception p1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3

    .line 1379
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1380
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 8

    .line 1383
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1384
    return-void

    .line 1390
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1391
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1392
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1393
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 1394
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

    .line 1395
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1397
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1399
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1402
    goto :goto_4b

    .line 1400
    :catch_43
    move-exception v4

    .line 1401
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1406
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1407
    monitor-exit v1

    .line 1408
    return-void

    .line 1407
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .registers 9

    .line 1949
    const-string/jumbo v0, "notifyCallQualityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1950
    return-void

    .line 1953
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1954
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1956
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 1957
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 1958
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3, p4, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p2

    .line 1961
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1962
    const/high16 v1, 0x4000000

    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget v1, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1964
    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v1
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_62

    if-eqz v1, :cond_5c

    .line 1966
    :try_start_4a
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_54
    .catchall {:try_start_4a .. :try_end_53} :catchall_62

    .line 1969
    goto :goto_5c

    .line 1967
    :catch_54
    move-exception v1

    .line 1968
    :try_start_55
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    :cond_5c
    :goto_5c
    goto :goto_2e

    .line 1974
    :cond_5d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1975
    monitor-exit v0

    .line 1976
    return-void

    .line 1975
    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 8

    .line 977
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 978
    return-void

    .line 985
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 986
    :try_start_d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 987
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_50

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_46

    .line 992
    :try_start_2e
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v3, p2

    goto :goto_38

    :cond_36
    const-string v3, ""

    .line 993
    :goto_38
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3d} :catch_3e
    .catchall {:try_start_2e .. :try_end_3d} :catchall_50

    .line 996
    goto :goto_46

    .line 994
    :catch_3e
    move-exception v3

    .line 995
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_46
    :goto_46
    goto :goto_13

    .line 999
    :cond_47
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1000
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_50

    .line 1004
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1007
    return-void

    .line 1000
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public notifyCallStateForPhoneId(IIILjava/lang/String;)V
    .registers 10

    .line 1011
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1012
    return-void

    .line 1018
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1019
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1020
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1021
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1022
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1023
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_52

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_5b

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_52

    .line 1027
    :try_start_40
    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 1028
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a
    .catchall {:try_start_40 .. :try_end_49} :catchall_5b

    .line 1031
    goto :goto_52

    .line 1029
    :catch_4a
    move-exception v3

    .line 1030
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_52
    :goto_52
    goto :goto_21

    .line 1035
    :cond_53
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1036
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5b

    .line 1037
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1038
    return-void

    .line 1036
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 11

    .line 1218
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1218
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;->INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$B6olxgDfuFsbAHNXng6QnHMFZZM;

    .line 1220
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1221
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1227
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1228
    :try_start_21
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 1229
    array-length v2, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_61

    aget v4, v0, v3

    .line 1230
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1235
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1236
    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget v8, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1238
    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v8
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_66

    if-eqz v8, :cond_5d

    .line 1240
    :try_start_4f
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55
    .catchall {:try_start_4f .. :try_end_54} :catchall_66

    .line 1243
    goto :goto_5d

    .line 1241
    :catch_55
    move-exception v8

    .line 1242
    :try_start_56
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_5d
    :goto_5d
    goto :goto_33

    .line 1229
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1247
    :cond_61
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1248
    monitor-exit v1

    .line 1249
    return-void

    .line 1248
    :catchall_66
    move-exception p1

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_66

    throw p1

    .line 1222
    :cond_69
    const-string/jumbo p1, "notifyCarrierNetworkChange without carrier privilege"

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1224
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "notifyCarrierNetworkChange without carrier privilege"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 1252
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1253
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1256
    const-string/jumbo v0, "notifyCellInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1257
    return-void

    .line 1263
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1264
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1265
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1266
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1268
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_54

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1269
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_54

    const/16 v4, 0x1d

    .line 1270
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_5a

    if-eqz v4, :cond_54

    .line 1275
    :try_start_46
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5a

    .line 1278
    goto :goto_54

    .line 1276
    :catch_4c
    move-exception v4

    .line 1277
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_54
    :goto_54
    goto :goto_22

    .line 1282
    :cond_55
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1283
    monitor-exit v1

    .line 1284
    return-void

    .line 1283
    :catchall_5a
    move-exception p1

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 3

    .line 1561
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1562
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .registers 9

    .line 1565
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

    .line 1567
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1568
    return-void

    .line 1574
    :cond_27
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1575
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1576
    :try_start_2e
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1577
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v2, v0

    .line 1578
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1579
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_75

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1580
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_75

    const/16 v4, 0x1d

    .line 1581
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_60
    .catchall {:try_start_2e .. :try_end_60} :catchall_7b

    if-eqz v4, :cond_75

    .line 1587
    :try_start_62
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_6d
    .catchall {:try_start_62 .. :try_end_6c} :catchall_7b

    .line 1590
    goto :goto_75

    .line 1588
    :catch_6d
    move-exception v4

    .line 1589
    :try_start_6e
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_75
    :goto_75
    goto :goto_3e

    .line 1594
    :cond_76
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1595
    monitor-exit v1

    .line 1596
    return-void

    .line 1595
    :catchall_7b
    move-exception p1

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public notifyDataActivity(I)V
    .registers 3

    .line 1411
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1412
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 8

    .line 1415
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1416
    return-void

    .line 1418
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1419
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1420
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1421
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 1422
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

    .line 1424
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1425
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1427
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1430
    goto :goto_4b

    .line 1428
    :catch_43
    move-exception v4

    .line 1429
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1434
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1435
    monitor-exit v1

    .line 1436
    return-void

    .line 1435
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 20

    .line 1442
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

    .line 1446
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .registers 3

    .line 1519
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(IILjava/lang/String;)V

    .line 1522
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(IILjava/lang/String;)V
    .registers 14

    .line 1525
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1526
    return-void

    .line 1532
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1533
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1534
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1536
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v9, v1, p1

    .line 1538
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

    .line 1539
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1541
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_6d

    if-eqz v3, :cond_5a

    .line 1543
    :try_start_48
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_6d

    .line 1547
    goto :goto_5a

    .line 1545
    :catch_52
    move-exception v3

    .line 1546
    :try_start_53
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    :cond_5a
    :goto_5a
    goto :goto_2c

    .line 1552
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1553
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_6d

    .line 1554
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;I)V

    .line 1555
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1558
    return-void

    .line 1553
    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public notifyDataConnectionForSubscriber(IIIZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 27

    .line 1453
    move-object/from16 v10, p0

    move/from16 v1, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move/from16 v12, p9

    const-string/jumbo v0, "notifyDataConnection()"

    invoke-direct {v10, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1454
    return-void

    .line 1462
    :cond_14
    iget-object v13, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v13

    .line 1463
    :try_start_17
    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1465
    const-string v0, "default"

    move-object/from16 v14, p6

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v0, v0, v1

    if-ne v0, v11, :cond_33

    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v0, v0, v1

    if-eq v0, v12, :cond_aa

    .line 1468
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-static/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-static/range {p9 .. p9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1473
    iget-object v2, v10, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1474
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1475
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget v0, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1477
    invoke-virtual {v10, v0, v9, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_8e
    .catchall {:try_start_17 .. :try_end_8e} :catchall_11d

    if-eqz v0, :cond_9e

    .line 1482
    :try_start_90
    iget-object v0, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_95} :catch_96
    .catchall {:try_start_90 .. :try_end_95} :catchall_11d

    .line 1485
    goto :goto_9e

    .line 1483
    :catch_96
    move-exception v0

    .line 1484
    :try_start_97
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_9e
    :goto_9e
    goto :goto_73

    .line 1488
    :cond_9f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1490
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v11, v0, v1

    .line 1491
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput v12, v0, v1

    .line 1493
    :cond_aa
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v15, Landroid/telephony/PreciseDataConnectionState;

    .line 1495
    invoke-static/range {p6 .. p6}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    move-object v2, v15

    move/from16 v3, p3

    move/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v15, v0, v1

    .line 1497
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1498
    const/16 v0, 0x1000

    invoke-virtual {v3, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    iget v0, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1500
    invoke-virtual {v10, v0, v9, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_e2
    .catchall {:try_start_97 .. :try_end_e2} :catchall_11d

    if-eqz v0, :cond_f6

    .line 1502
    :try_start_e4
    iget-object v0, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, v10, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ed} :catch_ee
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_11d

    .line 1506
    goto :goto_f6

    .line 1504
    :catch_ee
    move-exception v0

    .line 1505
    :try_start_ef
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    :cond_f6
    :goto_f6
    goto :goto_c7

    .line 1463
    :cond_f7
    move-object/from16 v14, p6

    .line 1510
    :cond_f9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1511
    monitor-exit v13
    :try_end_fd
    .catchall {:try_start_ef .. :try_end_fd} :catchall_11d

    .line 1512
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p10

    move/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1514
    const/4 v7, 0x0

    move/from16 v3, p9

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1516
    return-void

    .line 1511
    :catchall_11d
    move-exception v0

    :try_start_11e
    monitor-exit v13
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v0
.end method

.method public notifyDisconnectCause(IIII)V
    .registers 9

    .line 1681
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1682
    return-void

    .line 1684
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1685
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1686
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 1687
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, p3, p1

    .line 1688
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_21
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_54

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1689
    const/high16 v1, 0x2000000

    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v1

    if-eqz v1, :cond_53

    iget v1, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1690
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_59

    if-eqz v1, :cond_53

    .line 1692
    :try_start_3d
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v3, v3, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4b
    .catchall {:try_start_3d .. :try_end_4a} :catchall_59

    .line 1696
    goto :goto_53

    .line 1694
    :catch_4b
    move-exception v1

    .line 1695
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    :cond_53
    :goto_53
    goto :goto_21

    .line 1700
    :cond_54
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1701
    monitor-exit v0

    .line 1702
    return-void

    .line 1701
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public notifyEmergencyNumberList(II)V
    .registers 8

    .line 1915
    const-string/jumbo v0, "notifyEmergencyNumberList()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1916
    return-void

    .line 1919
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1920
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1921
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1923
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 1925
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1926
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_56

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1928
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_5c

    if-eqz v3, :cond_56

    .line 1930
    :try_start_46
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5c

    .line 1937
    goto :goto_56

    .line 1935
    :catch_4e
    move-exception v3

    .line 1936
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_56
    :goto_56
    goto :goto_2a

    .line 1942
    :cond_57
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1943
    monitor-exit v0

    .line 1944
    return-void

    .line 1943
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    .line 1705
    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1706
    return-void

    .line 1708
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1709
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1710
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1711
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1712
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1713
    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_54

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1715
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_5a

    if-eqz v3, :cond_54

    .line 1721
    :try_start_3e
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_5a

    .line 1724
    goto :goto_54

    .line 1722
    :catch_4c
    move-exception v3

    .line 1723
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_54
    :goto_54
    goto :goto_22

    .line 1728
    :cond_55
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1729
    monitor-exit v1

    .line 1730
    return-void

    .line 1729
    :catchall_5a
    move-exception p1

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 8

    .line 1325
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1326
    return-void

    .line 1332
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1333
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1334
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1335
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1336
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1338
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_4c

    if-eqz v3, :cond_46

    .line 1340
    :try_start_38
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_4c

    .line 1343
    goto :goto_46

    .line 1341
    :catch_3e
    move-exception v3

    .line 1342
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_46
    :goto_46
    goto :goto_1d

    .line 1347
    :cond_47
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1348
    monitor-exit v0

    .line 1349
    return-void

    .line 1348
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .registers 8

    .line 1794
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1795
    return-void

    .line 1798
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1799
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1800
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1804
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1806
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_4a

    if-eqz v3, :cond_44

    .line 1808
    :try_start_36
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_4a

    .line 1811
    goto :goto_44

    .line 1809
    :catch_3c
    move-exception v3

    .line 1810
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    :cond_44
    :goto_44
    goto :goto_19

    .line 1815
    :cond_45
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1816
    monitor-exit v0

    .line 1817
    return-void

    .line 1816
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 587
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_22

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 589
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 591
    :cond_22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 592
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 593
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 594
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_56

    if-eqz v3, :cond_50

    .line 597
    :try_start_42
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 598
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_56

    .line 603
    goto :goto_50

    .line 600
    :catch_48
    move-exception v3

    .line 602
    :try_start_49
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_50
    :goto_50
    goto :goto_30

    .line 606
    :cond_51
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 607
    monitor-exit v0

    .line 608
    return-void

    .line 607
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public notifyOtaspChanged(II)V
    .registers 8

    .line 1599
    const-string/jumbo v0, "notifyOtaspChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1600
    return-void

    .line 1602
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1603
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1604
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1605
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:[I

    aput p2, v2, v0

    .line 1606
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

    .line 1607
    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1608
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1610
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1613
    goto :goto_4b

    .line 1611
    :catch_43
    move-exception v4

    .line 1612
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1617
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1618
    monitor-exit v1

    .line 1619
    return-void

    .line 1618
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 6

    .line 1820
    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1821
    return-void

    .line 1828
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1829
    :try_start_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 1831
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1832
    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_3d

    if-eqz v3, :cond_37

    .line 1835
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3d

    .line 1838
    goto :goto_37

    .line 1836
    :catch_2f
    move-exception v3

    .line 1837
    :try_start_30
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    :cond_37
    :goto_37
    goto :goto_15

    .line 1841
    :cond_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1842
    monitor-exit v0

    .line 1843
    return-void

    .line 1842
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public notifyPhysicalChannelConfigurationForSubscriber(IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1291
    const-string/jumbo v0, "notifyPhysicalChannelConfiguration()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1292
    return-void

    .line 1300
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1301
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1302
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1304
    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1306
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_4e

    if-eqz v3, :cond_48

    .line 1312
    :try_start_3a
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4e

    .line 1315
    goto :goto_48

    .line 1313
    :catch_40
    move-exception v3

    .line 1314
    :try_start_41
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    :cond_48
    :goto_48
    goto :goto_1e

    .line 1319
    :cond_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1320
    monitor-exit v0

    .line 1321
    return-void

    .line 1320
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public notifyPreciseCallState(IIIII)V
    .registers 15

    .line 1623
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1624
    return-void

    .line 1626
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1627
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1628
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput p3, v1, p1

    .line 1629
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput p4, v1, p1

    .line 1630
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput p5, v1, p1

    .line 1631
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

    .line 1636
    nop

    .line 1637
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3c

    .line 1638
    const-string/jumbo v1, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1640
    goto :goto_69

    .line 1644
    :cond_3c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v1

    if-eq v1, v3, :cond_53

    .line 1646
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v2, v1, p1

    .line 1647
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    new-instance v2, Landroid/telephony/CallQuality;

    invoke-direct {v2}, Landroid/telephony/CallQuality;-><init>()V

    aput-object v2, v1, p1

    .line 1649
    :cond_53
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v6, v6, p1

    invoke-direct {v2, v4, v5, v6}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p1

    move v2, v3

    .line 1653
    :goto_69
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1654
    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1655
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_89
    .catchall {:try_start_d .. :try_end_89} :catchall_ca

    if-eqz v4, :cond_9d

    .line 1657
    :try_start_8b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_95
    .catchall {:try_start_8b .. :try_end_94} :catchall_ca

    .line 1660
    goto :goto_9d

    .line 1658
    :catch_95
    move-exception v4

    .line 1659
    :try_start_96
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    :cond_9d
    :goto_9d
    if-eqz v2, :cond_c1

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_c1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1664
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_ad
    .catchall {:try_start_96 .. :try_end_ad} :catchall_ca

    if-eqz v4, :cond_c1

    .line 1666
    :try_start_af
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b8} :catch_b9
    .catchall {:try_start_af .. :try_end_b8} :catchall_ca

    .line 1669
    goto :goto_c1

    .line 1667
    :catch_b9
    move-exception v4

    .line 1668
    :try_start_ba
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    :cond_c1
    :goto_c1
    goto :goto_6f

    .line 1673
    :cond_c2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1674
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_ca

    .line 1675
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(III)V

    .line 1677
    return-void

    .line 1674
    :catchall_ca
    move-exception p1

    :try_start_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw p1
.end method

.method public notifyPreciseDataConnectionFailed(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 1734
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1735
    return-void

    .line 1737
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1738
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1739
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1741
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V

    aput-object v9, v1, p1

    .line 1742
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

    .line 1743
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1745
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_6a

    if-eqz v3, :cond_5a

    .line 1747
    :try_start_48
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:[Landroid/telephony/PreciseDataConnectionState;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_6a

    .line 1751
    goto :goto_5a

    .line 1749
    :catch_52
    move-exception v3

    .line 1750
    :try_start_53
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_5a
    :goto_5a
    goto :goto_2c

    .line 1756
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1757
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_6a

    .line 1758
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 1760
    return-void

    .line 1757
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public notifyRadioPowerStateChanged(III)V
    .registers 8

    .line 1884
    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1885
    return-void

    .line 1892
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1893
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1894
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 1896
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1897
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1899
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_4b

    if-eqz v3, :cond_45

    .line 1901
    :try_start_37
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4b

    .line 1904
    goto :goto_45

    .line 1902
    :catch_3d
    move-exception v3

    .line 1903
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    :cond_45
    :goto_45
    goto :goto_1b

    .line 1909
    :cond_46
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1910
    monitor-exit v0

    .line 1911
    return-void

    .line 1910
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 10

    .line 1041
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1042
    return-void

    .line 1045
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1046
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

    .line 1051
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1058
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v1, p1

    .line 1060
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1065
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_91

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1066
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_63
    .catchall {:try_start_d .. :try_end_63} :catchall_b8

    if-eqz v4, :cond_91

    .line 1070
    const/16 v4, 0x1d

    :try_start_67
    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1071
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    goto :goto_83

    .line 1072
    :cond_73
    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1073
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v3

    goto :goto_83

    .line 1075
    :cond_7f
    invoke-virtual {p3, v3}, Landroid/telephony/ServiceState;->sanitizeLocationInfo(Z)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1082
    :goto_83
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_88} :catch_89
    .catchall {:try_start_67 .. :try_end_88} :catchall_b8

    .line 1085
    goto :goto_91

    .line 1083
    :catch_89
    move-exception v3

    .line 1084
    :try_start_8a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_91
    :goto_91
    goto :goto_4a

    :cond_92
    goto :goto_b0

    .line 1089
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1092
    :goto_b0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1093
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_8a .. :try_end_b4} :catchall_b8

    .line 1094
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 1095
    return-void

    .line 1093
    :catchall_b8
    move-exception p1

    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 9

    .line 1160
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1161
    return-void

    .line 1168
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1169
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1171
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1172
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1177
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1179
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_91

    if-eqz v3, :cond_4c

    .line 1186
    :try_start_39
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_43} :catch_44
    .catchall {:try_start_39 .. :try_end_43} :catchall_91

    .line 1189
    goto :goto_4c

    .line 1187
    :catch_44
    move-exception v3

    .line 1188
    :try_start_45
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_4c
    :goto_4c
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_72

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1192
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_91

    if-eqz v3, :cond_72

    .line 1194
    :try_start_5b
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 1195
    const/16 v4, 0x63

    if-ne v3, v4, :cond_64

    const/4 v3, -0x1

    .line 1201
    :cond_64
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_69} :catch_6a
    .catchall {:try_start_5b .. :try_end_69} :catchall_91

    .line 1204
    goto :goto_72

    .line 1202
    :catch_6a
    move-exception v3

    .line 1203
    :try_start_6b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_72
    :goto_72
    goto :goto_1d

    :cond_73
    goto :goto_89

    .line 1208
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1210
    :goto_89
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1211
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_6b .. :try_end_8d} :catchall_91

    .line 1212
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 1213
    return-void

    .line 1211
    :catchall_91
    move-exception p1

    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p1
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 10

    .line 1099
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1100
    return-void

    .line 1106
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1107
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1108
    const/4 v1, 0x1

    if-eqz p3, :cond_1f

    if-eq p3, v1, :cond_1a

    .line 1116
    monitor-exit v0

    return-void

    .line 1113
    :cond_1a
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v2, p1

    .line 1114
    goto :goto_24

    .line 1110
    :cond_1f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v2, p1

    .line 1111
    nop

    .line 1118
    :goto_24
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
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_8d

    .line 1125
    if-nez p3, :cond_50

    const/high16 v4, 0x20000

    .line 1126
    :try_start_3a
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_50

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1128
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1134
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto :goto_50

    .line 1147
    :catch_4e
    move-exception v4

    goto :goto_68

    .line 1136
    :cond_50
    :goto_50
    if-ne p3, v1, :cond_70

    const/high16 v4, 0x40000

    .line 1137
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_70

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1139
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1145
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_67} :catch_4e
    .catchall {:try_start_3a .. :try_end_67} :catchall_8d

    goto :goto_70

    .line 1148
    :goto_68
    :try_start_68
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1149
    :cond_70
    :goto_70
    nop

    .line 1150
    :goto_71
    goto :goto_2a

    :cond_72
    goto :goto_88

    .line 1152
    :cond_73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1154
    :goto_88
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1155
    monitor-exit v0

    .line 1156
    return-void

    .line 1155
    :catchall_8d
    move-exception p1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_68 .. :try_end_8f} :catchall_8d

    throw p1
.end method

.method public notifySrvccStateChanged(II)V
    .registers 8

    .line 1764
    const-string/jumbo v0, "notifySrvccStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1765
    return-void

    .line 1770
    :cond_a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1771
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1772
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1773
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 1774
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

    .line 1775
    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1777
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_51

    if-eqz v4, :cond_4b

    .line 1782
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_51

    .line 1785
    goto :goto_4b

    .line 1783
    :catch_43
    move-exception v4

    .line 1784
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_4b
    :goto_4b
    goto :goto_21

    .line 1789
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1790
    monitor-exit v1

    .line 1791
    return-void

    .line 1790
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 561
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_22

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 565
    :cond_22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 566
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 568
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_56

    if-eqz v3, :cond_50

    .line 571
    :try_start_42
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catchall {:try_start_42 .. :try_end_47} :catchall_56

    .line 576
    goto :goto_50

    .line 573
    :catch_48
    move-exception v3

    .line 575
    :try_start_49
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_50
    :goto_50
    goto :goto_30

    .line 579
    :cond_51
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .registers 8

    .line 1352
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1353
    return-void

    .line 1359
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1360
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1361
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 1362
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1363
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1365
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_4d

    if-eqz v3, :cond_47

    .line 1367
    :try_start_39
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3f
    .catchall {:try_start_39 .. :try_end_3e} :catchall_4d

    .line 1370
    goto :goto_47

    .line 1368
    :catch_3f
    move-exception v3

    .line 1369
    :try_start_40
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_47
    :goto_47
    goto :goto_1d

    .line 1374
    :cond_48
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1375
    monitor-exit v0

    .line 1376
    return-void

    .line 1375
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 3

    .line 508
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 509
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .line 451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    return-void
.end method
