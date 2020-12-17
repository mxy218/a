.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkController;)V
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

    .line 75
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnection(Z)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->access$102(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)Z

    .line 80
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    :cond_12
    return-void
.end method

.method public onWifiConnection(Z)V
    .registers 2

    return-void
.end method
