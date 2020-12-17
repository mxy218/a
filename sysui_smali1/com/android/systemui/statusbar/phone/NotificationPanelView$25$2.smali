.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->onShowingPanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;)V
    .registers 2

    .line 4262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$2;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 4265
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$2;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
