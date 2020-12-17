.class public Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
.super Ljava/lang/Object;
.source "PathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorBuilder"
.end annotation


# instance fields
.field private final anim:Landroid/animation/ObjectAnimator;

.field private delay:I

.field private duration:I

.field private interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/eftimoff/androipathview/PathView;)V
    .registers 4

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15e

    .line 502
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 534
    fill-array-data v0, :array_1a

    const-string/jumbo v1, "percentage"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    return-void

    :array_1a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public duration(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .registers 2

    .line 553
    iput p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    return-object p0
.end method

.method public getObjectAnimator()Landroid/animation/ObjectAnimator;
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 543
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public varargs setFloatValue([F)V
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 614
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 616
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
