.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


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

    .line 651
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readInternal(JI)[B
    .registers 8

    .line 729
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 735
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 736
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_54

    .line 739
    nop

    .line 742
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_46
    .catchall {:try_start_1e .. :try_end_25} :catchall_44

    .line 743
    :try_start_25
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 744
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 745
    if-lez p1, :cond_3b

    if-le p1, p3, :cond_31

    goto :goto_3b

    .line 748
    :cond_31
    new-array p1, p1, [B

    .line 749
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 750
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_41

    .line 755
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 750
    return-object p1

    .line 746
    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    .line 755
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 746
    return-object p1

    .line 751
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_44} :catch_46
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 755
    :catchall_44
    move-exception p1

    goto :goto_50

    .line 752
    :catch_46
    move-exception p1

    .line 753
    :try_start_47
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string/jumbo p3, "persistent partition not readable"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 755
    :goto_50
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 737
    :catch_54
    move-exception p1

    .line 738
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 730
    :cond_5e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid checksum"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeDataBuffer(JLjava/nio/ByteBuffer;)V
    .registers 7

    .line 702
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_10} :catch_56

    .line 706
    nop

    .line 707
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 708
    :try_start_18
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 709
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 710
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_53

    return-void

    .line 713
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 714
    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 715
    invoke-virtual {v2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 716
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_3f
    .catchall {:try_start_25 .. :try_end_32} :catchall_3d

    .line 721
    :try_start_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 722
    nop

    .line 724
    iget-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 725
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_53

    .line 726
    return-void

    .line 721
    :catchall_3d
    move-exception p1

    goto :goto_4f

    .line 717
    :catch_3f
    move-exception p1

    .line 718
    :try_start_40
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "unable to access persistent partition"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    .line 721
    :try_start_4a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v1

    .line 719
    return-void

    .line 721
    :goto_4f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 725
    :catchall_53
    move-exception p1

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw p1

    .line 703
    :catch_56
    move-exception p1

    .line 704
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "partition not available"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    return-void
.end method

.method private writeInternal([BJI)V
    .registers 9

    .line 684
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 685
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gt v2, p4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 689
    add-int/lit8 p4, p4, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 690
    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    array-length v1, p1

    :goto_35
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 691
    if-eqz p1, :cond_3d

    .line 692
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 694
    :cond_3d
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 696
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 697
    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .registers 4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 680
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 681
    return-void
.end method

.method public forceOemUnlockEnabled(Z)V
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 762
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 763
    iget-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 764
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getFrpCredentialHandle()[B
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getTestHarnessModeData()[B
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    .line 671
    if-nez v0, :cond_12

    .line 672
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 674
    :cond_12
    return-object v0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 656
    return-void
.end method

.method public setTestHarnessModeData([B)V
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 666
    return-void
.end method
