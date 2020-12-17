.class public Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
.super Ljava/lang/Object;
.source "PathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorSetBuilder"
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final animators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private delay:I

.field private duration:I

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eftimoff/androipathview/PathView;)V
    .registers 8

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 680
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->duration:I

    const/4 v0, 0x0

    .line 688
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->delay:I

    .line 692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    .line 708
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    .line 720
    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView;->access$500(Lcom/eftimoff/androipathview/PathView;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->paths:Ljava/util/List;

    .line 721
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 722
    invoke-virtual {v2, p1}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->setAnimationStepListener(Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v4, 0x1

    .line 723
    invoke-virtual {v2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->getLength()F

    move-result v5

    aput v5, v3, v4

    const-string v4, "length"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 724
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 726
    :cond_4c
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method
