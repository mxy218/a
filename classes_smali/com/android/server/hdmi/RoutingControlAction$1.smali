.class Lcom/android/server/hdmi/RoutingControlAction$1;
.super Ljava/lang/Object;
.source "RoutingControlAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RoutingControlAction;->handleTimerEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/RoutingControlAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/RoutingControlAction;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {v0, p1}, Lcom/android/server/hdmi/RoutingControlAction;->access$000(Lcom/android/server/hdmi/RoutingControlAction;Z)V

    .line 171
    return-void
.end method
