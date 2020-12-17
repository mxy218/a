.class Lcom/android/server/GraphicsStatsService$1;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/GraphicsStatsService;

    .line 110
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_19

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$100(Lcom/android/server/GraphicsStatsService;)V

    goto :goto_19

    .line 115
    :cond_f
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-static {v0, v2}, Lcom/android/server/GraphicsStatsService;->access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    .line 116
    nop

    .line 121
    :goto_19
    return v1
.end method
