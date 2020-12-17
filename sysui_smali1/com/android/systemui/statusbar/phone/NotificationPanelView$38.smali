.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 5383
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 5386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 5387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    .line 5388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onHide()V

    .line 5391
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 5392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$38;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_31
    return-void
.end method
