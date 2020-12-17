.class public Lcom/flyme/server/am/BootEvent;
.super Ljava/lang/Object;
.source "BootEvent.java"


# static fields
.field private static final IS_USER_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "BootEvent"

.field private static mBootProfDisable:Z = false

.field private static final sDebug:Z = false

.field private static sEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/server/am/BootEvent;->sEnabled:Z

    .line 71
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/server/am/BootEvent;->IS_USER_BUILD:Z

    .line 72
    const-string v0, "ro.bootprof.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/server/am/BootEvent;->mBootProfDisable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .registers 5
    .param p0, "bootevent"  # Ljava/lang/String;

    .line 85
    sget-boolean v0, Lcom/flyme/server/am/BootEvent;->sEnabled:Z

    if-nez v0, :cond_5

    .line 86
    return-void

    .line 88
    :cond_5
    sget-boolean v0, Lcom/flyme/server/am/BootEvent;->mBootProfDisable:Z

    if-eqz v0, :cond_a

    .line 89
    return-void

    .line 96
    :cond_a
    :try_start_a
    const-string v0, "/sys/bootprof/bootprof"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_38

    .line 98
    .local v0, "fbp":Ljava/io/OutputStream;
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 100
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2a

    .line 101
    :try_start_26
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_38

    .line 103
    .end local v0  # "fbp":Ljava/io/OutputStream;
    goto :goto_40

    .line 96
    .restart local v0  # "fbp":Ljava/io/OutputStream;
    :catchall_2a
    move-exception v1

    .end local v0  # "fbp":Ljava/io/OutputStream;
    .end local p0  # "bootevent":Ljava/lang/String;
    :try_start_2b
    throw v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 101
    .restart local v0  # "fbp":Ljava/io/OutputStream;
    .restart local p0  # "bootevent":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    if-eqz v0, :cond_37

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v3

    :try_start_34
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "bootevent":Ljava/lang/String;
    :cond_37
    :goto_37
    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    .end local v0  # "fbp":Ljava/io/OutputStream;
    .restart local p0  # "bootevent":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BootEvent"

    const-string v2, "Failure open /sys/bootprof/bootprof entry"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0  # "e":Ljava/io/IOException;
    :goto_40
    return-void
.end method

.method public static setEnabled(Z)V
    .registers 3
    .param p0, "enabled"  # Z

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootEvent"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-boolean p0, Lcom/flyme/server/am/BootEvent;->sEnabled:Z

    .line 114
    return-void
.end method
