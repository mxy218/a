.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_controller"  # Lcom/android/server/am/PendingIntentController;
    .param p2, "_k"  # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"  # I

    .line 202
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 203
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 204
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 205
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 206
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 207
    return-void
.end method

.method private completeFinalize()V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 490
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_1e

    .line 491
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v1  # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_1e
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static synthetic lambda$hlEHdgdG_SS5n3v7IRr7e6QZgLQ(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;

    .line 239
    if-nez p1, :cond_3

    return-void

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 264
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 265
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 497
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 498
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 502
    :cond_44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 503
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 506
    :cond_6b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 507
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    :cond_87
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a3

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    :cond_a3
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_c3

    .line 514
    :cond_ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 515
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 517
    :cond_c3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10b

    .line 518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d1
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_108

    .line 521
    if-eqz v0, :cond_e0

    .line 522
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    :cond_e0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 528
    .end local v0  # "i":I
    :cond_108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 530
    :cond_10b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_13d

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_119
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_13d

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_119

    .line 537
    .end local v0  # "i":I
    :cond_13d
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_11

    .line 479
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_16

    .line 483
    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 484
    nop

    .line 485
    return-void

    .line 483
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"  # Lcom/android/internal/os/IResultReceiver;

    .line 246
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 247
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 250
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "code"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "whitelistToken"  # Landroid/os/IBinder;
    .param p5, "finishedReceiver"  # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"  # Ljava/lang/String;
    .param p7, "options"  # Landroid/os/Bundle;

    .line 270
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 272
    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 51
    .param p1, "code"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "whitelistToken"  # Landroid/os/IBinder;
    .param p5, "finishedReceiver"  # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"  # Ljava/lang/String;
    .param p7, "resultTo"  # Landroid/os/IBinder;
    .param p8, "resultWho"  # Ljava/lang/String;
    .param p9, "requestCode"  # I
    .param p10, "flagsMask"  # I
    .param p11, "flagsValues"  # I
    .param p12, "options"  # Landroid/os/Bundle;

    .line 283
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    if-eqz v14, :cond_e

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 284
    :cond_e
    if-eqz v12, :cond_13

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 286
    :cond_13
    const/4 v1, 0x0

    .line 287
    .local v1, "duration":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 288
    .local v2, "finalIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 289
    .local v3, "allIntents":[Landroid/content/Intent;
    const/4 v4, 0x0

    .line 290
    .local v4, "allResolvedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 291
    .local v5, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 292
    :try_start_1d
    iget-boolean v7, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_442

    const/16 v11, -0x60

    if-eqz v7, :cond_2f

    .line 293
    :try_start_23
    monitor-exit v6
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return v11

    .line 354
    :catchall_25
    move-exception v0

    move-object/from16 v24, p3

    move/from16 v25, p10

    move/from16 v26, p11

    move-object v11, v15

    goto/16 :goto_44c

    .line 296
    :cond_2f
    :try_start_2f
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 297
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_442

    const/high16 v8, 0x40000000  # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_3f

    .line 298
    :try_start_3a
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_25

    .line 301
    :cond_3f
    :try_start_3f
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_442

    if-eqz v7, :cond_4f

    :try_start_45
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_25

    goto :goto_54

    :cond_4f
    :try_start_4f
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_442

    :goto_54
    move-object v10, v7

    .line 303
    .end local v2  # "finalIntent":Landroid/content/Intent;
    .local v10, "finalIntent":Landroid/content/Intent;
    :try_start_55
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_436

    const/high16 v7, 0x4000000

    and-int/2addr v2, v7

    const/4 v7, 0x0

    if-eqz v2, :cond_61

    move v2, v0

    goto :goto_62

    :cond_61
    move v2, v7

    .line 304
    .local v2, "immutable":Z
    :goto_62
    if-nez v2, :cond_bb

    .line 305
    if-eqz v14, :cond_86

    .line 306
    :try_start_66
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v8

    .line 307
    .local v8, "changes":I
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_77

    .line 308
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_7b

    .end local p3  # "resolvedType":Ljava/lang/String;
    .local v9, "resolvedType":Ljava/lang/String;
    goto :goto_79

    .line 307
    .end local v9  # "resolvedType":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    :cond_77
    move-object/from16 v9, p3

    .line 310
    .end local v8  # "changes":I
    .end local p3  # "resolvedType":Ljava/lang/String;
    .restart local v9  # "resolvedType":Ljava/lang/String;
    :goto_79
    move-object v8, v9

    goto :goto_8a

    .line 354
    .end local v2  # "immutable":Z
    .end local v9  # "resolvedType":Ljava/lang/String;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    :catchall_7b
    move-exception v0

    move-object/from16 v24, p3

    move/from16 v25, p10

    move/from16 v26, p11

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_44c

    .line 311
    .restart local v2  # "immutable":Z
    :cond_86
    :try_start_86
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_ae

    .line 313
    .end local p3  # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    :goto_8a
    move/from16 v9, p10

    and-int/lit16 v9, v9, -0xc4

    .line 314
    .end local p10  # "flagsMask":I
    .local v9, "flagsMask":I
    and-int v16, p11, v9

    .line 315
    .end local p11  # "flagsValues":I
    .local v16, "flagsValues":I
    :try_start_90
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    not-int v11, v9

    and-int v11, v17, v11

    or-int v11, v11, v16

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_a3

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v16

    goto :goto_c7

    .line 354
    .end local v2  # "immutable":Z
    :catchall_a3
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v25, v9

    move-object v2, v10

    move-object v11, v15

    move/from16 v26, v16

    goto/16 :goto_44c

    .end local v8  # "resolvedType":Ljava/lang/String;
    .end local v9  # "flagsMask":I
    .end local v16  # "flagsValues":I
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p10  # "flagsMask":I
    .restart local p11  # "flagsValues":I
    :catchall_ae
    move-exception v0

    move/from16 v9, p10

    move-object/from16 v24, p3

    move/from16 v26, p11

    move/from16 v25, v9

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_44c

    .line 317
    .restart local v2  # "immutable":Z
    :cond_bb
    move/from16 v9, p10

    :try_start_bd
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_42c

    .end local p3  # "resolvedType":Ljava/lang/String;
    .restart local v8  # "resolvedType":Ljava/lang/String;
    move/from16 v26, p11

    move-object/from16 v24, v8

    move/from16 v25, v9

    .line 322
    .end local v8  # "resolvedType":Ljava/lang/String;
    .end local p10  # "flagsMask":I
    .end local p11  # "flagsValues":I
    .local v24, "resolvedType":Ljava/lang/String;
    .local v25, "flagsMask":I
    .local v26, "flagsValues":I
    :goto_c7
    :try_start_c7
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_428

    .line 323
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz v8, :cond_da

    .line 324
    :try_start_cd
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d5

    goto :goto_da

    .line 354
    .end local v2  # "immutable":Z
    .end local v8  # "opts":Landroid/app/ActivityOptions;
    :catchall_d5
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_44c

    .line 328
    .restart local v2  # "immutable":Z
    .restart local v8  # "opts":Landroid/app/ActivityOptions;
    :cond_da
    :goto_da
    :try_start_da
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_428

    move-object v5, v9

    .line 329
    if-nez v5, :cond_ea

    .line 330
    :try_start_e1
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_e6
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_d5

    move-object v5, v9

    move-object/from16 v27, v5

    goto :goto_ef

    .line 332
    :cond_ea
    :try_start_ea
    invoke-virtual {v5, v8}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_428

    move-object/from16 v27, v5

    .line 335
    .end local v5  # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v27, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_ef
    :try_start_ef
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_422

    if-eqz v5, :cond_104

    .line 336
    :try_start_f3
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_ff

    move-object v1, v5

    move-object/from16 v28, v1

    goto :goto_106

    .line 354
    .end local v2  # "immutable":Z
    .end local v8  # "opts":Landroid/app/ActivityOptions;
    :catchall_ff
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_425

    .line 335
    .restart local v2  # "immutable":Z
    .restart local v8  # "opts":Landroid/app/ActivityOptions;
    :cond_104
    move-object/from16 v28, v1

    .line 339
    .end local v1  # "duration":Ljava/lang/Long;
    .local v28, "duration":Ljava/lang/Long;
    :goto_106
    :try_start_106
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_41a

    const/4 v5, 0x2

    if-ne v1, v5, :cond_15a

    :try_start_10d
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_15a

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_15a

    .line 343
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/Intent;

    move-object v3, v1

    .line 344
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v4, v1

    .line 345
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v9, v9

    invoke-static {v1, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v1, :cond_148

    .line 347
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v1, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_148
    array-length v1, v3

    sub-int/2addr v1, v0

    aput-object v10, v3, v1

    .line 351
    array-length v1, v4

    sub-int/2addr v1, v0

    aput-object v24, v4, v1
    :try_end_150
    .catchall {:try_start_10d .. :try_end_150} :catchall_155

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    goto :goto_15e

    .line 354
    .end local v2  # "immutable":Z
    .end local v8  # "opts":Landroid/app/ActivityOptions;
    :catchall_155
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_41d

    :cond_15a
    move-object/from16 v29, v3

    move-object/from16 v30, v4

    .end local v3  # "allIntents":[Landroid/content/Intent;
    .end local v4  # "allResolvedTypes":[Ljava/lang/String;
    .local v29, "allIntents":[Landroid/content/Intent;
    .local v30, "allResolvedTypes":[Ljava/lang/String;
    :goto_15e
    :try_start_15e
    monitor-exit v6
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_40e

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 358
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v31

    .line 359
    .local v31, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 361
    .local v32, "origId":J
    const/16 v34, 0x0

    .line 363
    .local v34, "res":I
    if-eqz v28, :cond_1fe

    .line 364
    :try_start_16f
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v11}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 365
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v2

    if-nez v2, :cond_1d9

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .local v2, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "pendingintent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 369
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a0

    .line 371
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bf

    .line 372
    :cond_1a0
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1ae

    .line 373
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_1bf

    .line 374
    :cond_1ae
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1bf

    .line 375
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1bf
    :goto_1bf
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 378
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 377
    move-object/from16 v16, v3

    move/from16 v17, v31

    move/from16 v18, v11

    move/from16 v19, v4

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V

    .line 379
    .end local v2  # "tag":Ljava/lang/StringBuilder;
    goto :goto_1fe

    .line 380
    :cond_1d9
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not doing whitelist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": caller state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f7
    .catchall {:try_start_16f .. :try_end_1f7} :catchall_1f8

    goto :goto_1fe

    .line 469
    .end local v1  # "procState":I
    :catchall_1f8
    move-exception v0

    move/from16 v20, v11

    move-object v11, v15

    goto/16 :goto_40a

    .line 384
    :cond_1fe
    :goto_1fe
    if-eqz p5, :cond_202

    move v1, v0

    goto :goto_203

    :cond_202
    move v1, v7

    :goto_203
    move/from16 v35, v1

    .line 385
    .local v35, "sendFinish":Z
    :try_start_205
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_209
    .catchall {:try_start_205 .. :try_end_209} :catchall_406

    .line 386
    .local v1, "userId":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_218

    .line 387
    :try_start_20c
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v2
    :try_end_214
    .catchall {:try_start_20c .. :try_end_214} :catchall_1f8

    move v1, v2

    move/from16 v36, v1

    goto :goto_21a

    .line 386
    :cond_218
    move/from16 v36, v1

    .line 391
    .end local v1  # "userId":I
    .local v36, "userId":I
    :goto_21a
    :try_start_21a
    iget v1, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_21c
    .catchall {:try_start_21a .. :try_end_21c} :catchall_406

    if-eq v1, v11, :cond_22a

    :try_start_21e
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 392
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v1
    :try_end_226
    .catchall {:try_start_21e .. :try_end_226} :catchall_1f8

    if-eqz v1, :cond_22a

    move v1, v0

    goto :goto_22b

    :cond_22a
    move v1, v7

    :goto_22b
    move/from16 v37, v1

    .line 397
    .local v37, "allowTrampoline":Z
    :try_start_22d
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_231
    .catchall {:try_start_22d .. :try_end_231} :catchall_406

    if-eq v1, v0, :cond_361

    if-eq v1, v5, :cond_2be

    const/4 v2, 0x3

    if-eq v1, v2, :cond_297

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v1, v2, :cond_244

    if-eq v1, v3, :cond_244

    move-object/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_3bb

    .line 448
    :cond_244
    :try_start_244
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v4, v3, :cond_253

    move/from16 v20, v0

    goto :goto_255

    :cond_253
    move/from16 v20, v7

    :goto_255
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 451
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_267

    if-eqz v37, :cond_264

    goto :goto_267

    :cond_264
    move/from16 v23, v7

    goto :goto_269

    :cond_267
    :goto_267
    move/from16 v23, v0

    .line 448
    :goto_269
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v24

    move-object/from16 v21, v3

    move/from16 v22, v36

    invoke-virtual/range {v16 .. v23}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/content/ComponentName;
    :try_end_278
    .catch Ljava/lang/RuntimeException; {:try_start_244 .. :try_end_278} :catch_289
    .catch Landroid/os/TransactionTooLargeException; {:try_start_244 .. :try_end_278} :catch_27e
    .catchall {:try_start_244 .. :try_end_278} :catchall_1f8

    .line 457
    move-object/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_3bb

    .line 455
    :catch_27e
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    const/16 v34, -0x60

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v9, v34

    goto/16 :goto_3bd

    .line 453
    .end local v0  # "e":Landroid/os/TransactionTooLargeException;
    :catch_289
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_28a
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v0  # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3bb

    .line 425
    :cond_297
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v17, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, p1

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_2b8
    .catchall {:try_start_28a .. :try_end_2b8} :catchall_1f8

    .line 427
    move-object/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_3bb

    .line 404
    :cond_2be
    :try_start_2be
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_2c2
    .catch Ljava/lang/RuntimeException; {:try_start_2be .. :try_end_2c2} :catch_352
    .catchall {:try_start_2be .. :try_end_2c2} :catchall_34b

    if-eqz v1, :cond_30b

    :try_start_2c4
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_30b

    .line 405
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 410
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_2dc
    .catch Ljava/lang/RuntimeException; {:try_start_2c4 .. :try_end_2dc} :catch_304
    .catchall {:try_start_2c4 .. :try_end_2dc} :catchall_2fe

    .line 405
    move/from16 v3, v31

    move v4, v11

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, p7

    move-object/from16 v9, v27

    move-object/from16 v19, v10

    .end local v10  # "finalIntent":Landroid/content/Intent;
    .local v19, "finalIntent":Landroid/content/Intent;
    move/from16 v10, v36

    move/from16 v20, v11

    .end local v11  # "callingUid":I
    .local v20, "callingUid":I
    move v11, v0

    move-object/from16 v12, p0

    move-object v14, v13

    move/from16 v13, v16

    :try_start_2f3
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_2f7
    .catch Ljava/lang/RuntimeException; {:try_start_2f3 .. :try_end_2f7} :catch_349
    .catchall {:try_start_2f3 .. :try_end_2f7} :catchall_2fa

    move/from16 v34, v0

    .end local v34  # "res":I
    .local v0, "res":I
    goto :goto_345

    .line 469
    .end local v0  # "res":I
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    .restart local v34  # "res":I
    :catchall_2fa
    move-exception v0

    move-object v11, v15

    goto/16 :goto_3ae

    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v20  # "callingUid":I
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    :catchall_2fe
    move-exception v0

    move/from16 v20, v11

    move-object v14, v13

    move-object v11, v15

    goto :goto_350

    .line 420
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_304
    move-exception v0

    move-object/from16 v19, v10

    move/from16 v20, v11

    move-object v14, v13

    goto :goto_357

    .line 404
    :cond_30b
    move-object/from16 v19, v10

    move/from16 v20, v11

    move-object v14, v13

    .line 412
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    :try_start_310
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const-string v16, "PendingIntentRecord"

    const/16 v17, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 418
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 412
    move/from16 v3, v31

    move/from16 v4, v20

    move-object/from16 v6, v19

    move-object/from16 v7, v24

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, v27

    move/from16 v13, v36

    move-object v14, v0

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, p0

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_343
    .catch Ljava/lang/RuntimeException; {:try_start_310 .. :try_end_343} :catch_349
    .catchall {:try_start_310 .. :try_end_343} :catchall_3ab

    move/from16 v34, v0

    .line 422
    :goto_345
    move/from16 v9, v34

    goto/16 :goto_3bd

    .line 420
    :catch_349
    move-exception v0

    goto :goto_357

    .line 469
    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v20  # "callingUid":I
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    :catchall_34b
    move-exception v0

    move/from16 v20, v11

    move-object/from16 v11, p0

    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    :goto_350
    goto/16 :goto_40a

    .line 420
    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v20  # "callingUid":I
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_352
    move-exception v0

    move-object/from16 v19, v10

    move/from16 v20, v11

    .line 421
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    :goto_357
    :try_start_357
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35e
    .catchall {:try_start_357 .. :try_end_35e} :catchall_3ab

    .line 423
    nop

    .end local v0  # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3bb

    .line 432
    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v20  # "callingUid":I
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    :cond_361
    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    move-object/from16 v15, p0

    :try_start_367
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p5, :cond_377

    move v14, v0

    goto :goto_378

    :cond_377
    move v14, v7

    :goto_378
    const/16 v16, 0x0

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 436
    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38a

    if-eqz v37, :cond_387

    goto :goto_38a

    :cond_387
    move/from16 v17, v7

    goto :goto_38c

    :cond_38a
    :goto_38a
    move/from16 v17, v0

    .line 432
    :goto_38c
    move/from16 v4, v20

    move/from16 v5, v31

    move-object/from16 v6, v19

    move-object/from16 v7, v24

    move-object/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p12

    move/from16 v15, v16

    move/from16 v16, v36

    invoke-virtual/range {v1 .. v17}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0
    :try_end_3a4
    .catch Ljava/lang/RuntimeException; {:try_start_367 .. :try_end_3a4} :catch_3b2
    .catchall {:try_start_367 .. :try_end_3a4} :catchall_3ab

    .line 438
    .local v0, "sent":I
    if-nez v0, :cond_3a8

    .line 439
    const/16 v35, 0x0

    .line 443
    .end local v0  # "sent":I
    :cond_3a8
    move/from16 v9, v34

    goto :goto_3bd

    .line 469
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    :catchall_3ab
    move-exception v0

    move-object/from16 v11, p0

    :goto_3ae
    move-object/from16 v10, v19

    goto/16 :goto_40a

    .line 441
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_3b2
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3b3
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ba
    .catchall {:try_start_3b3 .. :try_end_3ba} :catchall_400

    .line 444
    nop

    .line 461
    .end local v0  # "e":Ljava/lang/RuntimeException;
    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v20  # "callingUid":I
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    :goto_3bb
    move/from16 v9, v34

    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .end local v34  # "res":I
    .local v9, "res":I
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    :goto_3bd
    if-eqz v35, :cond_3f7

    const/16 v1, -0x60

    if-eq v9, v1, :cond_3f7

    .line 463
    :try_start_3c3
    new-instance v2, Landroid/content/Intent;
    :try_end_3c5
    .catch Landroid/os/RemoteException; {:try_start_3c3 .. :try_end_3c5} :catch_3f1
    .catchall {:try_start_3c3 .. :try_end_3c5} :catchall_3e9

    move-object/from16 v10, v19

    .end local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    :try_start_3c7
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3ca
    .catch Landroid/os/RemoteException; {:try_start_3c7 .. :try_end_3ca} :catch_3e5
    .catchall {:try_start_3c7 .. :try_end_3ca} :catchall_3df

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    :try_start_3d1
    iget-object v0, v11, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_3da
    .catch Landroid/os/RemoteException; {:try_start_3d1 .. :try_end_3da} :catch_3dd
    .catchall {:try_start_3d1 .. :try_end_3da} :catchall_3db

    .line 466
    goto :goto_3fb

    .line 469
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    :catchall_3db
    move-exception v0

    goto :goto_3e2

    .line 465
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_3dd
    move-exception v0

    goto :goto_3fb

    .line 469
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    :catchall_3df
    move-exception v0

    move-object/from16 v11, p0

    :goto_3e2
    move/from16 v34, v9

    goto :goto_40a

    .line 465
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_3e5
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_3fb

    .line 469
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    :catchall_3e9
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v19

    move/from16 v34, v9

    .end local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    goto :goto_40a

    .line 465
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v35  # "sendFinish":Z
    .restart local v36  # "userId":I
    .restart local v37  # "allowTrampoline":Z
    :catch_3f1
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v19

    .end local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    goto :goto_3fb

    .line 461
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    :cond_3f7
    move-object/from16 v11, p0

    move-object/from16 v10, v19

    .line 469
    .end local v19  # "finalIntent":Landroid/content/Intent;
    .end local v35  # "sendFinish":Z
    .end local v36  # "userId":I
    .end local v37  # "allowTrampoline":Z
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    :goto_3fb
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    nop

    .line 472
    return v9

    .line 469
    .end local v9  # "res":I
    .end local v10  # "finalIntent":Landroid/content/Intent;
    .restart local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v34  # "res":I
    :catchall_400
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v19

    .end local v19  # "finalIntent":Landroid/content/Intent;
    .restart local v10  # "finalIntent":Landroid/content/Intent;
    goto :goto_40a

    .end local v20  # "callingUid":I
    .restart local v11  # "callingUid":I
    :catchall_406
    move-exception v0

    move/from16 v20, v11

    move-object v11, v15

    .end local v11  # "callingUid":I
    .restart local v20  # "callingUid":I
    :goto_40a
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 354
    .end local v20  # "callingUid":I
    .end local v31  # "callingPid":I
    .end local v32  # "origId":J
    .end local v34  # "res":I
    :catchall_40e
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v5, v27

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    goto :goto_44c

    .end local v29  # "allIntents":[Landroid/content/Intent;
    .end local v30  # "allResolvedTypes":[Ljava/lang/String;
    .restart local v3  # "allIntents":[Landroid/content/Intent;
    .restart local v4  # "allResolvedTypes":[Ljava/lang/String;
    :catchall_41a
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    :goto_41d
    move-object/from16 v5, v27

    move-object/from16 v1, v28

    goto :goto_44c

    .end local v28  # "duration":Ljava/lang/Long;
    .local v1, "duration":Ljava/lang/Long;
    :catchall_422
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    :goto_425
    move-object/from16 v5, v27

    goto :goto_44c

    .end local v27  # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5  # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_428
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    goto :goto_44c

    .end local v24  # "resolvedType":Ljava/lang/String;
    .end local v25  # "flagsMask":I
    .end local v26  # "flagsValues":I
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p10  # "flagsMask":I
    .restart local p11  # "flagsValues":I
    :catchall_42c
    move-exception v0

    move-object v11, v15

    move-object/from16 v24, p3

    move/from16 v26, p11

    move/from16 v25, v9

    move-object v2, v10

    goto :goto_44c

    :catchall_436
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v24, p3

    move/from16 v26, p11

    move/from16 v25, v9

    move-object v2, v10

    goto :goto_44c

    .end local v10  # "finalIntent":Landroid/content/Intent;
    .local v2, "finalIntent":Landroid/content/Intent;
    :catchall_442
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v24, p3

    move/from16 v26, p11

    move/from16 v25, v9

    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p10  # "flagsMask":I
    .end local p11  # "flagsValues":I
    .restart local v24  # "resolvedType":Ljava/lang/String;
    .restart local v25  # "flagsMask":I
    .restart local v26  # "flagsValues":I
    :goto_44c
    :try_start_44c
    monitor-exit v6
    :try_end_44d
    .catchall {:try_start_44c .. :try_end_44d} :catchall_44e

    throw v0

    :catchall_44e
    move-exception v0

    goto :goto_44c
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 21
    .param p1, "code"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "whitelistToken"  # Landroid/os/IBinder;
    .param p5, "finishedReceiver"  # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"  # Ljava/lang/String;
    .param p7, "options"  # Landroid/os/Bundle;

    .line 276
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flags"  # I

    .line 226
    if-nez p1, :cond_3

    return-void

    .line 227
    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 228
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_c
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    .line 231
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_15
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1e

    .line 234
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1e
    return-void
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "whitelistToken"  # Landroid/os/IBinder;
    .param p2, "duration"  # J

    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    .line 211
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 212
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 214
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 215
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2d

    .line 216
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2d

    .line 218
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 222
    :cond_2d
    :goto_2d
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 541
    return-object v0

    .line 543
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 544
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_7a

    .line 551
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 553
    if-eqz v1, :cond_4d

    .line 554
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_4d
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 560
    .end local v1  # "i":I
    :cond_75
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_7a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"  # Lcom/android/internal/os/IResultReceiver;

    .line 253
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    .line 254
    return-void

    .line 256
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 257
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_13

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 260
    :cond_13
    return-void
.end method
