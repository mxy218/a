.class Lcom/android/server/net/NetworkStatsService$7;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .line 1116
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1120
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p2}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "NetworkStats"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string p2, "globalAlert"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1125
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1126
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1130
    :cond_2d
    return-void
.end method
