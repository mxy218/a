.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;
.super Ljava/lang/Object;
.source "PopNotificationView.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSwipeHelper"
.end annotation


# instance fields
.field private mConsuming:Z

.field private mFirstX:F

.field private mFirstY:F

.field private final mTouchSlop:F

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;F)V
    .registers 3

    .line 633
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    return-void
.end method

.method static synthetic access$1202(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;Z)Z
    .registers 2

    .line 626
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_66

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_75

    .line 649
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mFirstY:F

    sub-float/2addr v0, v1

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mFirstX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 651
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 652
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    if-nez v3, :cond_75

    cmpg-float v1, v1, v2

    if-gez v1, :cond_75

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_75

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_41

    .line 655
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper$1;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->startFlipOutAnimation(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_62

    .line 664
    :cond_41
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[foree] onInterceptTouchEvent: pop notification snooze"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1700(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->snooze(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->hidePopNotificationView()V

    :goto_62
    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_75

    .line 642
    :cond_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mFirstX:F

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mFirstY:F

    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    .line 678
    :cond_75
    :goto_75
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    if-eqz v0, :cond_95

    .line 679
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeSwipeHelper onInterceptTouchEvent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_95
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 686
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
