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

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    .line 1730
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1734
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    .line 1745
    const/4 p1, 0x0

    return p1

    .line 1740
    :cond_a
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1741
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)V

    .line 1742
    return v0

    .line 1736
    :cond_15
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1737
    return v0
.end method
