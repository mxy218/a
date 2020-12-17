.class Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;)V
    .registers 2

    .line 1313
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1317
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v0}, Lcom/meizu/settings/applications/ApplicationsState;->access$500(Lcom/meizu/settings/applications/ApplicationsState;)Landroid/app/usage/StorageStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1319
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1317
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1320
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1322
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1323
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1324
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_45} :catch_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_45} :catch_4e

    .line 1326
    :try_start_45
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4d} :catch_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_4e

    goto :goto_6e

    :catch_4e
    move-exception v0

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :try_start_65
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_6e

    :catch_6e
    :goto_6e
    return-void
.end method
