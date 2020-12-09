.class public final Lcom/android/server/Watchdog$OpenFdMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFdMonitor"
.end annotation


# static fields
.field private static final FD_HIGH_WATER_MARK:I = 0xc


# instance fields
.field private final mDumpDir:Ljava/io/File;

.field private final mFdHighWaterMark:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p1, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    .line 725
    iput-object p2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    .line 726
    return-void
.end method

.method public static create()Lcom/android/server/Watchdog$OpenFdMonitor;
    .registers 7

    .line 700
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 701
    return-object v1

    .line 706
    :cond_6
    :try_start_6
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_c} :catch_35

    .line 710
    nop

    .line 719
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/self/fd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v5, 0xc

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/android/server/Watchdog$OpenFdMonitor;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/anr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/android/server/Watchdog$OpenFdMonitor;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0

    .line 707
    :catch_35
    move-exception v0

    .line 708
    const-string v2, "Watchdog"

    const-string v3, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    return-object v1
.end method

.method private dumpOpenDescriptors()V
    .registers 9

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/%d/fd/"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 737
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 738
    if-nez v2, :cond_39

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 741
    :cond_39
    array-length v1, v2

    move v4, v3

    :goto_3b
    if-ge v4, v1, :cond_68

    aget-object v5, v2, v4

    .line 742
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 743
    nop

    .line 745
    :try_start_44
    invoke-static {v5}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_44 .. :try_end_48} :catch_49

    .line 748
    goto :goto_4e

    .line 746
    :catch_49
    move-exception v6

    .line 747
    invoke-virtual {v6}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 749
    :goto_4e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 755
    :cond_68
    :goto_68
    :try_start_68
    const-string v1, "anr_fd_"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    invoke-static {v1, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 756
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 757
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_83} :catch_84

    .line 760
    goto :goto_9b

    .line 758
    :catch_84
    move-exception v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write open descriptors to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_9b
    return-void
.end method


# virtual methods
.method public monitor()Z
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 769
    invoke-direct {p0}, Lcom/android/server/Watchdog$OpenFdMonitor;->dumpOpenDescriptors()V

    .line 770
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
