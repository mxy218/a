.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field private static final DEBUG:Z = false

.field private static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final SAVE_WAIT_TIMEOUT_MS:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingItems:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 11

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    .line 80
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 109
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    .line 219
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;

    invoke-direct {v0, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$AUDgG57FGyGDUVDAjL-7cuiE0pM;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 115
    return-void
.end method

.method static synthetic lambda$waitForAllSavesLocked$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private processPendingItems()Z
    .registers 9

    .line 248
    nop

    .line 252
    const/4 v0, 0x0

    const/16 v1, 0x800

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8e

    .line 253
    :try_start_7
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    if-nez v3, :cond_13

    .line 254
    const/4 v3, 0x0

    monitor-exit v2

    .line 296
    nop

    .line 254
    return v3

    .line 256
    :cond_13
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 257
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_8b

    .line 259
    :try_start_1c
    iget-object v2, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_8e

    .line 262
    :try_start_1e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_89

    const/4 v5, 0x1

    if-nez v4, :cond_34

    .line 263
    nop

    .line 296
    nop

    .line 297
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 302
    :cond_30
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 263
    return v5

    .line 270
    :cond_34
    nop

    .line 272
    :try_start_35
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 273
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    .line 272
    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_43} :catch_67
    .catchall {:try_start_35 .. :try_end_43} :catchall_89

    .line 277
    :try_start_43
    iget-object v3, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->write([B)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_62

    .line 279
    :try_start_48
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 280
    nop

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_53} :catch_67
    .catchall {:try_start_48 .. :try_end_53} :catchall_89

    .line 291
    nop

    .line 296
    nop

    .line 297
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 302
    :cond_5e
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 305
    return v5

    .line 279
    :catchall_62
    move-exception v3

    :try_start_63
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_67} :catch_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_89

    .line 284
    :catch_67
    move-exception v3

    .line 285
    :try_start_68
    const-string v4, "ShortcutService"

    const-string v6, "Unable to write bitmap to file"

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_89

    .line 290
    :cond_7a
    nop

    .line 296
    nop

    .line 297
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_85

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 302
    :cond_85
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 290
    return v5

    .line 293
    :catchall_89
    move-exception v0

    goto :goto_92

    .line 257
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 293
    :catchall_8e
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 296
    :goto_92
    if-eqz v2, :cond_a0

    .line 297
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9d

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 302
    :cond_9d
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_a0
    throw v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 311
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending saves: Num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Executor="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    goto :goto_30

    .line 319
    :cond_48
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$new$1$ShortcutBitmapSaver()V
    .registers 2

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 223
    :cond_7
    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    .line 152
    const/16 v0, 0xa0c

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 155
    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 10

    .line 159
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    if-nez v1, :cond_24

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing icon: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShortcutService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 170
    :cond_24
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 174
    :try_start_28
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 175
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 174
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 177
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1, p2}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3e} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_3e} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_3e} :catch_a8
    .catchall {:try_start_28 .. :try_end_3e} :catchall_a6

    .line 179
    :try_start_3e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/high16 v4, 0x10000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_9f

    .line 180
    :try_start_45
    invoke-virtual {p2, p3, p4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3

    if-nez p3, :cond_52

    .line 181
    const-string p3, "ShortcutService"

    const-string p4, "Unable to compress bitmap"

    invoke-static {p3, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_52
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 184
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 185
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_93

    .line 186
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_9f

    .line 188
    if-eq p2, v1, :cond_64

    .line 189
    :try_start_61
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_64} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_64} :catch_a8
    .catchall {:try_start_61 .. :try_end_64} :catchall_a6

    .line 196
    :cond_64
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 197
    nop

    .line 199
    const/16 p2, 0x808

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 202
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p2

    const/4 p4, 0x5

    if-ne p2, p4, :cond_79

    .line 203
    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 207
    :cond_79
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$1;)V

    .line 208
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter p1

    .line 209
    :try_start_82
    iget-object p3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {p3, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_90

    .line 216
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void

    .line 210
    :catchall_90
    move-exception p2

    :try_start_91
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p2

    .line 179
    :catchall_93
    move-exception p1

    :try_start_94
    throw p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 186
    :catchall_95
    move-exception p3

    :try_start_96
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception p4

    :try_start_9b
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw p3
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    .line 188
    :catchall_9f
    move-exception p1

    if-eq p2, v1, :cond_a5

    .line 189
    :try_start_a2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a5
    throw p1
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a6} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_a6} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a2 .. :try_end_a6} :catch_a8
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a6

    .line 196
    :catchall_a6
    move-exception p1

    goto :goto_b4

    .line 192
    :catch_a8
    move-exception p1

    .line 193
    :try_start_a9
    const-string p2, "ShortcutService"

    const-string p3, "Unable to write bitmap to file"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_a6

    .line 196
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 194
    return-void

    .line 196
    :goto_b4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public waitForAllSavesLocked()Z
    .registers 6

    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;

    invoke-direct {v3, v0}, Lcom/android/server/pm/-$$Lambda$ShortcutBitmapSaver$xgjvZfaiKXavxgGCSta_eIdVBnk;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    const-wide/16 v2, 0x7530

    :try_start_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 124
    return v1

    .line 126
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string v1, "Timed out waiting on saving bitmaps."

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_22} :catch_23

    .line 129
    goto :goto_2b

    .line 127
    :catch_23
    move-exception v0

    .line 128
    const-string v0, "ShortcutService"

    const-string v1, "interrupted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method
