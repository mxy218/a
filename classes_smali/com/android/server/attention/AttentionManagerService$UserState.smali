.class public Lcom/android/server/attention/AttentionManagerService$UserState;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    }
.end annotation


# instance fields
.field mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAttentionHandler:Landroid/os/Handler;

.field private mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mService:Landroid/service/attention/IAttentionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ComponentName;)V
    .registers 8

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/server/attention/AttentionManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    .line 477
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    .line 478
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mContext:Landroid/content/Context;

    .line 479
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 480
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mComponentName:Landroid/content/ComponentName;

    .line 481
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionHandler:Landroid/os/Handler;

    .line 482
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 456
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/attention/AttentionManagerService$UserState;)Ljava/lang/Object;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/attention/AttentionManagerService$UserState;Z)Z
    .registers 2

    .line 456
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 1

    .line 456
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$UserState;->handlePendingCallbackLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)I
    .registers 1

    .line 456
    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 1

    .line 456
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$UserState;->bindLocked()V

    return-void
.end method

.method private bindLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 504
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_9

    goto :goto_17

    .line 508
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    .line 512
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;

    invoke-direct {v1, p0}, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void

    .line 505
    :cond_17
    :goto_17
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 527
    const-string v1, "current attention check:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v1, :cond_73

    .line 529
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is dispatched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is fulfilled:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 534
    :cond_73
    const-string v1, "attention check cache:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    if-eqz v1, :cond_d2

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last computed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$400(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 542
    :cond_d2
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_d4
    move-exception p1

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_1a .. :try_end_d6} :catchall_d4

    throw p1
.end method

.method private handlePendingCallbackLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 487
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_25

    .line 489
    :try_start_c
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_24

    .line 491
    :catch_1c
    move-exception v0

    .line 492
    const-string v0, "AttentionManagerService"

    const-string v1, "Cannot call into the AttentionService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_24
    goto :goto_2f

    .line 495
    :cond_25
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 498
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public synthetic lambda$bindLocked$0$AttentionManagerService$UserState()V
    .registers 6

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.attention.AttentionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mComponentName:Landroid/content/ComponentName;

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 520
    return-void
.end method
