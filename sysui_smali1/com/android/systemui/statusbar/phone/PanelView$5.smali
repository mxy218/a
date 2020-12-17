.class Lcom/android/systemui/statusbar/phone/PanelView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .registers 3

    .line 1366
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 1371
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1376
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    if-eqz p1, :cond_10

    .line 1377
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    .line 1378
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 1380
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    :goto_17
    return-void
.end method
