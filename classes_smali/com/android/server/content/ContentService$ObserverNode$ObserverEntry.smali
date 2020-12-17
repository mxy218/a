.class Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field private final observersLock:Ljava/lang/Object;

.field public final pid:I

.field final synthetic this$0:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field private final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V
    .registers 13
    .param p2, "o"  # Landroid/database/IContentObserver;
    .param p3, "n"  # Z
    .param p4, "observersLock"  # Ljava/lang/Object;
    .param p5, "_uid"  # I
    .param p6, "_pid"  # I
    .param p7, "_userHandle"  # I
    .param p8, "uri"  # Landroid/net/Uri;

    .line 1372
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 1374
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 1375
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1376
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 1377
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 1378
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 1380
    invoke-static {}, Lcom/android/server/content/ContentService;->access$300()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/os/BinderDeathDispatcher;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I

    move-result p1

    .line 1381
    .local p1, "entries":I
    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_95

    .line 1383
    :cond_22
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_95

    .line 1386
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 1387
    :try_start_2b
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1388
    .local v1, "alreadyDetected":Z
    if-nez v1, :cond_48

    .line 1389
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object v2

    iget v3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_92

    .line 1392
    if-nez v1, :cond_95

    .line 1393
    const/4 v0, 0x0

    .line 1395
    .local v0, "caller":Ljava/lang/String;
    :try_start_4c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1396
    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1395
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5c} :catch_5e

    move-object v0, v2

    .line 1398
    goto :goto_5f

    .line 1397
    :catch_5e
    move-exception v2

    .line 1399
    :goto_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer registered too many times. Leak? cpid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cpkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1391
    .end local v0  # "caller":Ljava/lang/String;
    .end local v1  # "alreadyDetected":Z
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1

    .line 1406
    :cond_95
    :goto_95
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1363
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1410
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 1412
    monitor-exit v0

    .line 1413
    return-void

    .line 1412
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "prefix"  # Ljava/lang/String;
    .param p6, "pidCounts"  # Landroid/util/SparseIntArray;

    .line 1417
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1418
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": pid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    iget v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    nop

    .line 1423
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    .line 1422
    :goto_3f
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    return-void
.end method
