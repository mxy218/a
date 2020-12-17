.class Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
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
    name = "ImageWriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;",
        ">;"
    }
.end annotation


# instance fields
.field final mFilePath:Ljava/lang/String;

.field mImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "filePath"  # Ljava/lang/String;
    .param p2, "image"  # Landroid/graphics/Bitmap;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 601
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 602
    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2

    .line 594
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 4
    .param p1, "item"  # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public process()V
    .registers 8

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 607
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/TaskPersister;->access$100(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TaskPersister"

    if-nez v1, :cond_1f

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while creating images directory for file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 611
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 612
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writing bitmap: filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v3, 0x0

    .line 615
    .local v3, "imageFile":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 616
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_48} :catch_4f
    .catchall {:try_start_36 .. :try_end_48} :catchall_4d

    .line 620
    nop

    :goto_49
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 621
    goto :goto_66

    .line 620
    :catchall_4d
    move-exception v2

    goto :goto_67

    .line 617
    :catch_4f
    move-exception v4

    .line 618
    .local v4, "e":Ljava/lang/Exception;
    :try_start_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImage: unable to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_4d

    .line 620
    nop

    .end local v4  # "e":Ljava/lang/Exception;
    goto :goto_49

    .line 622
    :goto_66
    return-void

    .line 620
    :goto_67
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageWriteQueueItem{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 637
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    return-object v0
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    .line 594
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V

    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V
    .registers 3
    .param p1, "item"  # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 631
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 632
    return-void
.end method
