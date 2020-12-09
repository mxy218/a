.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;,
        Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;,
        Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field private mDestroyed:Z

.field private final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mIsBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsLowPriority:Z

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_8

    const-wide/32 v0, 0x1d4c0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x2710

    :goto_a
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 7

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 81
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    .line 83
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 85
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 87
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    .line 90
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    .line 93
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    .line 96
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 128
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 130
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .line 131
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 132
    new-instance p1, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 133
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 134
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    new-instance p2, Landroid/content/ComponentName;

    const-string p3, "com.android.printspooler"

    const-string p4, "com.android.printspooler.model.PrintSpoolerService"

    invoke-direct {p2, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method private bindLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 601
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    if-eqz v0, :cond_a

    .line 602
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 605
    :cond_a
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_f

    .line 606
    return-void

    .line 609
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 618
    const/4 v1, 0x0

    :try_start_13
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v2, :cond_19

    .line 619
    move v2, v0

    goto :goto_1c

    .line 621
    :cond_19
    const v2, 0x4000001

    .line 624
    :goto_1c
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 628
    :goto_2b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v4, :cond_3b

    .line 629
    nop

    .line 639
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_57

    .line 641
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 643
    nop

    .line 644
    return-void

    .line 631
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 632
    sget-wide v6, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long/2addr v6, v4

    .line 633
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4f

    .line 636
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 637
    goto :goto_2b

    .line 634
    :cond_4f
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Cannot get spooler!"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_57

    .line 641
    :catchall_57
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
.end method

.method private clearClientLocked()V
    .registers 4

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 682
    goto :goto_f

    .line 680
    :catch_7
    move-exception v0

    .line 681
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error clearing print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    :goto_f
    return-void
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_b

    .line 592
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v0

    return-object v1

    .line 594
    :cond_b
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    .line 595
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v0

    return-object v1

    .line 596
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private onAllPrintJobsHandled()V
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 581
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 582
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 587
    return-void
.end method

.method private setClientLocked()V
    .registers 4

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v0, v1}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 674
    goto :goto_10

    .line 672
    :catch_8
    move-exception v0

    .line 673
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error setting print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    :goto_10
    return-void
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .line 693
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 696
    return-void

    .line 694
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .line 687
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 690
    return-void

    .line 688
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unbindLocked()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v0, :cond_5

    .line 648
    return-void

    .line 651
    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v0, :cond_17

    .line 655
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 657
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 658
    return-void

    .line 661
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 662
    :catch_1d
    move-exception v0

    .line 664
    :goto_1e
    goto :goto_5
.end method


