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
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "userController"  # Lcom/android/server/am/UserController;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 80
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 82
    return-void
.end method

.method private clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .param p1, "activityToken"  # Landroid/os/IBinder;
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
    .local p2, "pir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
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
    .local p1, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 303
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 305
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 308
    goto :goto_14

    .line 306
    :catch_13
    move-exception v2

    .line 303
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 310
    .end local v1  # "i":I
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
    .registers 5
    .param p1, "rec"  # Lcom/android/server/am/PendingIntentRecord;

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 293
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 294
    .local v0, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    if-eqz v0, :cond_14

    .line 295
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 297
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    .end local v1  # "m":Landroid/os/Message;
    :cond_14
    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 8
    .param p1, "sender"  # Landroid/content/IIntentSender;

    .line 215
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 216
    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_6d

    .line 221
    .local v1, "rec":Lcom/android/server/am/PendingIntentRecord;
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/high16 v4, 0x10000000

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 221
    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 223
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_66
    .catchall {:try_start_b .. :try_end_25} :catchall_6d

    if-eqz v3, :cond_2e

    .line 232
    .end local v2  # "uid":I
    nop

    .line 233
    const/4 v2, 0x1

    :try_start_29
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 234
    .end local v1  # "rec":Lcom/android/server/am/PendingIntentRecord;
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_6d

    .line 235
    return-void

    .line 224
    .restart local v1  # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local v2  # "uid":I
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to cancel package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1  # "sender":Landroid/content/IIntentSender;
    throw v4
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_66} :catch_66
    .catchall {:try_start_2e .. :try_end_66} :catchall_6d

    .line 230
    .end local v2  # "uid":I
    .end local v3  # "msg":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1  # "sender":Landroid/content/IIntentSender;
    :catch_66
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_67
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1  # "sender":Landroid/content/IIntentSender;
    throw v3

    .line 234
    .end local v1  # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v2  # "e":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1  # "sender":Landroid/content/IIntentSender;
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    .registers 7
    .param p1, "rec"  # Lcom/android/server/am/PendingIntentRecord;
    .param p2, "cleanActivity"  # Z

    .line 238
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    if-eqz p2, :cond_26

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v1, :cond_26

    .line 242
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 245
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .end local v1  # "m":Landroid/os/Message;
    :cond_26
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 15
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
    .param p3, "dumpPackage"  # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "printed":Z
    :try_start_4
    const-string v2, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_f2

    .line 329
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 330
    .local v2, "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 332
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 333
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 334
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 335
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 336
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_3b
    if-nez v6, :cond_41

    .line 337
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    goto :goto_25

    .line 340
    :cond_41
    if-eqz p3, :cond_4e

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 341
    goto :goto_25

    .line 343
    :cond_4e
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 344
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v7, :cond_67

    .line 345
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 346
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_67
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    nop

    .end local v5  # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6  # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v7  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    goto :goto_25

    .line 350
    :cond_6c
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_6e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_c8

    .line 351
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 352
    .local v7, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v1, 0x1

    .line 353
    const-string v8, "  * "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " items"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    move v8, v5

    .local v8, "j":I
    :goto_9b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c5

    .line 356
    const-string v9, "    #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    if-eqz p2, :cond_c2

    .line 358
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/PendingIntentRecord;

    const-string v10, "      "

    invoke-virtual {v9, p1, v10}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 355
    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_9b

    .line 350
    .end local v7  # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v8  # "j":I
    :cond_c5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 362
    .end local v6  # "i":I
    :cond_c8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f2

    .line 363
    const/4 v1, 0x1

    .line 364
    const-string v6, "  * WEAK REFS:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    nop

    .local v5, "i":I
    :goto_d5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f2

    .line 366
    const-string v6, "    #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 371
    .end local v2  # "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v3  # "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v4  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v5  # "i":I
    :cond_f2
    if-nez v1, :cond_f9

    .line 372
    const-string v2, "  (nothing)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .end local v1  # "printed":Z
    :cond_f9
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_fb
    move-exception v1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_4 .. :try_end_fd} :catchall_fb

    throw v1
