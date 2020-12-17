.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setupFilterPanel()V
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

    .line 4243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onShowingPanel$0$NotificationPanelView$25()V
    .registers 1

    .line 4274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClearAll()V

    return-void
.end method

.method public onShowingPanel(Z)V
    .registers 7

    .line 4246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    if-eqz p1, :cond_b9

    .line 4248
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4249
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4250
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;)V

    .line 4251
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4257
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4260
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4261
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;)V

    .line 4262
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4268
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4271
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4272
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4273
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$25$rDQFkZJCiCch7h3p_6EIDEWIguQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$25$rDQFkZJCiCch7h3p_6EIDEWIguQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;)V

    .line 4274
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;)V

    .line 4275
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4280
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->forceUpdateNotifications()V

    goto/16 :goto_15f

    .line 4283
    :cond_b9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4284
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4285
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4286
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    .line 4287
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4288
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4291
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4292
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4293
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4294
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v1

    if-nez v1, :cond_134

    goto :goto_136

    :cond_134
    const/16 v0, 0x8

    :goto_136
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4296
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4297
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4298
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClearAll()V

    .line 4299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->forceUpdateNotifications()V

    :goto_15f
    return-void
.end method
