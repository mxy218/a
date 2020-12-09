.class Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskWriteQueueItem"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTask:Lcom/android/server/wm/TaskRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 514
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 515
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/TaskRecord;
    .registers 1

    .line 508
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    return-object p0
.end method

.method private saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 520
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 521
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 529
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 531
    const-string v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 533
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 536
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 538
    return-object v1
.end method


# virtual methods
.method public process()V
    .registers 8

    .line 544
    nop

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 547
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 548
    iget-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->inRecents:Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_bd

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 552
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_14} :catch_15
    .catchall {:try_start_10 .. :try_end_14} :catchall_bd

    .line 555
    goto :goto_19

    .line 554
    :catch_15
    move-exception v2

    goto :goto_18

    .line 553
    :catch_17
    move-exception v2

    .line 557
    :cond_18
    :goto_18
    move-object v2, v3

    :goto_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 558
    if-eqz v2, :cond_bc

    .line 560
    nop

    .line 561
    nop

    .line 563
    :try_start_21
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/wm/TaskPersister;->access$000(I)Ljava/io/File;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 565
    const-string v2, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure creating tasks directory for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Dropping persistence for task "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 569
    :cond_5c
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 570
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_task.xml"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_7d} :catch_97

    .line 571
    :try_start_7d
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 572
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 573
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 574
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_94} :catch_95

    .line 581
    goto :goto_bc

    .line 575
    :catch_95
    move-exception v0

    goto :goto_99

    :catch_97
    move-exception v0

    move-object v4, v3

    .line 576
    :goto_99
    if-eqz v3, :cond_9e

    .line 577
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 579
    :cond_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for persisting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskPersister"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_bc
    :goto_bc
    return-void

    .line 557
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskWriteQueueItem{task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
