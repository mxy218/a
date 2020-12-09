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

    .line 336
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V
    .registers 3

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 7

    .line 430
    monitor-enter p0

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p3

    .line 432
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v1, v2, p3, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 435
    monitor-exit p0

    .line 436
    return-void

    .line 435
    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .registers 6

    .line 370
    monitor-enter p0

    .line 371
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 372
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_17

    .line 375
    monitor-exit p0

    return-void

    .line 377
    :cond_17
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 378
    monitor-exit p0

    .line 379
    return-void

    .line 378
    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 6

    .line 383
    monitor-enter p0

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 385
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 388
    invoke-static {v1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2d

    .line 391
    :cond_1e
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, p2, p1}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    return-object p1

    .line 389
    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 393
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .registers 6

    .line 399
    monitor-enter p0

    .line 400
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 401
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 404
    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_33

    .line 407
    :cond_1f
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    .line 408
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v0, :cond_30

    .line 409
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    goto :goto_31

    :cond_30
    nop

    :goto_31
    monitor-exit p0

    .line 408
    return-object p2

    .line 405
    :cond_33
    :goto_33
    monitor-exit p0

    return-object p2

    .line 410
    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .registers 6

    .line 449
    monitor-enter p0

    .line 450
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 451
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 454
    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_40

    .line 457
    :cond_1f
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    .line 458
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v0, :cond_3e

    .line 459
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 460
    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3c

    const/4 p2, 0x1

    :cond_3c
    monitor-exit p0

    return p2

    .line 462
    :cond_3e
    monitor-exit p0

    return p2

    .line 455
    :cond_40
    :goto_40
    monitor-exit p0

    return p2

    .line 463
    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .registers 6

    .line 415
    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 417
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 420
    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2c

    .line 423
    :cond_1f
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p1, :cond_2a

    const/4 p2, 0x1

    :cond_2a
    monitor-exit p0

    return p2

    .line 421
    :cond_2c
    :goto_2c
    monitor-exit p0

    return p2

    .line 424
    :catchall_2e
    move-exception p1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 342
    :catch_5
    move-exception p1

    .line 343
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 344
    const-string p2, "clipboard"

    const-string p3, "Exception: "

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    :cond_11
    throw p1
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 5

    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p2

    .line 443
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p3, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 444
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .registers 7

    .line 353
    monitor-enter p0

    .line 354
    if-eqz p1, :cond_2b

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 357
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result p3

    .line 358
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    invoke-static {v1, v2, p2, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 361
    monitor-exit p0

    return-void

    .line 363
    :cond_1f
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p2, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 364
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 365
    monitor-exit p0

    .line 366
    return-void

    .line 355
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No items"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method
