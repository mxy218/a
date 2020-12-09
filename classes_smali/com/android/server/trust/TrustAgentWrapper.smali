.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DATA_DURATION:Ljava/lang/String; = "duration"

.field private static final DATA_ESCROW_TOKEN:Ljava/lang/String; = "escrow_token"

.field private static final DATA_HANDLE:Ljava/lang/String; = "handle"

.field private static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field private static final DATA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DEBUG:Z

.field private static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final MSG_ADD_ESCROW_TOKEN:I = 0x7

.field private static final MSG_ESCROW_TOKEN_STATE:I = 0x9

.field private static final MSG_GRANT_TRUST:I = 0x1

.field private static final MSG_MANAGING_TRUST:I = 0x6

.field private static final MSG_REMOVE_ESCROW_TOKEN:I = 0x8

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final MSG_REVOKE_TRUST:I = 0x2

.field private static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field private static final MSG_SHOW_KEYGUARD_ERROR_MESSAGE:I = 0xb

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0xa

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field private final mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManagingTrust:Z

.field private mMaximumTimeToLock:J

.field private mMessage:Ljava/lang/CharSequence;

.field private final mName:Landroid/content/ComponentName;

.field private mPendingSuccessfulUnlock:Z

.field private mScheduledRestartUptimeMillis:J

.field private mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field private mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field private mTrustDisabledByDpm:Z

.field private final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field private mTrusted:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 9

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 109
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    .line 368
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 407
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 408
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 409
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 410
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 411
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 413
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    const-string v3, "componentName"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    .line 414
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 415
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p2, v1, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 424
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    .line 425
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v1, 0x4000001

    invoke-virtual {p1, p3, v0, v1, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 427
    iget-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz p1, :cond_9a

    .line 428
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p4, 0x0

    const-string v0, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, p3, p2, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_b6

    .line 430
    :cond_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t bind to TrustAgent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrustAgentWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_b6
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustAgentWrapper;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustAgentWrapper;)J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4

    .line 435
    const-string v0, "TrustAgentWrapper"

    const-string v1, "Exception "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    return-void
.end method

.method private onTrustTimeout()V
    .registers 2

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 443
    :cond_9
    goto :goto_e

    .line 441
    :catch_a
    move-exception v0

    .line 442
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 444
    :goto_e
    return-void
.end method

.method private scheduleRestart()V
    .registers 7

    .line 614
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 616
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 617
    return-void
.end method

.method private setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 3

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    .line 514
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 518
    :cond_9
    goto :goto_e

    .line 516
    :catch_a
    move-exception p1

    .line 517
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 519
    :goto_e
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 581
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_b

    .line 584
    return-void

    .line 586
    :cond_b
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent unbound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_2b
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 590
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 592
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 593
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 594
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScheduledRestartUptimeMillis()J
    .registers 3

    .line 610
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isManagingTrust()Z
    .registers 2

    .line 573
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTrusted()Z
    .registers 2

    .line 569
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onDeviceLocked()V
    .registers 2

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 482
    :cond_9
    goto :goto_e

    .line 480
    :catch_a
    move-exception v0

    .line 481
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 483
    :goto_e
    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 2

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 493
    :cond_9
    goto :goto_e

    .line 491
    :catch_a
    move-exception v0

    .line 492
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 494
    :goto_e
    return-void
.end method

.method public onEscrowTokenActivated(JI)V
    .registers 6

    .line 501
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEscrowTokenActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TrustAgentWrapper"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_23
    iget-object p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p3, :cond_30

    .line 504
    const/4 v0, 0x1

    :try_start_28
    invoke-interface {p3, p1, p2, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 508
    goto :goto_30

    .line 506
    :catch_2c
    move-exception p1

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 510
    :cond_30
    :goto_30
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 3

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_a

    .line 452
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_c

    .line 454
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 458
    :goto_c
    goto :goto_11

    .line 456
    :catch_d
    move-exception p1

    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 459
    :goto_11
    return-void
.end method

.method public onUnlockLockout(I)V
    .registers 3

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    .line 467
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 471
    :cond_9
    goto :goto_e

    .line 469
    :catch_a
    move-exception p1

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 472
    :goto_e
    return-void
.end method

.method updateDevicePolicyFeatures()Z
    .registers 9

    .line 522
    nop

    .line 523
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    const-string v1, "TrustAgentWrapper"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDevicePolicyFeatures("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v2, :cond_c7

    .line 526
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 527
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 529
    iget v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9b

    .line 531
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_45} :catch_c9

    .line 533
    const/4 v5, 0x1

    .line 534
    :try_start_46
    sget-boolean v6, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v6, :cond_5e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected trust agents disabled. Config = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_5e
    if-eqz v3, :cond_9a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9a

    .line 536
    sget-boolean v6, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v6, :cond_8c

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TrustAgent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " disabled until it acknowledges "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_8c
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 541
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v6}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_9a} :catch_c5

    .line 543
    :cond_9a
    goto :goto_a3

    .line 544
    :cond_9b
    :try_start_9b
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v3, v4}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a2} :catch_c9

    move v5, v0

    .line 546
    :goto_a3
    :try_start_a3
    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v1

    .line 547
    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_c8

    .line 550
    iput-wide v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 551
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_c8

    .line 552
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 553
    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 554
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_c4} :catch_c5

    goto :goto_c8

    .line 558
    :catch_c5
    move-exception v1

    goto :goto_cb

    .line 525
    :cond_c7
    move v5, v0

    .line 560
    :cond_c8
    :goto_c8
    goto :goto_ce

    .line 558
    :catch_c9
    move-exception v1

    move v5, v0

    .line 559
    :goto_cb
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 561
    :goto_ce
    iget-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v1, v5, :cond_db

    .line 562
    iput-boolean v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 563
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 565
    :cond_db
    return v5
.end method
