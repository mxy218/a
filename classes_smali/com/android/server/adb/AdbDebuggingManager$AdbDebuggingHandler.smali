.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.super Landroid/os/Handler;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbDebuggingHandler"
.end annotation


# static fields
.field static final MESSAGE_ADB_ALLOW:I = 0x3

.field static final MESSAGE_ADB_CLEAR:I = 0x6

.field static final MESSAGE_ADB_CONFIRM:I = 0x5

.field static final MESSAGE_ADB_CONNECTED_KEY:I = 0xa

.field static final MESSAGE_ADB_DENY:I = 0x4

.field static final MESSAGE_ADB_DISABLED:I = 0x2

.field static final MESSAGE_ADB_DISCONNECT:I = 0x7

.field static final MESSAGE_ADB_ENABLED:I = 0x1

.field static final MESSAGE_ADB_PERSIST_KEYSTORE:I = 0x8

.field static final MESSAGE_ADB_UPDATE_KEYSTORE:I = 0x9

.field static final UPDATE_KEYSTORE_JOB_INTERVAL:J = 0x5265c00L

.field static final UPDATE_KEYSTORE_MIN_JOB_INTERVAL:J = 0xea60L


# instance fields
.field private mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

.field private mAuthTimeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V
    .registers 3

    .line 301
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {p1, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    .line 303
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;)V
    .registers 5

    .line 310
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 311
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {p2, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    .line 312
    invoke-static {p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->access$102(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 313
    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 314
    return-void
.end method

.method private cancelJobToUpdateAdbKeyStore()V
    .registers 2

    .line 540
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->removeMessages(I)V

    .line 541
    return-void
.end method

.method private logAdbConnectionChanged(Ljava/lang/String;IZ)V
    .registers 12

    .line 490
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 491
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v4

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", alwaysAllow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", lastConnectionTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", authWindow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdbDebuggingManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v1, 0x90

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IJJIZ)I

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "NO"

    const-string v3, "AdbDebuggingManager"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_2a0

    goto/16 :goto_29f

    .line 467
    :pswitch_e  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 468
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_47

    .line 471
    :cond_1b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 472
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_30
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 475
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 477
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 479
    goto/16 :goto_29f

    .line 469
    :cond_47
    :goto_47
    const-string p1, "Received a connected key message with an empty key"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29f

    .line 452
    :pswitch_4e  #0x9
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_84

    .line 453
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 454
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 456
    goto :goto_64

    .line 457
    :cond_7a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_29f

    .line 459
    :cond_84
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29f

    .line 460
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    .line 461
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_29f

    .line 445
    :pswitch_96  #0x8
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-eqz p1, :cond_29f

    .line 446
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->persistKeyStore()V

    goto/16 :goto_29f

    .line 427
    :pswitch_9f  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 428
    nop

    .line 429
    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d4

    .line 430
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 431
    nop

    .line 432
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 433
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 435
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_da

    .line 438
    :cond_d4
    const-string v0, "Received a disconnected key message with an empty key"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_d9
    move v4, v5

    :goto_da
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 441
    goto/16 :goto_29f

    .line 414
    :pswitch_e0  #0x6
    const-string p1, "Received a request to clear the adb authorizations"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 418
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-nez p1, :cond_fb

    .line 419
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 421
    :cond_fb
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 422
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    .line 423
    goto/16 :goto_29f

    .line 389
    :pswitch_105  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 390
    nop

    .line 391
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 392
    const-string v0, "Deferring adb confirmation until after vold decrypt"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_29f

    .line 394
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_29f

    .line 399
    :cond_136
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 401
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_29f

    .line 402
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_29f

    .line 407
    :cond_15b
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 408
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$602(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    goto/16 :goto_29f

    .line 382
    :pswitch_16e  #0x4
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_29f

    .line 383
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 384
    const/4 p1, 0x3

    invoke-direct {p0, v1, p1, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_29f

    .line 357
    :pswitch_185  #0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$500(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fingerprints do not match. Got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 361
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto/16 :goto_29f

    .line 365
    :cond_1bf
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    move v4, v5

    .line 366
    :goto_1c5
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_29f

    .line 367
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    const-string v1, "OK"

    invoke-virtual {p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 368
    if-eqz v4, :cond_200

    .line 369
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ef

    .line 370
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_1ef
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 373
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 376
    :cond_200
    const/4 p1, 0x2

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_29f

    .line 334
    :pswitch_206  #0x2
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-nez p1, :cond_210

    .line 335
    goto/16 :goto_29f

    .line 338
    :cond_210
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    .line 340
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_22b

    .line 341
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->stopListening()V

    .line 342
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$102(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 345
    :cond_22b
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_265

    .line 346
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_241
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_257

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 347
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 349
    goto :goto_241

    .line 350
    :cond_257
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$400(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 351
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 353
    :cond_265
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 354
    goto :goto_29f

    .line 319
    :pswitch_269  #0x1
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_272

    .line 320
    goto :goto_29f

    .line 322
    :cond_272
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->registerForAuthTimeChanges()V

    .line 323
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z

    .line 325
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-direct {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$102(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 326
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->start()V

    .line 328
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 329
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 331
    nop

    .line 482
    :cond_29f
    :goto_29f
    return-void

    :pswitch_data_2a0
    .packed-switch 0x1
        :pswitch_269  #00000001
        :pswitch_206  #00000002
        :pswitch_185  #00000003
        :pswitch_16e  #00000004
        :pswitch_105  #00000005
        :pswitch_e0  #00000006
        :pswitch_9f  #00000007
        :pswitch_96  #00000008
        :pswitch_4e  #00000009
        :pswitch_e  #0000000a
    .end packed-switch
.end method

.method registerForAuthTimeChanges()V
    .registers 5

    .line 485
    const-string v0, "adb_allowed_connection_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$800(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    return-void
.end method

.method scheduleJobToUpdateAdbKeyStore()J
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 510
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    .line 511
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getNextExpirationTime()J

    move-result-wide v0

    .line 515
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 516
    return-wide v2

    .line 521
    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    .line 522
    goto :goto_25

    .line 527
    :cond_17
    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 530
    :goto_25
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 532
    return-wide v2
.end method
