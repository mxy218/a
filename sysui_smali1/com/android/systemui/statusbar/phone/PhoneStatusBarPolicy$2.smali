.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUserSwitchComplete$1$PhoneStatusBarPolicy$2()V
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    return-void
.end method

.method public synthetic lambda$onUserSwitching$0$PhoneStatusBarPolicy$2()V
    .registers 1

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$Plmwop8KrxGggPzmlSO1fhoG95o;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$Plmwop8KrxGggPzmlSO1fhoG95o;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$LI33EMb6BH_vzJDvdqlOnj25WlE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$LI33EMb6BH_vzJDvdqlOnj25WlE;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
