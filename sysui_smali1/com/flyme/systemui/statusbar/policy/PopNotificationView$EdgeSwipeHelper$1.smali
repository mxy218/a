.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;)V
    .registers 2

    .line 655
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;->this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 658
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 660
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;->this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    iget-object p1, p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;->this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1700(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->snooze(Ljava/lang/String;)V

    return-void
.end method
