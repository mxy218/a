.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnWorkerThreadCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

.field private final mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userDataMap"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
    .param p3, "inputMethodInfoMap"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;
    .param p4, "handler"  # Landroid/os/Handler;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    .line 238
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 239
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 240
    iput-object p4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    .line 241
    return-void
.end method

.method public static synthetic lambda$RXozRqnqnYcbtt5pr216uYhnGCc(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    return-void
.end method

.method private tryBindInputMethodService(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 250
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 251
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_20

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryBindInputMethodService is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 256
    :cond_20
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$400(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 257
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x3

    if-nez v1, :cond_62

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi-client InputMethod is not found. component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    :try_start_4a
    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_58

    const/4 v5, 0x2

    if-eq v4, v5, :cond_58

    if-eq v4, v2, :cond_58

    const/4 v2, 0x6

    if-eq v4, v2, :cond_58

    goto :goto_5d

    .line 267
    :cond_58
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->remove(I)V

    .line 270
    :goto_5d
    monitor-exit v3

    .line 271
    return-void

    .line 270
    :catchall_5f
    move-exception v2

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_5f

    throw v2

    .line 274
    :cond_62
    iget-object v3, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_65
    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    packed-switch v4, :pswitch_data_ac

    .line 288
    const-string v2, "MultiClientInputMethodManagerService"

    goto :goto_91

    .line 286
    :pswitch_6d  #0x4, 0x5
    monitor-exit v3

    return-void

    .line 282
    :pswitch_6f  #0x2, 0x3, 0x6
    nop

    .line 291
    iput v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 292
    iput-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 293
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->put(ILandroid/view/inputmethod/InputMethodInfo;)V

    .line 294
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->bindServiceLocked(Landroid/content/Context;I)Z

    move-result v2

    .line 295
    .local v2, "bindResult":Z
    if-nez v2, :cond_8a

    .line 296
    const-string v4, "MultiClientInputMethodManagerService"

    const-string v5, "Failed to bind Multi-client InputMethod."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v3

    return-void

    .line 299
    :cond_8a
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 300
    .end local v2  # "bindResult":Z
    monitor-exit v3

    .line 301
    return-void

    .line 278
    :pswitch_8f  #0x1
    monitor-exit v3

    return-void

    .line 288
    :goto_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v3

    return-void

    .line 300
    :catchall_a9
    move-exception v2

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_65 .. :try_end_ab} :catchall_a9

    throw v2

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_8f  #00000001
        :pswitch_6f  #00000002
        :pswitch_6f  #00000003
        :pswitch_6d  #00000004
        :pswitch_6d  #00000005
        :pswitch_6f  #00000006
    .end packed-switch
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method onBindingDied(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .registers 10
    .param p1, "data"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 437
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 438
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 439
    .local v0, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_b
    iget-object v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 443
    .local v2, "numTokens":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 444
    iget-object v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 445
    .local v4, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v5, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    const/4 v6, 0x0

    iget v7, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 443
    .end local v4  # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 447
    .end local v3  # "i":I
    :cond_27
    iget-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 448
    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v4, 0x4

    const/4 v5, 0x6

    if-eq v3, v4, :cond_53

    const/4 v4, 0x5

    if-eq v3, v4, :cond_53

    if-eq v3, v5, :cond_51

    .line 465
    const-string v3, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v1

    return-void

    .line 451
    :cond_51
    monitor-exit v1

    return-void

    .line 455
    :cond_53
    iput v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 456
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 457
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 459
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$OnWorkerThreadCallback$RXozRqnqnYcbtt5pr216uYhnGCc;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$OnWorkerThreadCallback$RXozRqnqnYcbtt5pr216uYhnGCc;

    .line 461
    invoke-static {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->access$500(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 459
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 462
    nop

    .line 468
    .end local v2  # "numTokens":I
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_73
    move-exception v2

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_b .. :try_end_75} :catchall_73

    throw v2
.end method

.method onBootPhase(I)V
    .registers 10
    .param p1, "phase"  # I

    .line 476
    const/16 v0, 0x226

    if-eq p1, v0, :cond_87

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto/16 :goto_a2

    .line 489
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 491
    .local v0, "perDisplayFocusEnabled":Z
    if-nez v0, :cond_a2

    .line 492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/16 v4, 0x8

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    const-string v6, "config_perDisplayFocusEnabled is not true."

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 500
    const-string v7, "Consider rebuilding the system image after enabling config_perDisplayFocusEnabled to make IME focus compatible with multi-client IME mode."

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 499
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x10804d2

    .line 501
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 502
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 503
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 504
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 505
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 506
    const-string/jumbo v5, "sys"

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    .line 507
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 494
    const-string v6, "MultiClientInputMethodManagerService"

    invoke-virtual {v3, v6, v4, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 510
    .end local v1  # "extras":Landroid/os/Bundle;
    goto :goto_a2

    .line 478
    .end local v0  # "perDisplayFocusEnabled":Z
    :cond_87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 486
    nop

    .line 514
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :cond_a2
    :goto_a2
    return-void
.end method

.method onPackageAdded(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 521
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 522
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_7

    .line 523
    return-void

    .line 525
    :cond_7
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 526
    return-void

    .line 528
    :cond_10
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_38

    if-eqz v2, :cond_38

    .line 531
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$300()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_38

    .line 534
    :cond_2b
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 535
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    .line 536
    return-void

    .line 532
    .end local v1  # "userId":I
    :cond_38
    :goto_38
    return-void
.end method

.method onServiceConnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/inputmethod/IMultiClientInputMethod;)V
    .registers 7
    .param p1, "data"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .param p2, "service"  # Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 376
    iget-object v0, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    const/4 v2, 0x6

    if-eq v1, v2, :cond_25

    .line 392
    const-string v1, "MultiClientInputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    monitor-exit v0

    return-void

    .line 380
    :cond_25
    monitor-exit v0

    return-void

    .line 383
    :cond_27
    const/4 v1, 0x5

    iput v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 384
    iput-object p2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3e

    .line 386
    :try_start_2c
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    new-instance v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;

    invoke-direct {v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    invoke-interface {v1, v2}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->initialize(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_37
    .catchall {:try_start_2c .. :try_end_36} :catchall_3e

    .line 388
    goto :goto_38

    .line 387
    :catch_37
    move-exception v1

    .line 389
    :goto_38
    :try_start_38
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodConnectedLocked()V

    .line 390
    nop

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method onServiceDisconnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .registers 10
    .param p1, "data"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 403
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 404
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 405
    .local v0, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_b
    iget-object v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 409
    .local v2, "numTokens":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 410
    iget-object v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 411
    .local v4, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v5, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    const/4 v6, 0x0

    iget v7, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 409
    .end local v4  # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 413
    .end local v3  # "i":I
    :cond_27
    iget-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 414
    iget v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_53

    const/4 v5, 0x5

    if-eq v3, v5, :cond_53

    const/4 v4, 0x6

    if-eq v3, v4, :cond_51

    .line 426
    const-string v3, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    monitor-exit v1

    return-void

    .line 417
    :cond_51
    monitor-exit v1

    return-void

    .line 421
    :cond_53
    iput v4, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 422
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 423
    invoke-virtual {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 424
    nop

    .line 429
    .end local v2  # "numTokens":I
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_5e

    throw v2
.end method

.method onStartUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 308
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;-><init>(ILandroid/view/inputmethod/InputMethodInfo;ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    .line 309
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->put(ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    .line 310
    return-void
.end method

.method onStopUser(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 340
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->remove(I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->removeReturnOld(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 342
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_25

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_25
    iget-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_28
    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_62

    const/4 v3, 0x3

    if-eq v2, v3, :cond_62

    const/4 v3, 0x4

    const/4 v4, 0x6

    if-eq v2, v3, :cond_52

    const/4 v3, 0x5

    if-eq v2, v3, :cond_52

    if-eq v2, v4, :cond_62

    .line 357
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 355
    :cond_52
    nop

    .line 360
    :goto_53
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->unbindServiceLocked(Landroid/content/Context;)V

    .line 361
    iput v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 362
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    .line 367
    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->onInputMethodDisconnectedLocked()V

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 352
    :cond_62
    monitor-exit v1

    return-void

    .line 368
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_28 .. :try_end_66} :catchall_64

    throw v2
.end method

.method onUnlockUser(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 317
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v0

    .line 318
    .local v0, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v0, :cond_20

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser is called for an unknown user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiClientInputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_20
    iget-object v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_23
    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    .line 329
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 325
    :cond_41
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->tryBindInputMethodService(I)V

    .line 327
    nop

    .line 332
    :goto_48
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_23 .. :try_end_4c} :catchall_4a

    throw v2
.end method
