.class Lcom/android/systemui/statusbar/KeyguardIndicationController$4;
.super Landroid/os/Handler;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 646
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_36

    .line 649
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result p1

    if-lt p1, v1, :cond_27

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 650
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 651
    :cond_27
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$402(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 655
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    goto :goto_53

    :cond_36
    const/4 v2, 0x2

    if-ne p1, v2, :cond_43

    .line 658
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientBiometricsError(Z)V

    goto :goto_53

    :cond_43
    if-ne p1, v1, :cond_4b

    .line 660
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    goto :goto_53

    :cond_4b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_53

    .line 664
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_53
    :goto_53
    return-void
.end method
