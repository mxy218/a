.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;)V
    .registers 2

    .line 4823
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissOrShowSecurity()V

    .line 4829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 4830
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    :cond_1e
    const-string/jumbo p0, "unlock runnable run "

    .line 4833
    invoke-static {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    return-void
.end method
