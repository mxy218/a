.class Lcom/android/server/hdmi/DeviceSelectAction$1;
.super Ljava/lang/Object;
.source "DeviceSelectAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceSelectAction;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 3

    .line 98
    if-eqz p1, :cond_e

    .line 99
    iget-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->access$000(Lcom/android/server/hdmi/DeviceSelectAction;I)V

    .line 100
    iget-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 101
    return-void

    .line 103
    :cond_e
    return-void
.end method
