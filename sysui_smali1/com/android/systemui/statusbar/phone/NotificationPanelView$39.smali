.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2

    .line 5397
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChange()V
    .registers 5

    .line 5402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;Z)V

    .line 5403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 5405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZ)V

    .line 5406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V

    goto :goto_46

    .line 5409
    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 5411
    :goto_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onThemeChange(I)V

    .line 5412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardLunarMargin()V

    .line 5413
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$39;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
