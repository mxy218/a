.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 24231
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24225
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 24228
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 24232
    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .registers 3

    .line 24221
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .registers 3

    .line 24221
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .registers 5

    .line 24221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .registers 1

    .line 24221
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24259
    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    goto :goto_21

    .line 24265
    :cond_7
    iget p2, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v0, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object p3, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_21

    .line 24261
    :cond_17
    iget p2, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p3, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-interface {p1, p2, p3}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    .line 24262
    nop

    .line 24269
    :goto_21
    return-void
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .registers 5

    .line 24272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24274
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 24275
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 24276
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 24277
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 24278
    return-void
.end method

.method private notifyStatusChanged(II)V
    .registers 5

    .line 24281
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    .line 24282
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .registers 7

    .line 24285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24287
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 24288
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 24289
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 24290
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 24291
    const/4 p3, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 24293
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter p3

    .line 24294
    :try_start_37
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24295
    monitor-exit p3

    .line 24296
    return-void

    .line 24295
    :catchall_3e
    move-exception p1

    monitor-exit p3
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 24244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 24245
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 24246
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1f

    .line 24247
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageMoveObserver;

    .line 24249
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 24251
    goto :goto_1c

    .line 24250
    :catch_1b
    move-exception v3

    .line 24246
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 24253
    :cond_1f
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 24254
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 24255
    return-void
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3

    .line 24235
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 24236
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3

    .line 24239
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24240
    return-void
.end method
