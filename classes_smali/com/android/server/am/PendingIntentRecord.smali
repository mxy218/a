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
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 207
    return-void
.end method

.method private completeFinalize()V
    .registers 4

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
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_1e

    .line 491
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
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
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 265
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

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

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

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
    move v0, v1

    :goto_d1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_108

    .line 521
    if-eqz v0, :cond_e0

    .line 522
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    :cond_e0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 528
    :cond_108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 530
    :cond_10b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_13c

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    nop

    :goto_118
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge v1, v0, :cond_13c

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 537
    :cond_13c
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
    .registers 38

    .line 283
    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v12, p12

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setDefusable(Z)V

    .line 284
    :cond_e
    if-eqz v12, :cond_13

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 286
    :cond_13
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 292
    :try_start_1d
    iget-boolean v4, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/16 v14, -0x60

    if-eqz v4, :cond_25

    .line 293
    monitor-exit v3

    return v14

    .line 296
    :cond_25
    iput-boolean v2, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 297
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v5, 0x40000000  # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_35

    .line 298
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v4, v15, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 301
    :cond_35
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v4, :cond_45

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_4a

    :cond_45
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    :goto_4a
    move-object v13, v4

    .line 303
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    const/4 v11, 0x0

    if-eqz v4, :cond_57

    move v4, v2

    goto :goto_58

    :cond_57
    move v4, v11

    .line 304
    :goto_58
    const/4 v5, 0x2

    if-nez v4, :cond_86

    .line 305
    if-eqz v0, :cond_70

    .line 306
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v0

    .line 307
    and-int/2addr v0, v5

    if-nez v0, :cond_6d

    .line 308
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    goto :goto_6f

    .line 307
    :cond_6d
    move-object/from16 v0, p3

    .line 310
    :goto_6f
    goto :goto_74

    .line 311
    :cond_70
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 313
    :goto_74
    move/from16 v4, p10

    and-int/lit16 v4, v4, -0xc4

    .line 314
    and-int v6, p11, v4

    .line 315
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v7

    not-int v4, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v8, v0

    goto :goto_8b

    .line 317
    :cond_86
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object v8, v0

    .line 322
    :goto_8b
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_98

    .line 324
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    :cond_98
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 329
    if-nez v4, :cond_a5

    .line 330
    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v4, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    goto :goto_a9

    .line 332
    :cond_a5
    invoke-virtual {v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    .line 335
    :goto_a9
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    if-eqz v4, :cond_b7

    .line 336
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_b8

    .line 335
    :cond_b7
    move-object v4, v6

    .line 339
    :goto_b8
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v7, v5, :cond_100

    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v7, :cond_100

    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    if-le v7, v2, :cond_100

    .line 343
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v6, v6

    new-array v6, v6, [Landroid/content/Intent;

    .line 344
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    new-array v7, v7, [Ljava/lang/String;

    .line 345
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v10, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v10, v10

    invoke-static {v9, v11, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v9, :cond_f7

    .line 347
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v10, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v9, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_f7
    array-length v9, v6

    sub-int/2addr v9, v2

    aput-object v13, v6, v9

    .line 351
    array-length v9, v7

    sub-int/2addr v9, v2

    aput-object v8, v7, v9

    goto :goto_101

    .line 354
    :cond_100
    move-object v7, v6

    :goto_101
    monitor-exit v3
    :try_end_102
    .catchall {:try_start_1d .. :try_end_102} :catchall_351

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 361
    nop

    .line 363
    if-eqz v4, :cond_19d

    .line 364
    :try_start_111
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v9}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    .line 365
    invoke-static {v3}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v16

    if-nez v16, :cond_17b

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v11, 0x40

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    const-string/jumbo v11, "pendingintent:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v3, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 369
    const-string v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_142

    .line 371
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_161

    .line 372
    :cond_142
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_150

    .line 373
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_161

    .line 374
    :cond_150
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_161

    .line 375
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_161
    :goto_161
    iget-object v11, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v11, v11, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v14, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 378
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 377
    move-object/from16 v16, v11

    move/from16 v17, v10

    move/from16 v18, v9

    move/from16 v19, v14

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V

    .line 379
    goto :goto_19d

    .line 380
    :cond_17b
    const-string v4, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not doing whitelist "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": caller state="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    .line 469
    :catchall_19a
    move-exception v0

    goto/16 :goto_34d

    .line 384
    :cond_19d
    :goto_19d
    if-eqz p5, :cond_1a2

    move/from16 v19, v2

    goto :goto_1a4

    :cond_1a2
    const/16 v19, 0x0

    .line 385
    :goto_1a4
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 386
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1b6

    .line 387
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v3

    move/from16 v16, v3

    goto :goto_1b8

    .line 386
    :cond_1b6
    move/from16 v16, v3

    .line 391
    :goto_1b8
    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq v3, v9, :cond_1c8

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 392
    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v3

    if-eqz v3, :cond_1c8

    move v3, v2

    goto :goto_1c9

    :cond_1c8
    const/4 v3, 0x0

    .line 397
    :goto_1c9
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1cd
    .catchall {:try_start_111 .. :try_end_1cd} :catchall_19a

    if-eq v4, v2, :cond_2c3

    if-eq v4, v5, :cond_24a

    const/4 v0, 0x3

    if-eq v4, v0, :cond_222

    const/4 v0, 0x4

    const/4 v5, 0x5

    if-eq v4, v0, :cond_1e0

    if-eq v4, v5, :cond_1e0

    move-object/from16 p2, v13

    const/16 v20, 0x0

    goto/16 :goto_319

    .line 448
    :cond_1e0
    :try_start_1e0
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v4, v5, :cond_1ee

    move v9, v2

    goto :goto_1ef

    :cond_1ee
    const/4 v9, 0x0

    :goto_1ef
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 451
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f9
    .catch Ljava/lang/RuntimeException; {:try_start_1e0 .. :try_end_1f9} :catch_214
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1e0 .. :try_end_1f9} :catch_20d
    .catchall {:try_start_1e0 .. :try_end_1f9} :catchall_19a

    if-nez v1, :cond_200

    if-eqz v3, :cond_1fe

    goto :goto_200

    :cond_1fe
    const/4 v12, 0x0

    goto :goto_201

    :cond_200
    :goto_200
    move v12, v2

    .line 448
    :goto_201
    move-object v5, v0

    move-object v7, v13

    const/16 v20, 0x0

    move/from16 v11, v16

    :try_start_207
    invoke-virtual/range {v5 .. v12}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/content/ComponentName;
    :try_end_20a
    .catch Ljava/lang/RuntimeException; {:try_start_207 .. :try_end_20a} :catch_20b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_207 .. :try_end_20a} :catch_20d
    .catchall {:try_start_207 .. :try_end_20a} :catchall_19a

    goto :goto_21e

    .line 453
    :catch_20b
    move-exception v0

    goto :goto_217

    .line 455
    :catch_20d
    move-exception v0

    .line 456
    move-object/from16 p2, v13

    const/16 v14, -0x60

    goto/16 :goto_31b

    .line 453
    :catch_214
    move-exception v0

    const/16 v20, 0x0

    .line 454
    :goto_217
    :try_start_217
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :goto_21e
    move-object/from16 p2, v13

    goto/16 :goto_319

    .line 425
    :cond_222
    const/16 v20, 0x0

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, -0x1

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 p6, v0

    move/from16 p7, v1

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    move/from16 p10, v4

    move/from16 p11, p1

    move-object/from16 p12, v13

    invoke-virtual/range {p6 .. p12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_246
    .catchall {:try_start_217 .. :try_end_246} :catchall_19a

    .line 427
    move-object/from16 p2, v13

    goto/16 :goto_319

    .line 404
    :cond_24a
    const/16 v20, 0x0

    :try_start_24c
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_27e

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    if-le v3, v2, :cond_27e

    .line 405
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 410
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_26a
    .catch Ljava/lang/RuntimeException; {:try_start_24c .. :try_end_26a} :catch_2b7
    .catchall {:try_start_24c .. :try_end_26a} :catchall_19a

    .line 405
    move-object v1, v2

    move v2, v3

    move v3, v10

    move v4, v9

    move-object/from16 v8, p7

    move-object v9, v0

    move/from16 v10, v16

    move-object/from16 v12, p0

    move-object/from16 p2, v13

    move v13, v14

    :try_start_278
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    move v14, v0

    goto :goto_2b3

    .line 404
    :cond_27e
    move-object/from16 p2, v13

    .line 412
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string v17, "PendingIntentRecord"

    const/16 v18, 0x0

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 418
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 412
    move-object v1, v2

    move v2, v3

    move v3, v10

    move v4, v9

    move-object/from16 v6, p2

    move-object v7, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v12, v0

    move/from16 v13, v16

    move-object/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, p0

    move/from16 v18, v21

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_2b2
    .catch Ljava/lang/RuntimeException; {:try_start_278 .. :try_end_2b2} :catch_2b5
    .catchall {:try_start_278 .. :try_end_2b2} :catchall_19a

    move v14, v0

    .line 422
    :goto_2b3
    goto/16 :goto_31b

    .line 420
    :catch_2b5
    move-exception v0

    goto :goto_2ba

    :catch_2b7
    move-exception v0

    move-object/from16 p2, v13

    .line 421
    :goto_2ba
    :try_start_2ba
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c1
    .catchall {:try_start_2ba .. :try_end_2c1} :catchall_19a

    .line 423
    goto/16 :goto_319

    .line 432
    :cond_2c3
    move-object/from16 p2, v13

    const/16 v20, 0x0

    move-object/from16 v15, p0

    :try_start_2c9
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v5, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    if-eqz p5, :cond_2d9

    move v14, v2

    goto :goto_2db

    :cond_2d9
    move/from16 v14, v20

    :goto_2db
    const/16 v17, 0x0

    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 436
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2eb

    if-eqz v3, :cond_2e8

    goto :goto_2eb

    :cond_2e8
    move/from16 v18, v20

    goto :goto_2ed

    :cond_2eb
    :goto_2eb
    move/from16 v18, v2

    .line 432
    :goto_2ed
    move-object v1, v4

    move v2, v5

    move v3, v9

    move v4, v10

    move-object/from16 v5, p2

    move-object v6, v8

    move-object/from16 v7, p5

    move/from16 v8, p1

    move-object v9, v11

    move-object v10, v13

    move-object/from16 v11, p6

    move-object/from16 v12, p12

    move v13, v14

    move/from16 v14, v17

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v0 .. v16}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0
    :try_end_309
    .catch Ljava/lang/RuntimeException; {:try_start_2c9 .. :try_end_309} :catch_310
    .catchall {:try_start_2c9 .. :try_end_309} :catchall_19a

    .line 438
    if-nez v0, :cond_30d

    .line 439
    move/from16 v19, v20

    .line 443
    :cond_30d
    move/from16 v14, v20

    goto :goto_31b

    .line 441
    :catch_310
    move-exception v0

    .line 442
    :try_start_311
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_318
    .catchall {:try_start_311 .. :try_end_318} :catchall_19a

    .line 444
    nop

    .line 461
    :goto_319
    move/from16 v14, v20

    :goto_31b
    if-eqz v19, :cond_348

    const/16 v1, -0x60

    if-eq v14, v1, :cond_348

    .line 463
    :try_start_321
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 p0, p5

    move-object/from16 p1, v0

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-interface/range {p0 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_346
    .catch Landroid/os/RemoteException; {:try_start_321 .. :try_end_346} :catch_347
    .catchall {:try_start_321 .. :try_end_346} :catchall_19a

    .line 466
    goto :goto_348

    .line 465
    :catch_347
    move-exception v0

    .line 469
    :cond_348
    :goto_348
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    nop

    .line 472
    return v14

    .line 469
    :goto_34d
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 354
    :catchall_351
    move-exception v0

    :try_start_352
    monitor-exit v3
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_351

    throw v0
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 21

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
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1e

    .line 234
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1e
    return-void
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .registers 6

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

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 215
    :cond_1c
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz p2, :cond_2d

    .line 216
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-gtz p1, :cond_2d

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
    :cond_75
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_7a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    .line 254
    return-void

    .line 256
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 257
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-gtz p1, :cond_13

    .line 258
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 260
    :cond_13
    return-void
.end method
