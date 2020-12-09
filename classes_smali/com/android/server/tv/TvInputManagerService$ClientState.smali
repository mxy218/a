.class final Lcom/android/server/tv/TvInputManagerService$ClientState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientState"
.end annotation


# instance fields
.field private clientToken:Landroid/os/IBinder;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 4

    .line 2167
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2162
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 2168
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 2169
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    .line 2170
    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;
    .registers 1

    .line 2161
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;
    .registers 1

    .line 2161
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/server/tv/TvInputManagerService$ClientState;)I
    .registers 1

    .line 2161
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    return p0
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 2178
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2179
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2182
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2183
    if-eqz v1, :cond_38

    .line 2184
    :goto_1d
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 2185
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    const/4 v4, 0x0

    .line 2186
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    .line 2185
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    goto :goto_1d

    .line 2189
    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 2190
    monitor-exit v0

    .line 2191
    return-void

    .line 2190
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 2173
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
