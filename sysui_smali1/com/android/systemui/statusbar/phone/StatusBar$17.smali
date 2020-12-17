.class Lcom/android/systemui/statusbar/phone/StatusBar$17;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 5167
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotStateChanged(Z)V
    .registers 5

    if-eqz p1, :cond_40

    .line 5171
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShadeMode()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 5172
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_2b

    .line 5173
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardNormalMode()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 5174
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    goto :goto_2b

    .line 5176
    :cond_26
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 5178
    :goto_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 5179
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->showCustomize(Z)V

    :cond_40
    return-void
.end method
