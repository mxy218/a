.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 4

    if-eqz p1, :cond_27

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh statusview showing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardStatusView"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 99
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    :cond_27
    return-void
.end method

.method public onLogoutEnabledChanged()V
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;Ljava/util/TimeZone;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$500(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method
