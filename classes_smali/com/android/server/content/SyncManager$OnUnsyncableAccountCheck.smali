.class Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUnsyncableAccountCheck"
.end annotation


# static fields
.field static final SERVICE_BOUND_TIME_MILLIS:J = 0x1388L


# instance fields
.field private final mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

.field private final mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2773
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2774
    iput-object p2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    .line 2775
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 1

    .line 2763
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    return-void
.end method

.method private onReady()V
    .registers 4

    .line 2778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2780
    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    invoke-interface {v2}, Lcom/android/server/content/SyncManager$OnReadyCallback;->onReady()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 2782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2783
    nop

    .line 2784
    return-void

    .line 2782
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 2788
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object p1

    .line 2791
    :try_start_4
    new-instance p2, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;

    invoke-direct {p2, p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;-><init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    invoke-interface {p1, p2}, Landroid/content/ISyncAdapter;->onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 2806
    goto :goto_29

    .line 2799
    :catch_d
    move-exception p1

    .line 2800
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not call onUnsyncableAccountDone "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2805
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    .line 2807
    :goto_29
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 2812
    return-void
.end method
