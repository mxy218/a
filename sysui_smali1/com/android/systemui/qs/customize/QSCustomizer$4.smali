.class Lcom/android/systemui/qs/customize/QSCustomizer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 336
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 337
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 327
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 328
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 330
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 331
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method
