.class Lcom/android/server/hdmi/HotplugDetectionAction$1;
.super Ljava/lang/Object;
.source "HotplugDetectionAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->access$000(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    .line 133
    return-void
.end method
