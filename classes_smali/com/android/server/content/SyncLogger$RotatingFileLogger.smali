.class Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.super Lcom/android/server/content/SyncLogger;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingFileLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;
    }
.end annotation


# static fields
.field private static final DO_LOGCAT:Z

.field private static final sFilenameDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sTimestampFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCachedDate:Ljava/util/Date;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCurrentLogFileDayTimestamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mErrorShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

.field private final mKeepAgeMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mLogPath:Ljava/io/File;

.field private mLogWriter:Ljava/io/Writer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    .line 152
    const-string v0, "SyncLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    .line 135
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "syncmanager-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 158
    new-instance v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;-><init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    .line 159
    return-void
.end method

.method private closeCurrentLogLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 248
    return-void
.end method

.method private dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 6

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const v0, 0x8000

    new-array v0, v0, [C

    .line 281
    :try_start_1b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_42

    .line 283
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result p2

    if-ltz p2, :cond_32

    .line 284
    if-lez p2, :cond_25

    .line 285
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_36

    goto :goto_25

    .line 288
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_42

    .line 289
    goto :goto_43

    .line 281
    :catchall_36
    move-exception p1

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 288
    :catchall_38
    move-exception p2

    :try_start_39
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p2
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception p1

    .line 290
    :goto_43
    return-void
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 167
    iget-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    if-nez v0, :cond_c

    .line 168
    const-string v0, "SyncLogger"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 171
    :cond_c
    return-void
.end method

.method private openLogLocked(J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 221
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    .line 222
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 223
    return-void

    .line 227
    :cond_10
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->closeCurrentLogLocked()V

    .line 229
    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    .line 231
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "synclog-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".log"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 238
    :try_start_47
    new-instance p1, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_50

    .line 241
    goto :goto_65

    .line 239
    :catch_50
    move-exception p1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open log file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 242
    :goto_65
    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 9

    .line 264
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_27

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_27

    .line 269
    :cond_f
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 271
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 272
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 274
    :cond_25
    monitor-exit v0

    .line 275
    return-void

    .line 267
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 274
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public enabled()Z
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 2

    .line 259
    invoke-static {p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 5

    .line 175
    if-nez p1, :cond_3

    .line 176
    return-void

    .line 178
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mHandler:Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->log(J[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method logInner(J[Ljava/lang/Object;)V
    .registers 8

    .line 183
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    .line 185
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-nez v1, :cond_c

    .line 186
    monitor-exit v0

    return-void

    .line 189
    :cond_c
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v1, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 191
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 199
    array-length p2, p3

    :goto_40
    if-ge v2, p2, :cond_4c

    aget-object v1, p3, v2

    .line 200
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 202
    :cond_4c
    iget-object p2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_77

    .line 205
    :try_start_53
    iget-object p2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    iget-object p3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 206
    iget-object p2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 209
    sget-boolean p2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    if-eqz p2, :cond_6e

    .line 210
    const-string p2, "SyncLogger"

    iget-object p3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_6e} :catch_6f
    .catchall {:try_start_53 .. :try_end_6e} :catchall_77

    .line 214
    :cond_6e
    goto :goto_75

    .line 212
    :catch_6f
    move-exception p1

    .line 213
    :try_start_70
    const-string p2, "Failed to write log"

    invoke-direct {p0, p2, p1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 215
    :goto_75
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_77

    throw p1
.end method

.method public purgeOldLogs()V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
