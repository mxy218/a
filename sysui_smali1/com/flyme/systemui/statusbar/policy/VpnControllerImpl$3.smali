.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setVpnEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.VPN_STATE_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->val$enabled:Z

    const-string/jumbo v2, "vpn_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
