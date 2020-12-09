.class final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;
    }
.end annotation


# static fields
.field private static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field private static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field private final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field private mDreamStartTime:J

.field private final mDreamingStartedIntent:Landroid/content/Intent;

.field private final mDreamingStoppedIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field private final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .registers 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 79
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/server/dreams/DreamController$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$2;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 101
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    const-string/jumbo p2, "reason"

    const-string p3, "dream"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method private attach(Landroid/service/dreams/IDreamService;)V
    .registers 6

    .line 260
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 261
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v1, v2, v3}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_31

    .line 267
    nop

    .line 269
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 271
    iget-boolean p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    if-nez p1, :cond_30

    .line 272
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 273
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v0, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    .line 275
    :cond_30
    return-void

    .line 263
    :catch_31
    move-exception p1

    .line 264
    const-string v1, "DreamController"

    const-string v2, "The dream service died unexpectedly."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 266
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 107
    const-string v0, "Dreamland:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_e7

    .line 109
    const-string v0, "  mCurrentDream:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ec

    .line 120
    :cond_e7
    const-string v0, "  mCurrentDream: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_ec
    return-void
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 23

    .line 126
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move/from16 v10, p5

    const-string v11, "Unable to bind dream service: "

    const-string v12, "DreamController"

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 128
    const-wide/32 v14, 0x20000

    const-string/jumbo v1, "startDream"

    invoke-static {v14, v15, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    :try_start_17
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dream: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isTest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canDoze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v8, Lcom/android/server/dreams/DreamController$DreamRecord;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v14, v8

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v14, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    .line 140
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 141
    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v2, :cond_78

    const/16 v2, 0xdf

    goto :goto_7a

    :cond_78
    const/16 v2, 0xde

    .line 140
    :goto_7a
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V
    :try_end_7d
    .catchall {:try_start_17 .. :try_end_7d} :catchall_108

    .line 144
    :try_start_7d
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    const/16 v2, 0x7e7

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_87} :catch_f8
    .catchall {:try_start_7d .. :try_end_87} :catchall_108

    .line 149
    nop

    .line 151
    :try_start_88
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.dreams.DreamService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_108

    .line 155
    :try_start_97
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v9, v13}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_97 .. :try_end_be} :catch_db
    .catchall {:try_start_97 .. :try_end_be} :catchall_108

    .line 171
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    return-void

    .line 166
    :cond_c5
    nop

    .line 168
    :try_start_c6
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v13, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 169
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_108

    .line 171
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    nop

    .line 173
    return-void

    .line 162
    :catch_db
    move-exception v0

    .line 163
    :try_start_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {v9, v13}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_f1
    .catchall {:try_start_dc .. :try_end_f1} :catchall_108

    .line 171
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 165
    return-void

    .line 145
    :catch_f8
    move-exception v0

    .line 146
    :try_start_f9
    const-string v1, "Unable to add window token for dream."

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-virtual {v9, v13}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_108

    .line 171
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    return-void

    .line 171
    :catchall_108
    move-exception v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public stopDream(Z)V
    .registers 12

    .line 176
    const-string v0, "DreamController"

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-nez v1, :cond_7

    .line 177
    return-void

    .line 180
    :cond_7
    const-wide/32 v1, 0x20000

    const-string/jumbo v3, "stopDream"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    if-nez p1, :cond_3c

    .line 183
    :try_start_12
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_fa

    if-eqz p1, :cond_1c

    .line 254
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 184
    return-void

    .line 187
    :cond_1c
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz p1, :cond_3c

    .line 189
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_fa

    .line 191
    :try_start_27
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 192
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_3b
    .catchall {:try_start_27 .. :try_end_37} :catchall_fa

    .line 254
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 193
    return-void

    .line 194
    :catch_3b
    move-exception p1

    .line 200
    :cond_3c
    :try_start_3c
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 201
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping dream: name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isTest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", canDoze="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 206
    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v5, :cond_7e

    const/16 v5, 0xdf

    goto :goto_80

    :cond_7e
    const/16 v5, 0xde

    .line 205
    :goto_80
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 207
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 208
    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v5, :cond_8c

    const-string v5, "dozing_minutes"

    goto :goto_8e

    :cond_8c
    const-string v5, "dreaming_minutes"

    .line 209
    :goto_8e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 207
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-boolean v4, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    if-eqz v4, :cond_b8

    .line 215
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 218
    :cond_b8
    iget-object v4, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_ba
    .catchall {:try_start_3c .. :try_end_ba} :catchall_fa

    const/4 v5, 0x0

    if-eqz v4, :cond_d1

    .line 223
    :try_start_bd
    iget-object v4, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v4}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c2} :catch_c3
    .catchall {:try_start_bd .. :try_end_c2} :catchall_fa

    .line 226
    goto :goto_c4

    .line 224
    :catch_c3
    move-exception v4

    .line 229
    :goto_c4
    :try_start_c4
    iget-object v4, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v4}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, p1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_cd
    .catch Ljava/util/NoSuchElementException; {:try_start_c4 .. :try_end_cd} :catch_ce
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_fa

    .line 232
    goto :goto_cf

    .line 230
    :catch_ce
    move-exception v4

    .line 233
    :goto_cf
    :try_start_cf
    iput-object v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 236
    :cond_d1
    iget-boolean v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v3, :cond_da

    .line 237
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 239
    :cond_da
    invoke-virtual {p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V
    :try_end_dd
    .catchall {:try_start_cf .. :try_end_dd} :catchall_fa

    .line 242
    :try_start_dd
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e4} :catch_e5
    .catchall {:try_start_dd .. :try_end_e4} :catchall_fa

    .line 245
    goto :goto_eb

    .line 243
    :catch_e5
    move-exception v3

    .line 244
    :try_start_e6
    const-string v4, "Error removing window token for dream."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :goto_eb
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/dreams/DreamController$3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/dreams/DreamController$3;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_fa

    .line 254
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_fa
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method
