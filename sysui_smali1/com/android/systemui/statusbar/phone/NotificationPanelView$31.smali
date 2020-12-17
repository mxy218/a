.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingAnimation()V
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

    .line 4715
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 4718
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 4719
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    const-string p1, "com.meizu.net.nativelockscreen.variedpage"

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->launchCustomAffordance(Ljava/lang/String;)V

    return-void
.end method
