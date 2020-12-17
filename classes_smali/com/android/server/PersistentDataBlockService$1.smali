.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/PersistentDataBlockService;

    .line 441
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1600(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 628
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 630
    :cond_17
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 6

    .line 603
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 607
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_44

    .line 611
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 614
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_31
    .catchall {:try_start_1a .. :try_end_21} :catchall_2f

    .line 615
    :try_start_21
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3, v1}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 621
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 615
    return v3

    .line 616
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local v1  # "inputStream":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    :try_start_2e
    throw v3
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_31
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 621
    .restart local v1  # "inputStream":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    :catchall_2f
    move-exception v0

    goto :goto_40

    .line 617
    :catch_31
    move-exception v2

    .line 618
    .local v2, "e":Ljava/io/IOException;
    :try_start_32
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error reading data block size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2f

    .line 619
    nop

    .line 621
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 619
    return v0

    .line 621
    .end local v2  # "e":Ljava/io/IOException;
    :goto_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 608
    .end local v1  # "inputStream":Ljava/io/DataInputStream;
    :catch_44
    move-exception v1

    .line 609
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v0
.end method

.method public getFlashLockState()I
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1400(Lcom/android/server/PersistentDataBlockService;)V

    .line 590
    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "locked":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_26

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1c

    :cond_1b
    goto :goto_30

    :cond_1c
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_31

    :cond_26
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v5

    goto :goto_31

    :goto_30
    move v1, v4

    :goto_31
    if-eqz v1, :cond_37

    if-eq v1, v5, :cond_36

    .line 597
    return v4

    .line 595
    :cond_36
    return v3

    .line 593
    :cond_37
    return v5
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 635
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1400(Lcom/android/server/PersistentDataBlockService;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 4

    .line 640
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 642
    :try_start_3
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1700(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_13

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 643
    :catch_13
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error reading frp handle"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "cannot read frp credential"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()[B
    .registers 10

    .line 501
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 502
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 503
    new-array v0, v1, [B

    return-object v0

    .line 508
    :cond_15
    const/4 v0, 0x0

    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_c3

    .line 512
    .local v2, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 515
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_9a
    .catchall {:try_start_2c .. :try_end_33} :catchall_98

    .line 516
    :try_start_33
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4, v2}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    .line 518
    .local v4, "totalDataSize":I
    if-nez v4, :cond_4d

    .line 519
    new-array v1, v1, [B

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_95

    .line 537
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 540
    goto :goto_4c

    .line 538
    :catch_42
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v5, "failed to close OutputStream"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0  # "e":Ljava/io/IOException;
    :goto_4c
    return-object v1

    .line 522
    :cond_4d
    :try_start_4d
    new-array v5, v4, [B

    .line 523
    .local v5, "data":[B
    invoke-virtual {v2, v5, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 524
    .local v1, "read":I
    if-ge v1, v4, :cond_85

    .line 526
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to read entire data block. bytes read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_95

    .line 537
    :try_start_76
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 540
    goto :goto_84

    .line 538
    :catch_7a
    move-exception v3

    .line 539
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v3  # "e":Ljava/io/IOException;
    :goto_84
    return-object v0

    .line 530
    :cond_85
    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_95

    .line 537
    :try_start_86
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 540
    goto :goto_94

    .line 538
    :catch_8a
    move-exception v0

    .line 539
    .restart local v0  # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v6, "failed to close OutputStream"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v0  # "e":Ljava/io/IOException;
    :goto_94
    return-object v5

    .line 531
    .end local v1  # "read":I
    .end local v4  # "totalDataSize":I
    .end local v5  # "data":[B
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    .end local v2  # "inputStream":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    :try_start_97
    throw v1
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_98} :catch_9a
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    .line 536
    .restart local v2  # "inputStream":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    :catchall_98
    move-exception v0

    goto :goto_b4

    .line 532
    :catch_9a
    move-exception v1

    .line 533
    .local v1, "e":Ljava/io/IOException;
    :try_start_9b
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to read data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_98

    .line 534
    nop

    .line 537
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 540
    goto :goto_b3

    .line 538
    :catch_a9
    move-exception v3

    .line 539
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to close OutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v3  # "e":Ljava/io/IOException;
    :goto_b3
    return-object v0

    .line 537
    .end local v1  # "e":Ljava/io/IOException;
    :goto_b4
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    .line 540
    goto :goto_c2

    .line 538
    :catch_b8
    move-exception v1

    .line 539
    .restart local v1  # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to close OutputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v1  # "e":Ljava/io/IOException;
    :goto_c2
    throw v0

    .line 509
    .end local v2  # "inputStream":Ljava/io/DataInputStream;
    :catch_c3
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    return-object v0
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 564
    return-void

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1100(Lcom/android/server/PersistentDataBlockService;)V

    .line 570
    if-eqz p1, :cond_23

    .line 572
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 575
    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 576
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 577
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 578
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public wipe()V
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 549
    :try_start_c
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PersistentDataBlockService;->access$1000(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v1

    .line 551
    .local v1, "ret":I
    if-gez v1, :cond_24

    .line 552
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to wipe persistent partition"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 554
    :cond_24
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/PersistentDataBlockService;->access$502(Lcom/android/server/PersistentDataBlockService;Z)Z

    .line 555
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persistent partition now wiped and unwritable"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v1  # "ret":I
    :goto_34
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_36

    throw v1
.end method

.method public write([B)I
    .registers 11
    .param p1, "data"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 454
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    .line 455
    .local v0, "maxBlockSize":J
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    .line 457
    neg-long v2, v0

    long-to-int v2, v2

    return v2

    .line 462
    :cond_18
    const/4 v2, -0x1

    :try_start_19
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2e} :catch_93

    .line 466
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 468
    array-length v4, p1

    add-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 469
    .local v4, "headerAndData":Ljava/nio/ByteBuffer;
    const v5, 0x19901873

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 470
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 473
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 474
    :try_start_4a
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 475
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 476
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_90

    return v2

    .line 480
    :cond_57
    const/16 v6, 0x20

    :try_start_59
    new-array v7, v6, [B

    .line 481
    .local v7, "checksum":[B
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 482
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 483
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_69} :catch_7c
    .catchall {:try_start_59 .. :try_end_69} :catchall_7a

    .line 488
    .end local v7  # "checksum":[B
    :try_start_69
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 489
    nop

    .line 491
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 492
    array-length v2, p1

    monitor-exit v5

    return v2

    .line 494
    :cond_78
    monitor-exit v5
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_90

    return v2

    .line 488
    :catchall_7a
    move-exception v2

    goto :goto_8c

    .line 484
    :catch_7c
    move-exception v6

    .line 485
    .local v6, "e":Ljava/io/IOException;
    :try_start_7d
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "failed writing to the persistent data block"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_7a

    .line 486
    nop

    .line 488
    :try_start_87
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v5

    .line 486
    return v2

    .line 488
    .end local v6  # "e":Ljava/io/IOException;
    :goto_8c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0  # "maxBlockSize":J
    .end local v3  # "outputStream":Ljava/io/DataOutputStream;
    .end local v4  # "headerAndData":Ljava/nio/ByteBuffer;
    .end local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    .end local p1  # "data":[B
    throw v2

    .line 496
    .restart local v0  # "maxBlockSize":J
    .restart local v3  # "outputStream":Ljava/io/DataOutputStream;
    .restart local v4  # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local p0  # "this":Lcom/android/server/PersistentDataBlockService$1;
    .restart local p1  # "data":[B
    :catchall_90
    move-exception v2

    monitor-exit v5
    :try_end_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_90

    throw v2

    .line 463
    .end local v3  # "outputStream":Ljava/io/DataOutputStream;
    .end local v4  # "headerAndData":Ljava/nio/ByteBuffer;
    :catch_93
    move-exception v3

    .line 464
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    return v2
.end method