# virtual methods
.method public clearCustomPrinterIconCache()V
    .registers 5

    .line 429
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 430
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 433
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4f

    .line 435
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_28
    .catchall {:try_start_e .. :try_end_17} :catchall_26

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    .line 448
    :goto_22
    goto :goto_3c

    .line 447
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw v0

    .line 439
    :catchall_26
    move-exception v1

    goto :goto_40

    .line 436
    :catch_28
    move-exception v1

    .line 437
    :try_start_29
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error clearing custom printer icon cache."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_33
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    goto :goto_22

    .line 449
    :goto_3c
    return-void

    .line 447
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_3d

    throw v0

    .line 444
    :goto_40
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_43
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    throw v1

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    .line 433
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 5

    .line 187
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 188
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 191
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 193
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 200
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit p1

    .line 204
    :goto_20
    goto :goto_3a

    .line 203
    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v0

    .line 197
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 194
    :catch_26
    move-exception p1

    .line 195
    :try_start_27
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error creating print job."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 200
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit p1

    goto :goto_20

    .line 205
    :goto_3a
    return-void

    .line 203
    :catchall_3b
    move-exception v0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v0

    .line 200
    :goto_3e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 202
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 191
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final destroy()V
    .registers 3

    .line 547
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 551
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 553
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 8

    .line 560
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    const-string v1, "is_destroyed"

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 562
    const-string v1, "is_bound"

    const-wide v2, 0x10800000002L

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    move v4, v5

    :goto_1e
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 563
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_61

    .line 566
    :try_start_22
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 567
    const/4 v0, 0x0

    const-wide v1, 0x10b00000003L

    .line 568
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-interface {v3}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "--proto"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object v3

    .line 567
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;J[B)V

    goto :goto_57

    .line 570
    :cond_44
    const-string v0, "internal_state"

    .line 571
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    .line 570
    invoke-static {v1, v2}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->writeNested(Ljava/lang/String;[B)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_57} :catch_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_57} :catch_58
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_57} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_57} :catch_58

    .line 575
    :goto_57
    goto :goto_60

    .line 573
    :catch_58
    move-exception p1

    .line 574
    const-string v0, "RemotePrintSpooler"

    const-string v1, "Failed to dump remote instance"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    :goto_60
    return-void

    .line 563
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 5

    .line 402
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 403
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 406
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    .line 408
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 418
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1

    .line 408
    return-object p1

    .line 421
    :catchall_24
    move-exception p1

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 414
    :catchall_27
    move-exception p1

    goto :goto_41

    .line 410
    :catch_29
    move-exception p1

    .line 411
    :try_start_2a
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error getting custom printer icon."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 412
    const/4 p1, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_35
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1

    .line 412
    return-object p1

    .line 421
    :catchall_3e
    move-exception p1

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw p1

    .line 418
    :goto_41
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    throw p1

    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1

    .line 406
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 6

    .line 232
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 233
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 236
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_51

    .line 238
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 246
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2

    .line 238
    return-object p1

    .line 249
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 243
    :catchall_27
    move-exception p1

    goto :goto_42

    .line 240
    :catch_29
    move-exception p1

    .line 241
    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error getting print job info."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 246
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 247
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p1

    .line 250
    nop

    .line 251
    const/4 p1, 0x0

    return-object p1

    .line 249
    :catchall_3f
    move-exception p2

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw p2

    .line 246
    :goto_42
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    throw p1

    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit p2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1

    .line 236
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 165
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 168
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_51

    .line 170
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 178
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2

    .line 170
    return-object p1

    .line 181
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 175
    :catchall_27
    move-exception p1

    goto :goto_42

    .line 172
    :catch_29
    move-exception p1

    .line 173
    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error getting print jobs."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 178
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p1

    .line 182
    nop

    .line 183
    const/4 p1, 0x0

    return-object p1

    .line 181
    :catchall_3f
    move-exception p2

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw p2

    .line 178
    :goto_42
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_45
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    throw p1

    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit p2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1

    .line 168
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public increasePriority()V
    .registers 4

    .line 139
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v0, :cond_28

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 145
    :goto_d
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_25

    if-nez v1, :cond_20

    .line 147
    :try_start_11
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_25

    .line 150
    :goto_16
    goto :goto_d

    .line 148
    :catch_17
    move-exception v1

    .line 149
    :try_start_18
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 157
    :cond_20
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 158
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_25

    throw v1

    .line 160
    :cond_28
    :goto_28
    return-void
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 6

    .line 370
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 371
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 373
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 374
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4f

    .line 376
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_28
    .catchall {:try_start_e .. :try_end_17} :catchall_26

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    .line 389
    :goto_22
    goto :goto_3c

    .line 388
    :catchall_23
    move-exception p2

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p2

    .line 381
    :catchall_26
    move-exception p1

    goto :goto_40

    .line 378
    :catch_28
    move-exception p1

    .line 379
    :try_start_29
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error loading new custom printer icon."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_33
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    goto :goto_22

    .line 390
    :goto_3c
    return-void

    .line 388
    :catchall_3d
    move-exception p2

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_3d

    throw p2

    .line 385
    :goto_40
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 386
    :try_start_43
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    throw p1

    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1

    .line 374
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 504
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 507
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 509
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    .line 521
    :goto_20
    goto :goto_3a

    .line 520
    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v0

    .line 513
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 510
    :catch_26
    move-exception p1

    .line 511
    :try_start_27
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error pruning approved print services."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    goto :goto_20

    .line 522
    :goto_3a
    return-void

    .line 520
    :catchall_3b
    move-exception v0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v0

    .line 517
    :goto_3e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 507
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final removeObsoletePrintJobs()V
    .registers 5

    .line 525
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 526
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 528
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 529
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 531
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    .line 543
    :goto_20
    goto :goto_3a

    .line 542
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v0

    .line 535
    :catchall_24
    move-exception v1

    goto :goto_3e

    .line 532
    :catch_26
    move-exception v1

    .line 533
    :try_start_27
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    goto :goto_20

    .line 544
    :goto_3a
    return-void

    .line 542
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v0

    .line 539
    :goto_3e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw v1

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 529
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 5

    .line 475
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 476
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 479
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 481
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    .line 494
    :goto_20
    goto :goto_3a

    .line 493
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p2

    .line 486
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 483
    :catch_26
    move-exception p1

    .line 484
    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting print job cancelling."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    goto :goto_20

    .line 495
    :goto_3a
    return-void

    .line 493
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p2

    .line 490
    :goto_3e
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 491
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 479
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8

    .line 255
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 256
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 259
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    .line 261
    const/4 v0, 0x1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 269
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2

    .line 261
    return p1

    .line 272
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 266
    :catchall_27
    move-exception p1

    goto :goto_41

    .line 263
    :catch_29
    move-exception p1

    .line 264
    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting print job state."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 269
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 270
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p1

    .line 273
    nop

    .line 274
    return v1

    .line 272
    :catchall_3e
    move-exception p2

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p2

    .line 269
    :goto_41
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    throw p1

    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1

    .line 259
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7

    .line 452
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 453
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 455
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 456
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_50

    .line 458
    const/4 v0, 0x1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_18} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_29
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 466
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2

    .line 458
    return p1

    .line 469
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 463
    :catchall_27
    move-exception p1

    goto :goto_41

    .line 460
    :catch_29
    move-exception p1

    .line 461
    :try_start_2a
    const-string p2, "RemotePrintSpooler"

    const-string v2, "Error setting print job tag."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 466
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 467
    :try_start_34
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p1

    .line 470
    nop

    .line 471
    return v1

    .line 469
    :catchall_3e
    move-exception p2

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p2

    .line 466
    :goto_41
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_44
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    throw p1

    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1

    .line 456
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .registers 5

    .line 285
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 286
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 289
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 291
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    .line 302
    :goto_20
    goto :goto_3a

    .line 301
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p2

    .line 295
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 292
    :catch_26
    move-exception p1

    .line 293
    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting progress."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    goto :goto_20

    .line 303
    :goto_3a
    return-void

    .line 301
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p2

    .line 298
    :goto_3e
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 299
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 289
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 6

    .line 341
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 342
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 345
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 347
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    .line 358
    :goto_20
    goto :goto_3a

    .line 357
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p2

    .line 351
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 348
    :catch_26
    move-exception p1

    .line 349
    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting status."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    goto :goto_20

    .line 359
    :goto_3a
    return-void

    .line 357
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p2

    .line 354
    :goto_3e
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 355
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 345
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 5

    .line 312
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 313
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 316
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4d

    .line 318
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_26
    .catchall {:try_start_e .. :try_end_15} :catchall_24

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_18
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    .line 329
    :goto_20
    goto :goto_3a

    .line 328
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p2

    .line 322
    :catchall_24
    move-exception p1

    goto :goto_3e

    .line 319
    :catch_26
    move-exception p1

    .line 320
    :try_start_27
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting status."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_31
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    goto :goto_20

    .line 330
    :goto_3a
    return-void

    .line 328
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p2

    .line 325
    :goto_3e
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 326
    :try_start_41
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    throw p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 316
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 6

    .line 208
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 209
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 212
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_56

    .line 214
    const/4 v0, 0x1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_15} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_15} :catch_29
    .catchall {:try_start_e .. :try_end_15} :catchall_27

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_1b
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    .line 228
    :goto_23
    goto :goto_40

    .line 227
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p1

    .line 218
    :catchall_27
    move-exception p2

    goto :goto_44

    .line 215
    :catch_29
    move-exception p2

    .line 216
    :try_start_2a
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error writing print job data."

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_37
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    goto :goto_23

    .line 229
    :goto_40
    return-void

    .line 227
    :catchall_41
    move-exception p1

    monitor-exit p2
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw p1

    .line 223
    :goto_44
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 225
    :try_start_4a
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_53

    throw p2

    :catchall_53
    move-exception p2

    :try_start_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p2

    .line 212
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method
