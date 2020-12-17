.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$1;
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

    .line 4251
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 4254
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
