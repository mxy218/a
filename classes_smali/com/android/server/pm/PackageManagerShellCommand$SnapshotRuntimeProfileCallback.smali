.class Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# instance fields
.field private mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mErrCode:I

.field private mProfileReadFd:Landroid/os/ParcelFileDescriptor;

.field private mSuccess:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1598
    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1601
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    .line 1603
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .registers 2

    .line 1598
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I
    .registers 1

    .line 1598
    iget p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 1598
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method


# virtual methods
.method public onError(I)V
    .registers 3

    .line 1621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1622
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 1623
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1624
    return-void
.end method

.method public onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 1612
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a

    .line 1615
    goto :goto_e

    .line 1613
    :catch_a
    move-exception p1

    .line 1614
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1616
    :goto_e
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1617
    return-void
.end method

.method waitTillDone()Z
    .registers 6

    .line 1627
    nop

    .line 1631
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x989680

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_d} :catch_e

    .line 1633
    goto :goto_10

    .line 1632
    :catch_e
    move-exception v1

    move v1, v0

    .line 1634
    :goto_10
    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method
