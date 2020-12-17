.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "VpnControllerImpl"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :try_start_e
    const-string/jumbo v0, "vpn_state"

    const/4 v1, -0x1

    .line 48
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MZ_ACTION_VPN_STATE_CHANGED received! -- vpnState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {p0, p2}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;I)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_30

    goto :goto_36

    :catchall_30
    move-exception p0

    const-string p2, "onReceive err"

    .line 54
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method
