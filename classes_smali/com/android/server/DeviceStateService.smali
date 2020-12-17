.class public Lcom/android/server/DeviceStateService;
.super Lmeizu/os/IDeviceStateService$Stub;
.source "DeviceStateService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# static fields
.field private static final ACTION_IMEI_READY:Ljava/lang/String; = "android.intent.action.IMEI_READY"

.field private static final FLYME_ROOT_RECOVERY_STATE:Ljava/lang/String; = "flyme.permission.ROOT_RECOVERY_STATE"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final ROOT_RECOVERY_STATE:Ljava/lang/String; = "android.permission.ROOT_RECOVERY_STATE"

.field private static final VOLD_TAG:Ljava/lang/String; = "DeviceStateService"

.field private static log:Ljava/lang/String; = null

.field public static final resultStatus:I = 0x2bd


# instance fields
.field private mConnected:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field public mContext:Landroid/content/Context;

.field mCtsStateMonitor:Lcom/android/CtsStateMonitor;

.field private mGuestModeHelper:Lcom/android/server/GuestModeHelper;

.field private mIsFlymeVerifyEnable:Ljava/lang/Boolean;

.field private mIsImeiMatch:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 73
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lmeizu/os/IDeviceStateService$Stub;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mCtsStateMonitor:Lcom/android/CtsStateMonitor;

    .line 67
    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    .line 77
    iput-object p1, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/CtsStateMonitor;

    iget-object v1, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/CtsStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mCtsStateMonitor:Lcom/android/CtsStateMonitor;

    .line 92
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->isFlymeVerifyEnable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.IMEI_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/android/server/DeviceStateService$1;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceStateService$1;-><init>(Lcom/android/server/DeviceStateService;)V

    .line 119
    .local v2, "imeiReadyReceiver":Landroid/content/BroadcastReceiver;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    .end local v0  # "filter":Landroid/content/IntentFilter;
    .end local v2  # "imeiReadyReceiver":Landroid/content/BroadcastReceiver;
    :cond_34
    new-instance v0, Lcom/android/server/GuestModeHelper;

    iget-object v1, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/GuestModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mGuestModeHelper:Lcom/android/server/GuestModeHelper;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStateService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/DeviceStateService;

    .line 35
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->doImeiVerify()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static bytesToHexStr([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"  # [B

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_24

    aget-byte v4, p0, v3

    .line 231
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .end local v4  # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 233
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doFlymeVerify(I)Z
    .registers 5
    .param p1, "handle"  # I

    .line 246
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    .line 247
    return v0

    .line 250
    :cond_8
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->doImeiVerify()Ljava/lang/Boolean;

    move-result-object v1

    .line 252
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    .line 253
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_16
    return v0
.end method

.method private declared-synchronized doImeiVerify()Ljava/lang/Boolean;
    .registers 10

    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mIsImeiMatch:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mIsImeiMatch:Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_109

    monitor-exit p0

    return-object v0

    .line 358
    .end local p0  # "this":Lcom/android/server/DeviceStateService;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 359
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 360
    const-string v2, "DeviceStateService"

    const-string/jumbo v3, "telephonyManager is null, return null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_109

    .line 361
    monitor-exit p0

    return-object v1

    .line 363
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/android/server/DeviceStateService;->isAllImeiReady()Z

    move-result v2

    if-nez v2, :cond_30

    .line 364
    const-string v2, "DeviceStateService"

    const-string v3, "before getting Imei, modem is not ready, return null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_109

    .line 365
    monitor-exit p0

    return-object v1

    .line 367
    :cond_30
    const/4 v2, 0x0

    :try_start_31
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "modemImei1":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "modemImei2":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e8

    const-string v6, "0"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e8

    const-string v6, "0"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto/16 :goto_e8

    .line 374
    :cond_58
    invoke-static {}, Lcom/android/server/DeviceStateService;->isAllImeiReady()Z

    move-result v6

    if-nez v6, :cond_67

    .line 375
    const-string v2, "DeviceStateService"

    const-string v4, "after getting Imei, modem is not ready, return null."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_31 .. :try_end_65} :catchall_109

    .line 376
    monitor-exit p0

    return-object v1

    .line 378
    :cond_67
    :try_start_67
    const-string/jumbo v1, "ro.meizu.hardware.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "hardwareImei1":Ljava/lang/String;
    const-string/jumbo v6, "ro.meizu.hardware.imei2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "hardwareImei2":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 382
    const-string v4, "DeviceStateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Imei1 is not match, return false. hardwareImei1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " modemImei1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceStateService;->mIsImeiMatch:Ljava/lang/Boolean;

    .line 384
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_a3
    .catchall {:try_start_67 .. :try_end_a3} :catchall_109

    monitor-exit p0

    return-object v2

    .line 387
    :cond_a5
    :try_start_a5
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d5

    .line 388
    const-string v4, "DeviceStateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Imei2 is not match, return false. hardwareImei2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " modemImei2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceStateService;->mIsImeiMatch:Ljava/lang/Boolean;

    .line 390
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_d3
    .catchall {:try_start_a5 .. :try_end_d3} :catchall_109

    monitor-exit p0

    return-object v2

    .line 393
    :cond_d5
    :try_start_d5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceStateService;->mIsImeiMatch:Ljava/lang/Boolean;

    .line 394
    const-string v2, "DeviceStateService"

    const-string v7, "Imei1 and Imei2 are match, return true."

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_e6
    .catchall {:try_start_d5 .. :try_end_e6} :catchall_109

    monitor-exit p0

    return-object v2

    .line 371
    .end local v1  # "hardwareImei1":Ljava/lang/String;
    .end local v6  # "hardwareImei2":Ljava/lang/String;
    :cond_e8
    :goto_e8
    :try_start_e8
    const-string v2, "DeviceStateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modemImei is null or exception , return null.  modemImei1 ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " modemImei2= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_e8 .. :try_end_107} :catchall_109

    .line 372
    monitor-exit p0

    return-object v1

    .line 354
    .end local v0  # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v3  # "modemImei1":Ljava/lang/String;
    .end local v5  # "modemImei2":Ljava/lang/String;
    :catchall_109
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enforceCheckPermission()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    .line 166
    const-string v1, "flyme.permission.ROOT_RECOVERY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 167
    .local v0, "isAllow":Z
    :goto_18
    if-eqz v0, :cond_1b

    .line 170
    return-void

    .line 168
    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission denied : flyme.permission.ROOT_RECOVERY_STATE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isAllImeiReady()Z
    .registers 10

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "result":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 401
    .local v1, "phoneCount":I
    new-array v2, v1, [Z

    .line 402
    .local v2, "resultList":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_4e

    .line 403
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "imei":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2a

    const-string v7, "0"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_2a

    .line 409
    :cond_27
    aput-boolean v5, v2, v3

    goto :goto_4b

    .line 405
    :cond_2a
    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAllImeiReady phone"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " imei is null or exception, so return false.  imei= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DeviceStateService"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    aput-boolean v4, v2, v3

    .line 402
    .end local v6  # "imei":Ljava/lang/String;
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 413
    .end local v3  # "i":I
    :cond_4e
    const/4 v3, 0x1

    .line 414
    .local v3, "temp":Z
    array-length v6, v2

    move v7, v3

    move v3, v4

    .end local v3  # "temp":Z
    .local v7, "temp":Z
    :goto_52
    if-ge v3, v6, :cond_61

    aget-boolean v8, v2, v3

    .line 415
    .local v8, "value":Z
    if-eqz v7, :cond_5c

    if-eqz v8, :cond_5c

    move v9, v5

    goto :goto_5d

    :cond_5c
    move v9, v4

    :goto_5d
    move v7, v9

    .line 414
    .end local v8  # "value":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 418
    :cond_61
    move v0, v7

    .line 419
    return v0
.end method

.method private isFlymeVerifyEnable()Z
    .registers 10

    .line 265
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    const-string v1, "DeviceStateService"

    if-eqz v0, :cond_2e

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsFlymeVerifyEnable != null, mIsFlymeVerifyEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", log: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 270
    :cond_2e
    const-string/jumbo v0, "ro.soc.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "version":Ljava/lang/String;
    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "ro.soc.vendor is "

    const-string v4, ", disable verify."

    const/4 v5, 0x0

    if-eqz v2, :cond_194

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", continue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    111 ro.soc.vendor is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 282
    const-string/jumbo v2, "proc/mz_info/sec"

    invoke-static {v2}, Lcom/android/server/DeviceStateService;->readTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "secureInfo":Ljava/lang/String;
    const-string v6, "Secure Chip"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "proc/mz_info/sec is "

    if-eqz v6, :cond_15d

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    222 proc/mz_info/sec is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 294
    const-string/jumbo v6, "proc/mz_info/bl_unlock"

    invoke-static {v6}, Lcom/android/server/DeviceStateService;->readTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "lockInfo":Ljava/lang/String;
    const-string v7, "0x0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "proc/mz_info/bl_unlock is "

    if-nez v7, :cond_10a

    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    goto :goto_10a

    .line 299
    :cond_d3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    3333 proc/mz_info/bl_unlock is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 302
    return v5

    .line 296
    :cond_10a
    :goto_10a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    333 proc/mz_info/bl_unlock is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 305
    const-string/jumbo v3, "mIsFlymeVerifyEnable set true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    444 mIsFlymeVerifyEnable set true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 308
    return v1

    .line 287
    .end local v6  # "lockInfo":Ljava/lang/String;
    :cond_15d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    2222 proc/mz_info/sec is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 290
    return v5

    .line 275
    .end local v2  # "secureInfo":Ljava/lang/String;
    :cond_194
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceStateService;->mIsFlymeVerifyEnable:Ljava/lang/Boolean;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    1111 ro.soc.vendor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DeviceStateService;->log:Ljava/lang/String;

    .line 278
    return v5
.end method

.method private native nativeDoCheckState(I)I
.end method

.method private native nativeDoCommand(I[B)I
.end method

.method private native nativeDoGetInitNo(I[B)I
.end method

.method private native nativeLockRecoveryUnchecked()I
.end method

.method private native nativeLockRecoveryUncheckedByHandle(I)I
.end method

.method private native native_getPsnAndChipId()Ljava/lang/String;
.end method

.method private native native_getRootSignatureCode()[B
.end method

.method private native native_getRootVersion()I
.end method

.method private native native_setRootSignatureCode([B)I
.end method

.method public static readTextFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "filePath"  # Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 314
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 315
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "DeviceStateService"

    if-nez v4, :cond_2b

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not exists."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v4, ""

    return-object v4

    .line 321
    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 322
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 324
    :goto_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .local v6, "s":Ljava/lang/String;
    if-eqz v4, :cond_42

    .line 325
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_57
    .catchall {:try_start_2b .. :try_end_41} :catchall_55

    goto :goto_37

    .line 330
    .end local v6  # "s":Ljava/lang/String;
    :cond_42
    nop

    .line 332
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 335
    goto :goto_4b

    .line 333
    :catch_47
    move-exception v4

    .line 334
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    .end local v4  # "e":Ljava/io/IOException;
    :goto_4b
    nop

    .line 340
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 343
    :goto_4f
    goto :goto_6f

    .line 341
    :catch_50
    move-exception v4

    .line 342
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4  # "e":Ljava/io/IOException;
    goto :goto_4f

    .line 330
    :catchall_55
    move-exception v4

    goto :goto_74

    .line 327
    :catch_57
    move-exception v4

    .line 328
    .local v4, "e":Ljava/lang/Exception;
    :try_start_58
    const-string/jumbo v6, "readTextFile throw an exception."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    .line 330
    nop

    .end local v4  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_69

    .line 332
    :try_start_61
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 335
    goto :goto_69

    .line 333
    :catch_65
    move-exception v4

    .line 334
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    .end local v4  # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    if-eqz v1, :cond_6f

    .line 340
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_50

    goto :goto_4f

    .line 346
    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 330
    :goto_74
    if-eqz v2, :cond_7e

    .line 332
    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 335
    goto :goto_7e

    .line 333
    :catch_7a
    move-exception v5

    .line 334
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    .end local v5  # "e":Ljava/io/IOException;
    :cond_7e
    :goto_7e
    if-eqz v1, :cond_88

    .line 340
    :try_start_80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 343
    goto :goto_88

    .line 341
    :catch_84
    move-exception v5

    .line 342
    .restart local v5  # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    .end local v5  # "e":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v4
.end method


# virtual methods
.method public doCheckState(I)I
    .registers 6
    .param p1, "handle"  # I

    .line 133
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->isFlymeVerifyEnable()Z

    move-result v0

    const-string v1, "DeviceStateService"

    if-eqz v0, :cond_24

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->doFlymeVerify(I)Z

    move-result v0

    .line 135
    .local v0, "result":Z
    if-nez v0, :cond_24

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFlymeVerify failed, handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x1

    return v1

    .line 141
    .end local v0  # "result":Z
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCheckState handle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->nativeDoCheckState(I)I

    move-result v0

    return v0
.end method

.method public doCommand(I[B)I
    .registers 5
    .param p1, "handle"  # I
    .param p2, "rsaData"  # [B

    .line 126
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceStateService;->nativeDoCommand(I[B)I

    move-result v0

    return v0
.end method

.method public doGetInitNo(I[B)I
    .registers 5
    .param p1, "handle"  # I
    .param p2, "inData"  # [B

    .line 146
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGetInitNo handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceStateService;->nativeDoGetInitNo(I[B)I

    move-result v0

    return v0
.end method

.method public getPsnAndChipId()Ljava/lang/String;
    .registers 4

    .line 204
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->native_getPsnAndChipId()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsnAndChipId ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v0
.end method

.method public getRootSignatureCode()[B
    .registers 4

    .line 211
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->native_getRootSignatureCode()[B

    move-result-object v0

    .line 213
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootSignatureCode ret ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/DeviceStateService;->bytesToHexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object v0
.end method

.method public getRootVersion()I
    .registers 4

    .line 197
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 198
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->native_getRootVersion()I

    move-result v0

    .line 199
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootVersion ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v0
.end method

.method public isCtsRunning()Z
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mCtsStateMonitor:Lcom/android/CtsStateMonitor;

    invoke-virtual {v0}, Lcom/android/CtsStateMonitor;->isCtsRunning()Z

    move-result v0

    return v0
.end method

.method public lockRecoveryUnchecked()I
    .registers 3

    .line 152
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 153
    const-string v0, "DeviceStateService"

    const-string/jumbo v1, "lockRecoveryUnchecked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->nativeLockRecoveryUnchecked()I

    move-result v0

    return v0
.end method

.method public lockRecoveryUncheckedByHandle(I)I
    .registers 4
    .param p1, "handle"  # I

    .line 158
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 159
    const-string v0, "DeviceStateService"

    const-string/jumbo v1, "lockRecoveryUncheckedByHandle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->nativeLockRecoveryUncheckedByHandle(I)I

    move-result v0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"  # I

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 177
    const-string v0, "DeviceStateService"

    const-string v1, "Ahahaha!onDaemonConnected "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .param p1, "code"  # I
    .param p2, "raw"  # Ljava/lang/String;
    .param p3, "cooked"  # [Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public setRootSignatureCode([B)I
    .registers 7
    .param p1, "rootSignatureCode"  # [B

    .line 218
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->enforceCheckPermission()V

    .line 219
    const-string v0, "DeviceStateService"

    if-eqz p1, :cond_2d

    array-length v1, p1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_d

    goto :goto_2d

    .line 223
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->native_setRootSignatureCode([B)I

    move-result v1

    .line 224
    .local v1, "ret":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/server/DeviceStateService;->bytesToHexStr([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "setRootSignatureCode  in = %s | ret = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v1

    .line 220
    .end local v1  # "ret":I
    :cond_2d
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRootSignatureCode  Err in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, -0x3

    return v0
.end method
