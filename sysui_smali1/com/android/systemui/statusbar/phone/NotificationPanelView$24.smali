.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


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

    .line 3830
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFragmentViewCreated$0$NotificationPanelView$24(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_9

    .line 3846
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    :cond_9
    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 3

    .line 3833
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    .line 3834
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 3835
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 3836
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 3837
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 3838
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 3841
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$24$whzJMrYwuXaFNK3EmUhV83R2lPo;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$24$whzJMrYwuXaFNK3EmUhV83R2lPo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3849
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsContainer(Landroid/view/ViewGroup;)V

    .line 3857
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    instance-of p1, p1, Lcom/flyme/systemui/qs/MzQSFragment;

    if-eqz p1, :cond_7c

    .line 3858
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {p1}, Lcom/flyme/systemui/qs/MzQSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 3861
    :cond_7c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 3864
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 3865
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 3

    .line 3874
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-ne p2, p1, :cond_1c

    .line 3875
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->releaseBirghtnessCallback()V

    .line 3876
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel;

    .line 3877
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    :cond_1c
    return-void
.end method
