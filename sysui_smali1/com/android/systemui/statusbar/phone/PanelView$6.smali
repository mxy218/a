.class Lcom/android/systemui/statusbar/phone/PanelView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .registers 3

    .line 1422
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$6;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1425
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    .line 1426
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$6;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1427
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method
