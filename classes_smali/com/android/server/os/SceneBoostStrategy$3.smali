.class Lcom/android/server/os/SceneBoostStrategy$3;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SceneBoostStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/SceneBoostStrategy;->getApkSize(Landroid/scene/Scene;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/SceneBoostStrategy;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$scene:Landroid/scene/Scene;


# direct methods
.method constructor <init>(Lcom/android/server/os/SceneBoostStrategy;Ljava/lang/String;Landroid/scene/Scene;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/os/SceneBoostStrategy;

    .line 252
    iput-object p1, p0, Lcom/android/server/os/SceneBoostStrategy$3;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    iput-object p2, p0, Lcom/android/server/os/SceneBoostStrategy$3;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/os/SceneBoostStrategy$3;->val$scene:Landroid/scene/Scene;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 8
    .param p1, "stats"  # Landroid/content/pm/PackageStats;
    .param p2, "b"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    if-eqz p2, :cond_34

    .line 256
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 257
    .local v0, "size":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "apk size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SceneBoostStrategy"

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-wide/32 v2, 0x1f400000

    cmp-long v2, v0, v2

    if-lez v2, :cond_34

    .line 259
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy$3;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy$3;->val$scene:Landroid/scene/Scene;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/os/SceneBoostStrategy;->access$600(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;Z)V

    .line 262
    .end local v0  # "size":J
    :cond_34
    return-void
.end method
