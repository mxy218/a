.class Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->startPathAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

.field final synthetic val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

.field final synthetic val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

.field final synthetic val$updatePhysicsAnims:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Runnable;)V
    .registers 5

    .line 1047
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1075
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 25

    move-object/from16 v0, p0

    .line 1050
    iget-object v1, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 1052
    invoke-static {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$500(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1053
    invoke-static {v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$200(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1054
    invoke-static {v5}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$600(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v5

    .line 1056
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_2a

    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    goto :goto_30

    :cond_2a
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v6

    :goto_30
    move v8, v6

    .line 1057
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_42

    .line 1058
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    goto :goto_48

    .line 1059
    :cond_42
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v6

    :goto_48
    move v9, v6

    const/4 v12, 0x0

    new-array v10, v12, [Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    .line 1050
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    .line 1061
    iget-object v13, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 1063
    invoke-static {v13}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$500(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/view/View;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1064
    invoke-static {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$200(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1065
    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$600(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v17

    const-wide/16 v18, 0x0

    .line 1067
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_7a

    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    goto :goto_80

    :cond_7a
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v2

    :goto_80
    move/from16 v20, v2

    .line 1068
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_93

    .line 1069
    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v0

    goto :goto_99

    .line 1070
    :cond_93
    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v0

    :goto_99
    move/from16 v21, v0

    new-array v0, v12, [Ljava/lang/Runnable;

    move/from16 v16, v1

    move-object/from16 v22, v0

    .line 1061
    invoke-virtual/range {v13 .. v22}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    return-void
.end method
