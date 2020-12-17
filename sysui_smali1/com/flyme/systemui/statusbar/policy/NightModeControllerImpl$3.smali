.class Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;
.super Ljava/lang/Object;
.source "NightModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->notifyPanelCollapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->notifyNightModeConfig(Z)V

    .line 136
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;Z)V

    .line 137
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] doInBackground: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
