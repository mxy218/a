.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;
    }
.end annotation


# instance fields
.field mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field final mPendingRequests:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .registers 6

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    .line 473
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    .line 484
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 485
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 486
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .registers 5

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Ljava/lang/Object;
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .registers 1

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .registers 1

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindIfHasPendingRequestsLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .registers 1

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private bindLocked()Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_5e

    .line 529
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 531
    :try_start_f
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 532
    invoke-static {v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_59

    .line 533
    if-nez v2, :cond_1c

    .line 535
    const/4 v2, 0x0

    .line 547
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v2

    .line 537
    :cond_1c
    :try_start_1c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 539
    const-string v3, "TextClassificationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const v5, 0x4200001

    iget v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 544
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 540
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 545
    iput-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_59

    .line 547
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    nop

    .line 549
    return v2

    .line 547
    :catchall_59
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 524
    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    return v0
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 554
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 555
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_16
    const-string v1, "binding"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 557
    const-string/jumbo v1, "numberRequests"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private handlePendingRequestsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 497
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    if-eqz v0, :cond_34

    .line 498
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 499
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    .line 501
    :cond_18
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 502
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 506
    :cond_25
    :goto_25
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 510
    :cond_34
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
