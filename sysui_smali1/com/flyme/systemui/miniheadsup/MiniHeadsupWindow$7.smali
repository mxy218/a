.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateShow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V
    .registers 3

    .line 498
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->val$startY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 501
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    .line 502
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 503
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->val$startY:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 504
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$100(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
