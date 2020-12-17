.class public Lcom/android/systemui/classifier/FalsingLog;
.super Ljava/lang/Object;
.source "FalsingLog.java"


# static fields
.field public static final ENABLED:Z

.field private static final LOGCAT:Z

.field private static final MAX_SIZE:I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingLog;


# instance fields
.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private final mLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "debug.falsing_log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    const-string v0, "debug.falsing_logcat"

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    const-string v0, "debug.falsing_log_size"

    const/16 v1, 0x64

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    sget v1, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    :try_start_3
    const-string v1, "FALSING LOG:"

    .line 122
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-nez v1, :cond_16

    const-string v1, "Disabled, to enable: setprop debug.falsing_log 1"

    .line 124
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4c

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_16
    :try_start_16
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_42

    .line 133
    :cond_25
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 136
    :cond_3d
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_4c

    .line 137
    monitor-exit v0

    return-void

    :cond_42
    :goto_42
    :try_start_42
    const-string v1, "<empty>"

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4c

    .line 131
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_1d

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FalsingLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-string v0, "E"

    .line 101
    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 79
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_1d

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FalsingLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-string v0, "I"

    .line 82
    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_61

    if-nez v1, :cond_9

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_9
    :try_start_9
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-nez v1, :cond_14

    .line 109
    new-instance v1, Lcom/android/systemui/classifier/FalsingLog;

    invoke-direct {v1}, Lcom/android/systemui/classifier/FalsingLog;-><init>()V

    sput-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    .line 112
    :cond_14
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    sget v2, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    if-lt v1, v2, :cond_27

    .line 113
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 115
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    sget-object p1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_61

    .line 119
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static wLogcat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FalsingLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "W"

    .line 87
    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b4

    if-nez v1, :cond_9

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_9
    :try_start_9
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, ""

    .line 147
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_8a

    if-eqz v1, :cond_8a

    .line 148
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "falsing-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 149
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_b4

    const/4 v1, 0x0

    .line 152
    :try_start_49
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_73
    .catchall {:try_start_49 .. :try_end_4e} :catchall_70

    .line 153
    :try_start_4e
    invoke-static {v4}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 154
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log written to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_69} :catch_6e
    .catchall {:try_start_4e .. :try_end_69} :catchall_83

    .line 160
    :try_start_69
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_b4

    move-object v2, v1

    goto :goto_91

    :catch_6e
    move-exception v1

    goto :goto_76

    :catchall_70
    move-exception p0

    move-object v4, v1

    goto :goto_84

    :catch_73
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    :goto_76
    :try_start_76
    const-string v3, "FalsingLog"

    const-string v5, "Unable to write falsing log"

    .line 157
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_83

    if-eqz v4, :cond_91

    .line 160
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_91

    :catchall_83
    move-exception p0

    :goto_84
    if-eqz v4, :cond_89

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_89
    throw p0

    :cond_8a
    const-string v1, "FalsingLog"

    const-string v3, "Unable to write log, build must be debuggable."

    .line 164
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    const-string v1, "FalsingLog"

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_7f .. :try_end_b2} :catchall_b4

    .line 168
    monitor-exit v0

    return-void

    :catchall_b4
    move-exception p0

    monitor-exit v0

    throw p0
.end method
