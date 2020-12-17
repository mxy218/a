.class Lcom/android/server/net/NetworkStatsService$HandlerCallback;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerCallback"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2
    .param p1, "service"  # Lcom/android/server/net/NetworkStatsService;

    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    .line 1744
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 1748
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 1759
    const/4 v0, 0x0

    return v0

    .line 1754
    :cond_a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)V

    .line 1756
    return v1

    .line 1750
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1751
    return v1
.end method
