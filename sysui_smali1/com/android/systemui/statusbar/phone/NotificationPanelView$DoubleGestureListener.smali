.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2

    .line 4161
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 4164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, -0x40800000  # -1.0f

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FFF)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3f

    .line 4168
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3e

    .line 4169
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 4170
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "gotosleep by double tap in panel"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_3e
    return v0

    .line 4165
    :cond_3f
    :goto_3f
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string p1, "ignore double tap"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 4179
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingToShowWallpaper(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 4184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p1

    .line 4185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotificationsAndShowLockScreenNotification()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4186
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_4c

    if-nez p1, :cond_4c

    .line 4188
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4190
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->canLongPressToEditPage()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 4191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    const-string v0, "com.meizu.net.nativelockscreen.lockscreenpage"

    invoke-virtual {p1, v0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->launchCustomAffordance(Ljava/lang/String;)V

    .line 4192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    :cond_4c
    return-void
.end method
