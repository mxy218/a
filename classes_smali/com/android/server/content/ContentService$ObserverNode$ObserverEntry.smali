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
    .registers 9

    .line 1367
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 1369
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 1370
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1371
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 1372
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 1373
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 1375
    invoke-static {}, Lcom/android/server/content/ContentService;->access$300()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/os/BinderDeathDispatcher;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I

    move-result p1

    .line 1376
    const/4 p2, -0x1

    if-ne p1, p2, :cond_22

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_95

    .line 1378
    :cond_22
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_95

    .line 1381
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object p1

    monitor-enter p1

    .line 1382
    :try_start_2b
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object p2

    iget p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 1383
    if-nez p2, :cond_48

    .line 1384
    invoke-static {}, Lcom/android/server/content/ContentService;->access$400()Landroid/util/ArraySet;

    move-result-object p3

    iget p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_92

    .line 1387
    if-nez p2, :cond_95

    .line 1388
    const/4 p1, 0x0

    .line 1390
    :try_start_4c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1391
    invoke-interface {p2, p3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 1390
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5c} :catch_5e

    .line 1393
    move-object p1, p2

    goto :goto_5f

    .line 1392
    :catch_5e
    move-exception p2

    .line 1394
    :goto_5f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Observer registered too many times. Leak? cpid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cuid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cpkg="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1386
    :catchall_92
    move-exception p2

    :try_start_93
    monitor-exit p1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw p2

    .line 1401
    :cond_95
    :goto_95
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .registers 1

    .line 1358
    iget p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    return p0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1405
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 1407
    monitor-exit v0

    .line 1408
    return-void

    .line 1407
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 7

    .line 1412
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p6, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": pid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " uid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " user="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " target="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    nop

    .line 1418
    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    .line 1417
    :goto_3f
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    return-void
.end method
