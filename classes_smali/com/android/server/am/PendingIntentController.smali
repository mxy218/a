.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mH:Landroid/os/Handler;

.field final mIntentSenderRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 81
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 82
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 83
    return-void
.end method

.method private clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    .line 319
    return-void
.end method

.method private handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 303
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 305
    :try_start_8
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/IResultReceiver;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    .line 308
    goto :goto_14

    .line 306
    :catch_13
    move-exception v3

    .line 303
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 310
    :cond_17
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 313
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 314
    return-void
.end method

.method public static synthetic lambda$pDmmJDvS20vSAAXh9qdzbN0P8N0(Lcom/android/server/am/PendingIntentController;Landroid/os/RemoteCallbackList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public static synthetic lambda$sPmaborOkBSSEP2wiimxXw-eYDQ(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PendingIntentController;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 4

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 291
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_14

    .line 293
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    :cond_14
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    .line 298
    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-interface {v0, v1}, Lcom/android/server/AlarmManagerInternal;->remove(Landroid/app/PendingIntent;)V

    .line 299
    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 7

    .line 213
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 214
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_6c

    .line 219
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/high16 v3, 0x10000000

    .line 220
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 219
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_24} :catch_65
    .catchall {:try_start_a .. :try_end_24} :catchall_6c

    if-eqz v1, :cond_2d

    .line 230
    nop

    .line 231
    const/4 v1, 0x1

    :try_start_28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 232
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_6c

    .line 233
    return-void

    .line 222
    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed to cancel package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    const-string v1, "ActivityManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_65} :catch_65
    .catchall {:try_start_2d .. :try_end_65} :catchall_6c

    .line 228
    :catch_65
    move-exception p1

    .line 229
    :try_start_66
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :catchall_6c
    move-exception p1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-eqz p2, :cond_26

    iget-object p2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p2, p2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz p2, :cond_26

    .line 240
    sget-object p2, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {p2, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    :cond_26
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13

    .line 322
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    nop

    .line 325
    :try_start_4
    const-string v1, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_f6

    .line 329
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v5, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 332
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 333
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 334
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 335
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    .line 336
    :goto_3d
    if-nez v7, :cond_43

    .line 337
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    goto :goto_27

    .line 340
    :cond_43
    if-eqz p3, :cond_50

    iget-object v6, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 341
    goto :goto_27

    .line 343
    :cond_50
    iget-object v6, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 344
    if-nez v6, :cond_68

    .line 345
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v8, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_68
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    goto :goto_27

    .line 350
    :cond_6c
    move p3, v2

    move v5, p3

    :goto_6e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge p3, v6, :cond_c9

    .line 351
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 352
    nop

    .line 353
    const-string v6, "  * "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " items"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    move v6, v2

    :goto_9b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c5

    .line 356
    const-string v7, "    #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    if-eqz p2, :cond_c2

    .line 358
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    const-string v8, "      "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 355
    :cond_c2
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .line 350
    :cond_c5
    add-int/lit8 p3, p3, 0x1

    move v5, v3

    goto :goto_6e

    .line 362
    :cond_c9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f5

    .line 363
    nop

    .line 364
    const-string p2, "  * WEAK REFS:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    nop

    :goto_d6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_f3

    .line 366
    const-string p2, "    #"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    :cond_f3
    move v2, v3

    goto :goto_f6

    .line 362
    :cond_f5
    move v2, v5

    .line 371
    :cond_f6
    :goto_f6
    if-nez v2, :cond_fd

    .line 372
    const-string p2, "  (nothing)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :cond_fd
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_ff
    move-exception p1

    monitor-exit v0
    :try_end_101
    .catchall {:try_start_4 .. :try_end_101} :catchall_ff

    throw p1
.end method

.method public getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .registers 30

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v12, p8

    iget-object v13, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 99
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_17

    .line 100
    move v2, v1

    :goto_c
    :try_start_c
    array-length v3, v12

    if-ge v2, v3, :cond_17

    .line 101
    aget-object v3, v12, v2

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setDefusable(Z)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 104
    :cond_17
    move-object/from16 v2, p11

    invoke-static {v2, v14}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 106
    const/high16 v3, 0x20000000

    and-int v3, p10, v3

    if-eqz v3, :cond_24

    move v15, v14

    goto :goto_25

    :cond_24
    move v15, v1

    .line 107
    :goto_25
    const/high16 v3, 0x10000000

    and-int v3, p10, v3

    if-eqz v3, :cond_2e

    move/from16 v16, v14

    goto :goto_30

    :cond_2e
    move/from16 v16, v1

    .line 108
    :goto_30
    const/high16 v3, 0x8000000

    and-int v3, p10, v3

    if-eqz v3, :cond_39

    move/from16 v17, v14

    goto :goto_3b

    :cond_39
    move/from16 v17, v1

    .line 109
    :goto_3b
    const v1, -0x38000001

    and-int v9, p10, v1

    .line 112
    new-instance v11, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 114
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v10

    move-object v1, v11

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object v14, v11

    move/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    .line 116
    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 117
    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_6e

    :cond_6d
    move-object v1, v2

    .line 118
    :goto_6e
    if-eqz v1, :cond_b2

    .line 119
    if-nez v16, :cond_aa

    .line 120
    if-eqz v17, :cond_a8

    .line 121
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8a

    .line 122
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v12, :cond_86

    .line 123
    array-length v3, v12

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v12, v3

    goto :goto_87

    :cond_86
    move-object v3, v2

    .line 122
    :goto_87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 125
    :cond_8a
    if-eqz v12, :cond_a0

    .line 126
    array-length v0, v12

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v2, v12, v0

    .line 127
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v12, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 128
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_a8

    .line 130
    :cond_a0
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 131
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 134
    :cond_a8
    :goto_a8
    monitor-exit v13

    return-object v1

    .line 136
    :cond_aa
    invoke-direct {v0, v1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 137
    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_b2
    if-eqz v15, :cond_b6

    .line 140
    monitor-exit v13

    return-object v1

    .line 142
    :cond_b6
    new-instance v1, Lcom/android/server/am/PendingIntentRecord;

    move/from16 v2, p3

    invoke-direct {v1, v0, v14, v2}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 143
    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v13

    return-object v1

    .line 145
    :catchall_c6
    move-exception v0

    monitor-exit v13
    :try_end_c8
    .catchall {:try_start_c .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method onActivityManagerInternalAdded()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 249
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 250
    return-void

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 255
    iget-boolean v1, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 256
    if-nez v1, :cond_11

    .line 257
    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 259
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    .line 260
    if-eqz v1, :cond_1b

    .line 262
    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_16
    invoke-interface {p2, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 264
    goto :goto_1b

    .line 263
    :catch_1a
    move-exception p1

    .line 266
    :cond_1b
    :goto_1b
    return-void

    .line 259
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method removePendingIntentsForPackage(Ljava/lang/String;IIZ)Z
    .registers 11

    .line 151
    nop

    .line 152
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_f

    .line 158
    monitor-exit v0

    return v2

    .line 161
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 162
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    .line 163
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 165
    if-nez v4, :cond_2c

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 167
    goto :goto_1a

    .line 169
    :cond_2c
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 170
    if-nez v4, :cond_38

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 172
    goto :goto_1a

    .line 174
    :cond_38
    if-nez p1, :cond_41

    .line 176
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5f

    .line 178
    goto :goto_1a

    .line 181
    :cond_41
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_4a

    .line 183
    goto :goto_1a

    .line 185
    :cond_4a
    const/4 v5, -0x1

    if-eq p2, v5, :cond_54

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_54

    .line 187
    goto :goto_1a

    .line 189
    :cond_54
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 191
    goto :goto_1a

    .line 194
    :cond_5f
    if-nez p4, :cond_63

    .line 195
    monitor-exit v0

    return v3

    .line 197
    :cond_63
    nop

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 199
    invoke-direct {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 200
    iget-object v2, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v2, :cond_81

    .line 201
    sget-object v2, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v2, p0, v5, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 204
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    :cond_81
    move v2, v3

    goto :goto_1a

    .line 207
    :cond_83
    monitor-exit v0

    .line 209
    return v2

    .line 207
    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_4 .. :try_end_87} :catchall_85

    throw p1
.end method

.method setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .registers 6

    .line 280
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1b

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_1e
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/PendingIntentRecord;->setWhitelistDurationLocked(Landroid/os/IBinder;J)V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p1
.end method

.method unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    .line 270
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 271
    return-void

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1
.end method
