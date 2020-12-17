.class Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$2;
.super Landroid/os/Handler;
.source "BroadcastUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$2;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_1c

    .line 64
    :cond_9
    iget-object p0, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$2;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$300(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;Z)V

    goto :goto_1c

    .line 61
    :cond_17
    iget-object p0, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$2;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$200(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)V

    :goto_1c
    return-void
.end method
