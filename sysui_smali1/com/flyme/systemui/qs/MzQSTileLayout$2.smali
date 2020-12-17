.class Lcom/flyme/systemui/qs/MzQSTileLayout$2;
.super Ljava/lang/Object;
.source "MzQSTileLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;->showQsCustomize(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

.field final synthetic val$qsPanelNormalModeHeight:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V
    .registers 3

    .line 390
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iput p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->val$qsPanelNormalModeHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 393
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 394
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->val$qsPanelNormalModeHeight:I

    invoke-static {v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$300(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$400(Lcom/flyme/systemui/qs/MzQSTileLayout;FII)I

    move-result p1

    invoke-static {v0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$202(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    .line 396
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
