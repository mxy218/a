.class Lcom/meizu/pps/observer/PPSUeventManager$1;
.super Landroid/os/Handler;
.source "PPSUeventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/pps/observer/PPSUeventManager;->delayInit(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/pps/observer/PPSUeventManager;


# direct methods
.method constructor <init>(Lcom/meizu/pps/observer/PPSUeventManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/meizu/pps/observer/PPSUeventManager;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 33
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSUeventManager$1;->this$0:Lcom/meizu/pps/observer/PPSUeventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSUeventManager$1;->this$0:Lcom/meizu/pps/observer/PPSUeventManager;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSUeventManager;->access$000(Lcom/meizu/pps/observer/PPSUeventManager;)V

    .line 39
    nop

    .line 43
    :goto_c
    return-void
.end method
