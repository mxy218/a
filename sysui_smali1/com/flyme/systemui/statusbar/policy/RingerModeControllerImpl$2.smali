.class Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 50
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    const/4 v0, -0x1

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$302(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;I)I

    .line 51
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I

    move-result p1

    if-ne p1, v0, :cond_15

    return-void

    .line 52
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[foree] onReceive: mRingerMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p2}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RingerModeControllerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3c

    const/4 p2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$402(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z

    .line 54
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    return-void
.end method
