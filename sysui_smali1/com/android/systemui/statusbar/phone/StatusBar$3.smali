.class Lcom/android/systemui/statusbar/phone/StatusBar$3;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 1

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;->onFinished()V

    return-void
.end method

.method public onFinished()V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v1, :cond_e

    const-string p0, "StatusBar"

    const-string v0, "Tried to notify keyguard visibility when mStatusBarKeyguardViewManager was null"

    .line 619
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 623
    :cond_e
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 624
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    :cond_1f
    return-void
.end method
