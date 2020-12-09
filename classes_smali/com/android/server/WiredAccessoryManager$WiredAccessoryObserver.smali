.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 387
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 388
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 432
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x20

    const-string v4, "h2w"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 433
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 436
    :cond_24
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2d
    :goto_2d
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string/jumbo v5, "usb_audio"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 442
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 443
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 445
    :cond_45
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_4e
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "hdmi_audio"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 457
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 458
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 460
    :cond_65
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "hdmi"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 461
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 464
    :cond_7c
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have HDMI audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_85
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8b
    if-ge v3, v2, :cond_c5

    aget-object v10, v1, v3

    .line 473
    new-instance v11, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, p0

    move-object v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 474
    invoke-virtual {v11}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 475
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 477
    :cond_a5
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not have DP audio support"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 481
    :cond_c5
    return-object v0
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 557
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 558
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 559
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 560
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 561
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result p3

    .line 560
    invoke-static {p1, p2, v0, p3}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    return-void

    .line 557
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_32
    return-void
.end method


# virtual methods
.method init()V
    .registers 11

    .line 391
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 393
    const/16 v1, 0x400

    :try_start_9
    new-array v2, v1, [C

    .line 395
    const/4 v3, 0x0

    move v4, v3

    :goto_d
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_87

    .line 396
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_b5

    .line 399
    :try_start_1d
    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v6, v2, v3, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 401
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 402
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 404
    if-lez v6, :cond_47

    .line 405
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_47} :catch_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_48
    .catchall {:try_start_1d .. :try_end_47} :catchall_b5

    .line 413
    :cond_47
    :goto_47
    goto :goto_84

    .line 410
    :catch_48
    move-exception v6

    .line 411
    :try_start_49
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while attempting to determine initial switch state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-static {v7, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    .line 407
    :catch_66
    move-exception v6

    .line 408
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found while attempting to determine initial switch state"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 395
    :goto_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 415
    :cond_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_49 .. :try_end_88} :catchall_b5

    .line 420
    nop

    :goto_89
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b4

    .line 421
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVPATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 424
    :cond_b4
    return-void

    .line 415
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9

    .line 486
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v1, "NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    nop

    .line 490
    if-nez v1, :cond_15

    .line 491
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_15
    const/4 v2, 0x0

    :try_start_16
    const-string/jumbo v3, "soc:qcom,msm-ext-disp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 496
    const-string v3, "STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 497
    nop

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v2

    .line 501
    :goto_2b
    if-ge v4, v3, :cond_51

    .line 502
    const/16 v5, 0x3d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 504
    if-le v5, v4, :cond_4e

    .line 505
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 507
    const-string v6, "DP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 508
    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 509
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 510
    goto :goto_51

    .line 514
    :cond_4e
    add-int/lit8 v4, v5, 0x3

    .line 515
    goto :goto_2b

    .line 516
    :cond_51
    :goto_51
    goto :goto_5d

    .line 517
    :cond_52
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_5c} :catch_5f

    move v2, p1

    .line 549
    :goto_5d
    goto/16 :goto_cf

    .line 519
    :catch_5f
    move-exception p1

    .line 520
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v3, "couldn\'t get state from event, checking node"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move p1, v2

    :goto_6a
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_cf

    .line 523
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 525
    invoke-virtual {v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 526
    const/16 p1, 0x400

    new-array v4, p1, [C

    .line 527
    nop

    .line 530
    :try_start_89
    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v5, v4, v2, p1}, Ljava/io/FileReader;->read([CII)I

    move-result p1
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_96} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_96} :catch_9c

    .line 532
    :try_start_96
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_99} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    .line 538
    goto :goto_a8

    .line 536
    :catch_9a
    move-exception v3

    goto :goto_9e

    :catch_9c
    move-exception v3

    move p1, v2

    .line 537
    :goto_9e
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onUEvent exception"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    :goto_a8
    :try_start_a8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_b5} :catch_b6

    .line 545
    goto :goto_cf

    .line 542
    :catch_b6
    move-exception p1

    .line 543
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v3, "could not convert to number"

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    goto :goto_cf

    .line 533
    :catch_c1
    move-exception p1

    .line 534
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v3, "file not found"

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    goto :goto_cf

    .line 522
    :cond_cc
    add-int/lit8 p1, p1, 0x1

    goto :goto_6a

    .line 551
    :cond_cf
    :goto_cf
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 552
    :try_start_d6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    monitor-exit p1

    .line 554
    return-void

    .line 553
    :catchall_db
    move-exception v0

    monitor-exit p1
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_db

    throw v0
.end method
