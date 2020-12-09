.class Lcom/android/server/tv/TvInputManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    move-result v2

    if-ne v1, v2, :cond_29

    .line 181
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 184
    :cond_29
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw p1
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    .line 239
    const/4 p1, 0x1

    return p1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 4

    .line 192
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 3

    .line 202
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 205
    :cond_9
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3

    .line 215
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 218
    :cond_9
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .line 225
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    return-void

    .line 231
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    .line 232
    return-void
.end method
