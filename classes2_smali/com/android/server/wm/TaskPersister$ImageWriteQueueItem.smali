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

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 598
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 599
    return-void
.end method


# virtual methods
.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2

    .line 591
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public process()V
    .registers 7

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 604
    invoke-static {v0}, Lcom/android/server/wm/TaskPersister;->access$100(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TaskPersister"

    if-nez v1, :cond_1f

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while creating images directory for file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void

    .line 608
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 610
    const/4 v3, 0x0

    .line 612
    :try_start_22
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_3f
    .catchall {:try_start_22 .. :try_end_2c} :catchall_3d

    .line 613
    :try_start_2c
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_3a
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 617
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 618
    :goto_36
    goto :goto_58

    .line 617
    :catchall_37
    move-exception v0

    move-object v3, v4

    goto :goto_59

    .line 614
    :catch_3a
    move-exception v1

    move-object v3, v4

    goto :goto_40

    .line 617
    :catchall_3d
    move-exception v0

    goto :goto_59

    .line 614
    :catch_3f
    move-exception v1

    .line 615
    :goto_40
    :try_start_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveImage: unable to save "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_3d

    .line 617
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_36

    .line 619
    :goto_58
    return-void

    .line 617
    :goto_59
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageWriteQueueItem{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 634
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

    .line 633
    return-object v0
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    .line 591
    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V

    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)V
    .registers 2

    .line 628
    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 629
    return-void
.end method
