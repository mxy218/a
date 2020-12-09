.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    .line 34
    const-string v0, "DelayedDiskWrite"

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 7

    .line 67
    nop

    .line 69
    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    .line 70
    :try_start_4
    new-instance p3, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_18
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    goto :goto_1c

    .line 77
    :catchall_14
    move-exception p1

    move-object p3, v0

    goto/16 :goto_7d

    .line 74
    :catch_18
    move-exception p2

    move-object p3, v0

    goto :goto_45

    .line 69
    :cond_1b
    move-object p3, v0

    .line 73
    :goto_1c
    :try_start_1c
    invoke-interface {p2, p3}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_44
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    .line 77
    if-eqz p3, :cond_27

    .line 79
    :try_start_21
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    .line 80
    :goto_24
    goto :goto_27

    :catch_25
    move-exception p1

    goto :goto_24

    .line 84
    :cond_27
    :goto_27
    monitor-enter p0

    .line 85
    :try_start_28
    iget p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez p1, :cond_3d

    .line 86
    iget-object p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_3d
    monitor-exit p0

    .line 91
    :goto_3e
    goto :goto_79

    .line 90
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_3f

    throw p1

    .line 77
    :catchall_42
    move-exception p1

    goto :goto_7d

    .line 74
    :catch_44
    move-exception p2

    .line 75
    :goto_45
    :try_start_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing data file "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/net/DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_42

    .line 77
    if-eqz p3, :cond_61

    .line 79
    :try_start_5b
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 80
    :goto_5e
    goto :goto_61

    :catch_5f
    move-exception p1

    goto :goto_5e

    .line 84
    :cond_61
    :goto_61
    monitor-enter p0

    .line 85
    :try_start_62
    iget p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez p1, :cond_77

    .line 86
    iget-object p1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_77
    monitor-exit p0

    goto :goto_3e

    .line 92
    :goto_79
    return-void

    .line 90
    :catchall_7a
    move-exception p1

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_7a

    throw p1

    .line 77
    :goto_7d
    if-eqz p3, :cond_85

    .line 79
    :try_start_7f
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    .line 80
    :goto_82
    goto :goto_85

    :catch_83
    move-exception p2

    goto :goto_82

    .line 84
    :cond_85
    :goto_85
    monitor-enter p0

    .line 85
    :try_start_86
    iget p2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez p2, :cond_9b

    .line 86
    iget-object p2, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_86 .. :try_end_9c} :catchall_9d

    throw p1

    :catchall_9d
    move-exception p1

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3

    .line 95
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .registers 4

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 42
    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 6

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 50
    monitor-enter p0

    .line 51
    :try_start_7
    iget v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-ne v0, v1, :cond_2a

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DelayedDiskWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 56
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_36

    .line 58
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void

    .line 56
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1

    .line 46
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty file path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
