.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


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

    .line 429
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 432
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
