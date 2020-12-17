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
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 517
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 518
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/TaskRecord;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToXml: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskPersister"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 523
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 524
    .local v1, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 527
    const/4 v2, 0x1

    const-string v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 532
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 534
    const-string v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 536
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 539
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 541
    return-object v1
.end method


# virtual methods
.method public process()V
    .registers 10

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "stringWriter":Ljava/io/StringWriter;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 549
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 551
    iget-boolean v3, v1, Lcom/android/server/wm/TaskRecord;->inRecents:Z
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_e8

    if-eqz v3, :cond_45

    .line 554
    :try_start_25
    const-string v3, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v3
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3f} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_3f} :catch_41
    .catchall {:try_start_25 .. :try_end_3f} :catchall_e8

    move-object v0, v3

    .line 558
    :goto_40
    goto :goto_45

    .line 557
    :catch_41
    move-exception v3

    goto :goto_45

    .line 556
    :catch_43
    move-exception v3

    goto :goto_40

    .line 560
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 561
    if-eqz v0, :cond_e7

    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, "file":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 566
    .local v3, "atomicFile":Landroid/util/AtomicFile;
    :try_start_4d
    iget v4, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/android/server/wm/TaskPersister;->access$000(I)Ljava/io/File;

    move-result-object v4

    .line 567
    .local v4, "userTasksDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_88

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_88

    .line 568
    const-string v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure creating tasks directory for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Dropping persistence for task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 572
    :cond_88
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 573
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_task.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 574
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 575
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 577
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_c2} :catch_c3

    .line 584
    .end local v4  # "userTasksDir":Ljava/io/File;
    goto :goto_e7

    .line 578
    :catch_c3
    move-exception v4

    .line 579
    .local v4, "e":Ljava/io/IOException;
    if-eqz v2, :cond_c9

    .line 580
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 582
    :cond_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for persisting. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TaskPersister"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v2  # "file":Ljava/io/FileOutputStream;
    .end local v3  # "atomicFile":Landroid/util/AtomicFile;
    .end local v4  # "e":Ljava/io/IOException;
    :cond_e7
    :goto_e7
    return-void

    .line 560
    :catchall_e8
    move-exception v3

    :try_start_e9
    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 590
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
