.class public Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDescription:Ljava/lang/String;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 394
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    .line 396
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 397
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    .line 398
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .registers 2

    .line 404
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x0

    return-object p0

    :catch_9
    move-exception p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 388
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 414
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f1214f7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 415
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_49

    .line 417
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unmount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSettings"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f1214f6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_49
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 388
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
