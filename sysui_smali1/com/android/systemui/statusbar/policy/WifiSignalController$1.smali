.class Lcom/android/systemui/statusbar/policy/WifiSignalController$1;
.super Ljava/lang/Object;
.source "WifiSignalController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDualWifiConnectionState(Landroid/net/NetworkInfo$State;)V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->access$100(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualWifiConnectionState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->access$200(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    return-void
.end method

.method public setDualWifiEnabled(Z)V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->access$100(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualWifiEnabled: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->access$200(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    return-void
.end method
