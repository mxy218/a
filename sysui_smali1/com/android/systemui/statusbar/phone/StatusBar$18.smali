.class Lcom/android/systemui/statusbar/phone/StatusBar$18;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->mzMakeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$nightModeController:Lcom/flyme/systemui/statusbar/policy/NightModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/flyme/systemui/statusbar/policy/NightModeController;)V
    .registers 3

    .line 5186
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->val$nightModeController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNightModeChanged(Z)V
    .registers 5

    .line 5189
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/NightModeUtils;->setInNightMode(Z)V

    .line 5190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onNightModeChanged(Z)V

    .line 5191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->val$nightModeController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isSwitching()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 5192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 5193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_3f

    .line 5194
    :cond_29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardNormalMode()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 5195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    goto :goto_3f

    .line 5197
    :cond_3a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 5199
    :goto_3f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 5200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    :cond_54
    return-void
.end method