.end method

.method public getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .registers 33
    .param p1, "type"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I
    .param p5, "token"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "intents"  # [Landroid/content/Intent;
    .param p9, "resolvedTypes"  # [Ljava/lang/String;
    .param p10, "flags"  # I
    .param p11, "bOptions"  # Landroid/os/Bundle;

    .line 93
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v14, p8

    iget-object v15, v1, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 94
    :try_start_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_23

    const-string v0, "ActivityManager_MU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentSender(): uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_23
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-eqz v14, :cond_33

    .line 99
    move v3, v0

    .local v3, "i":I
    :goto_28
    array-length v4, v14

    if-ge v3, v4, :cond_33

    .line 100
    aget-object v4, v14, v3

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setDefusable(Z)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 103
    .end local v3  # "i":I
    :cond_33
    move-object/from16 v12, p11

    invoke-static {v12, v13}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_f4

    .line 105
    const/high16 v3, 0x20000000

    and-int v3, p10, v3

    if-eqz v3, :cond_40

    move v3, v13

    goto :goto_41

    :cond_40
    move v3, v0

    :goto_41
    move/from16 v16, v3

    .line 106
    .local v16, "noCreate":Z
    const/high16 v3, 0x10000000

    and-int v3, p10, v3

    if-eqz v3, :cond_4b

    move v3, v13

    goto :goto_4c

    :cond_4b
    move v3, v0

    :goto_4c
    move/from16 v17, v3

    .line 107
    .local v17, "cancelCurrent":Z
    const/high16 v3, 0x8000000

    and-int v3, p10, v3

    if-eqz v3, :cond_55

    move v0, v13

    .line 108
    .local v0, "updateCurrent":Z
    :cond_55
    const v3, -0x38000001

    and-int v18, p10, v3

    .line 111
    .end local p10  # "flags":I
    .local v18, "flags":I
    :try_start_5a
    new-instance v19, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 113
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v20

    move-object/from16 v3, v19

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, v18

    move-object/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    move-object/from16 v3, v19

    .line 115
    .local v3, "key":Lcom/android/server/am/PendingIntentRecord$Key;
    iget-object v4, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 116
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_90

    :cond_8f
    move-object v6, v5

    .line 117
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_90
    if-eqz v6, :cond_dc

    .line 118
    if-nez v17, :cond_d1

    .line 119
    if-eqz v0, :cond_cd

    .line 120
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v7, :cond_ac

    .line 121
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v14, :cond_a8

    .line 122
    array-length v8, v14

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v14, v8

    goto :goto_a9

    :cond_a8
    move-object v8, v5

    .line 121
    :goto_a9
    invoke-virtual {v7, v8}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 124
    :cond_ac
    if-eqz v14, :cond_c2

    .line 125
    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v7, v14, v5

    .line 126
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v14, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 127
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;
    :try_end_bd
    .catchall {:try_start_5a .. :try_end_bd} :catchall_f0

    move-object/from16 v7, p9

    :try_start_bf
    iput-object v7, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_cf

    .line 129
    :cond_c2
    move-object/from16 v7, p9

    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 130
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_cf

    .line 119
    :cond_cd
    move-object/from16 v7, p9

    .line 133
    :goto_cf
    monitor-exit v15

    return-object v6

    .line 135
    :cond_d1
    move-object/from16 v7, p9

    invoke-direct {v1, v6}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 136
    iget-object v5, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 117
    :cond_dc
    move-object/from16 v7, p9

    .line 138
    :goto_de
    if-eqz v16, :cond_e2

    .line 139
    monitor-exit v15

    return-object v6

    .line 141
    :cond_e2
    new-instance v5, Lcom/android/server/am/PendingIntentRecord;

    invoke-direct {v5, v1, v3, v2}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 142
    .end local v6  # "rec":Lcom/android/server/am/PendingIntentRecord;
    .local v5, "rec":Lcom/android/server/am/PendingIntentRecord;
    iget-object v6, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v15

    return-object v5

    .line 144
    .end local v0  # "updateCurrent":Z
    .end local v3  # "key":Lcom/android/server/am/PendingIntentRecord$Key;
    .end local v4  # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v5  # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v16  # "noCreate":Z
    .end local v17  # "cancelCurrent":Z
    :catchall_f0
    move-exception v0

    move-object/from16 v7, p9

    goto :goto_f9

    .end local v18  # "flags":I
    .restart local p10  # "flags":I
    :catchall_f4
    move-exception v0

    move-object/from16 v7, p9

    move/from16 v18, p10

    .end local p10  # "flags":I
    .restart local v18  # "flags":I
    :goto_f9
    monitor-exit v15
    :try_end_fa
    .catchall {:try_start_bf .. :try_end_fa} :catchall_fb

    throw v0

    :catchall_fb
    move-exception v0

    goto :goto_f9
