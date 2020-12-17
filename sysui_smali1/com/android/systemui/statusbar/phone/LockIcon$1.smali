.class Lcom/android/systemui/statusbar/phone/LockIcon$1;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    :cond_20
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    move v2, v1

    :cond_2d
    if-nez v0, :cond_3c

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 122
    :cond_3c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method
