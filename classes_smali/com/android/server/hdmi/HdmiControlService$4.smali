.class Lcom/android/server/hdmi/HdmiControlService$4;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->setStandbyMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 2674
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$4;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 4

    .line 2677
    if-eqz p1, :cond_18

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to complete \'one touch play\'. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiControlService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :cond_18
    return-void
.end method