.end method

.method onActivityManagerInternalAdded()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 6
    .param p1, "sender"  # Landroid/content/IIntentSender;
    .param p2, "receiver"  # Lcom/android/internal/os/IResultReceiver;

    .line 251
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 252
    return-void

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    .line 257
    .local v1, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-boolean v2, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 258
    .local v2, "isCancelled":Z
    if-nez v2, :cond_12

    .line 259
    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 261
    .end local v1  # "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1d

    .line 262
    if-eqz v2, :cond_1c

    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_17
    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 266
    goto :goto_1c

    .line 265
    :catch_1b
    move-exception v0

    .line 268
    :cond_1c
    :goto_1c
    return-void

    .line 261
    .end local v2  # "isCancelled":Z
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method removePendingIntentsForPackage(Ljava/lang/String;IIZ)Z
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "appId"  # I
    .param p4, "doIt"  # Z

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_f

    .line 157
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 160
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 161
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 164
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v3, :cond_2b

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 166
    goto :goto_19

    .line 168
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 169
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    if-nez v4, :cond_37

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 171
    goto :goto_19

    .line 173
    :cond_37
    if-nez p1, :cond_40

    .line 175
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5e

    .line 177
    goto :goto_19

    .line 180
    :cond_40
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_49

    .line 182
    goto :goto_19

    .line 184
    :cond_49
    const/4 v5, -0x1

    if-eq p2, v5, :cond_53

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_53

    .line 186
    goto :goto_19

    .line 190
    :cond_53
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 192
    goto :goto_19

    .line 196
    :cond_5e
    if-nez p4, :cond_63

    .line 197
    const/4 v5, 0x1

    monitor-exit v1

    return v5

    .line 199
    :cond_63
    const/4 v0, 0x1

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 201
    invoke-direct {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 202
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v5, :cond_81

    .line 203
    sget-object v5, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v6, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v7, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v5, p0, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 206
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v3  # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4  # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v5  # "m":Landroid/os/Message;
    :cond_81
    goto :goto_19

    .line 209
    .end local v2  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :cond_82
    monitor-exit v1

    .line 211
    return v0

    .line 209
    :catchall_84
    move-exception v2

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_4 .. :try_end_86} :catchall_84

    throw v2
.end method

.method setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "target"  # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"  # Landroid/os/IBinder;
    .param p3, "duration"  # J

    .line 282
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_1f
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/PendingIntentRecord;->setWhitelistDurationLocked(Landroid/os/IBinder;J)V

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw v1
.end method

.method unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 5
    .param p1, "sender"  # Landroid/content/IIntentSender;
    .param p2, "receiver"  # Lcom/android/internal/os/IResultReceiver;

    .line 272
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    .line 273
    return-void

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method
