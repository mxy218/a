.class Lcom/android/server/net/NetworkStatsObservers$1;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    .line 148
    const/4 p1, 0x0

    return p1

    .line 144
    :cond_d
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsObservers;->access$200(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 145
    return v1

    .line 140
    :cond_17
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DataUsageRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, p1}, Lcom/android/server/net/NetworkStatsObservers;->access$100(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V

    .line 141
    return v1

    .line 136
    :cond_23
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsObservers;->access$000(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    .line 137
    return v1
.end method