.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;


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

    .line 5324
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_72

    .line 5328
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne v4, v2, :cond_ea

    .line 5329
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_2c

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5330
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_63

    .line 5331
    :cond_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5332
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 5333
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5334
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5335
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    .line 5336
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 5337
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5338
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_ea

    .line 5340
    :cond_63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 5341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    goto/16 :goto_ea

    .line 5348
    :cond_72
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBarState:I

    if-ne v4, v2, :cond_ea

    .line 5349
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_99

    :cond_89
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5350
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShadeMode()Z

    move-result p1

    if-eqz p1, :cond_df

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_df

    .line 5351
    :cond_99
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5352
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v4}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 5353
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 5354
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 5355
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 5356
    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000  # 1.0f

    .line 5357
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5358
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    .line 5359
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 5360
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5362
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v0

    .line 5361
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_e6

    .line 5364
    :cond_df
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v4}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 5367
    :goto_e6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$36;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_ea
    :goto_ea
    return-void
.end method
