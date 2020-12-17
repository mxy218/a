.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms.service"

    const-string v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 65
    const-string v0, "content://sms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://mms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://sms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://mms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 79
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 80
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    new-instance v1, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance v1, Lcom/android/server/MmsServiceBroker$3;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    .line 222
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 223
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MmsServiceBroker;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;
    .param p1, "x1"  # Lcom/android/internal/telephony/IMms;

    .line 57
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MmsServiceBroker;

    .line 57
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 305
    :cond_10
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 324
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 326
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 328
    :cond_15
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private getOrConnectService()Lcom/android/internal/telephony/IMms;
    .registers 8

    .line 255
    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v0

    .line 260
    :cond_9
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService not connected. Try connecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 262
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_50

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    .line 265
    .local v0, "shouldEnd":J
    const-wide/16 v2, 0xfa0

    .line 266
    .local v2, "waitTime":J
    :goto_25
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_46

    .line 269
    :try_start_2b
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_50

    .line 272
    goto :goto_37

    .line 270
    :catch_2f
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_30
    const-string v5, "MmsServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v4  # "e":Ljava/lang/InterruptedException;
    :goto_37
    iget-object v4, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v4, :cond_3f

    .line 275
    iget-object v4, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v4

    .line 278
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_25

    .line 281
    :cond_46
    const-string v4, "MmsServiceBroker"

    const-string v5, "Can not connect to MmsService (timed out)"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 283
    .end local v0  # "shouldEnd":J
    .end local v2  # "waitTime":J
    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_30 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 310
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 312
    :cond_c
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .registers 3

    .line 294
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getOrConnectService()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 295
    .local v0, "service":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_7

    .line 296
    return-object v0

    .line 298
    :cond_7
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 320
    :cond_11
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private tryConnecting()V
    .registers 5

    .line 236
    const-string v0, "MmsServiceBroker"

    const-string v1, "Connecting to MmsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-enter p0

    .line 238
    :try_start_8
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_15

    .line 239
    const-string v0, "MmsServiceBroker"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit p0

    return-void

    .line 242
    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_3c

    .line 245
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 246
    const-string v1, "MmsServiceBroker"

    const-string v2, "Failed to bind to MmsService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_31} :catch_32
    .catchall {:try_start_1f .. :try_end_31} :catchall_3c

    .line 250
    :cond_31
    goto :goto_3a

    .line 248
    :catch_32
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_33
    const-string v2, "MmsServiceBroker"

    const-string v3, "Forbidden to bind to MmsService"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "e":Ljava/lang/SecurityException;
    :goto_3a
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 228
    new-instance v0, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V

    const-string/jumbo v1, "imms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/MmsServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    return-void
.end method

.method public systemRunning()V
    .registers 3

    .line 232
    const-string v0, "MmsServiceBroker"

    const-string v1, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
