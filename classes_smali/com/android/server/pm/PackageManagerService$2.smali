.class Lcom/android/server/pm/PackageManagerService$2;
.super Landroid/os/storage/StorageEventListener;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 2202
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 10

    .line 2228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2229
    const-string p1, "PackageManager"

    const-string v0, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    return-void

    .line 2234
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2235
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2237
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because volume was forgotten"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Landroid/content/pm/VersionedPackage;

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v5, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 2240
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 2238
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 2245
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 2246
    goto :goto_1f

    .line 2248
    :cond_6b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 2249
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2250
    monitor-exit v0

    .line 2251
    return-void

    .line 2250
    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_13 .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    .line 2205
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_30

    .line 2206
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_25

    .line 2207
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    .line 2211
    sget-object p3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 2212
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 2216
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 2218
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    goto :goto_30

    .line 2220
    :cond_25
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_30

    .line 2221
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    nop

    .line 2224
    :cond_30
    :goto_30
    return-void
.end method
