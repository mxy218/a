.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/clipboard/ClipboardService;
    .param p2, "x1"  # Lcom/android/server/clipboard/ClipboardService$1;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 9
    .param p1, "listener"  # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 433
    monitor-enter p0

    .line 434
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 435
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 436
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v3, v4, v0, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 438
    nop

    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    monitor-exit p0

    .line 439
    return-void

    .line 438
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 373
    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 376
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_17

    .line 378
    monitor-exit p0

    return-void

    .line 380
    :cond_17
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 381
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    monitor-exit p0

    .line 382
    return-void

    .line 381
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getCanPaste()Z
    .registers 2

    .line 484
    invoke-static {}, Lcom/android/server/clipboard/ClipboardService;->access$900()Z

    move-result v0

    return v0
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 386
    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 389
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 391
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_2d

    .line 394
    :cond_1e
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    return-object v2

    .line 392
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 396
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 405
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 407
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_33

    .line 410
    :cond_1f
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 411
    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_30

    .line 412
    iget-object v3, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    goto :goto_31

    :cond_30
    nop

    :goto_31
    monitor-exit p0

    .line 411
    return-object v3

    .line 408
    .end local v2  # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_33
    :goto_33
    monitor-exit p0

    return-object v3

    .line 413
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 454
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 455
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 457
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_40

    .line 460
    :cond_1f
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 461
    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_3e

    .line 462
    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 463
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3c

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3c

    const/4 v3, 0x1

    :cond_3c
    monitor-exit p0

    return v3

    .line 465
    .end local v4  # "text":Ljava/lang/CharSequence;
    :cond_3e
    monitor-exit p0

    return v3

    .line 458
    .end local v2  # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_40
    :goto_40
    monitor-exit p0

    return v3

    .line 466
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 418
    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 421
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 423
    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_2c

    .line 426
    :cond_1f
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_2a

    const/4 v3, 0x1

    :cond_2a
    monitor-exit p0

    return v3

    .line 424
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v3

    .line 427
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 345
    :catch_5
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 347
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    :cond_11
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 6
    .param p1, "listener"  # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 444
    monitor-enter p0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 447
    nop

    .end local v0  # "intendingUserId":I
    monitor-exit p0

    .line 448
    return-void

    .line 447
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setCanPaste(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 474
    monitor-enter p0

    .line 475
    :try_start_1
    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->access$902(Z)Z

    .line 476
    monitor-exit p0

    .line 477
    return-void

    .line 476
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .registers 8
    .param p1, "clip"  # Landroid/content/ClipData;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 356
    monitor-enter p0

    .line 357
    if-eqz p1, :cond_2b

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 360
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 362
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 364
    monitor-exit p0

    return-void

    .line 366
    :cond_1f
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 367
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 368
    .end local v0  # "intendingUid":I
    .end local v1  # "intendingUserId":I
    monitor-exit p0

    .line 369
    return-void

    .line 358
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
    .end local p1  # "clip":Landroid/content/ClipData;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "userId":I
    throw v0

    .line 368
    .restart local p0  # "this":Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
    .restart local p1  # "clip":Landroid/content/ClipData;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method
