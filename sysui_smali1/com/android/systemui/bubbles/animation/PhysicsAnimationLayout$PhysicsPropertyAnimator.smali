.class public Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
.super Ljava/lang/Object;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhysicsPropertyAnimator"
.end annotation


# instance fields
.field private mAnimatedProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAssociatedController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

.field private mCurrentPointOnPath:Landroid/graphics/PointF;

.field private final mCurrentPointOnPathXProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPointOnPathYProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDampingRatio:F

.field private mDefaultStartVelocity:F

.field private mEndActionsForProperty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "[",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPropertyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPathAnimator:Landroid/animation/ObjectAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPositionEndActions:[Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPositionStartVelocities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStiffness:F

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V
    .registers 5

    .line 688
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, -0x800001

    .line 606
    iput p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    const-wide/16 v0, 0x0

    .line 609
    iput-wide v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    const/high16 p1, -0x40800000  # -1.0f

    .line 612
    iput p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 615
    iput p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 618
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 625
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    .line 637
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 643
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    .line 656
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    .line 662
    new-instance p1, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    const-string v0, "PathX"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathXProperty:Landroid/util/FloatProperty;

    .line 675
    new-instance p1, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$2;

    const-string v0, "PathY"

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$2;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathYProperty:Landroid/util/FloatProperty;

    .line 689
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 1

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->clearAnimator()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V
    .registers 2

    .line 601
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->setAssociatedController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/graphics/PointF;
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/view/View;
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F
    .registers 1

    .line 601
    iget p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F
    .registers 1

    .line 601
    iget p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F
    .registers 1

    .line 601
    iget p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    return p0
.end method

.method private clearAnimator()V
    .registers 3

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const v0, -0x800001

    .line 1093
    iput v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    const-wide/16 v0, 0x0

    .line 1094
    iput-wide v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    const/high16 v0, -0x40800000  # -1.0f

    .line 1095
    iput v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 1096
    iput v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 1098
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 1099
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    return-void
.end method

.method private clearTranslationValues()V
    .registers 3

    .line 780
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$animateValueForChild$2(Landroidx/dynamicanimation/animation/SpringForce;FFFLandroidx/dynamicanimation/animation/SpringAnimation;F)V
    .registers 6

    .line 984
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 985
    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const p1, -0x800001

    cmpl-float p1, p3, p1

    if-lez p1, :cond_10

    .line 988
    invoke-virtual {p4, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 991
    :cond_10
    invoke-virtual {p0, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 992
    invoke-virtual {p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method static synthetic lambda$start$0([Ljava/lang/Runnable;)V
    .registers 4

    .line 870
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 871
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method static synthetic lambda$startPathAnimation$4(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1046
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setAssociatedController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V
    .registers 2

    .line 1107
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAssociatedController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    return-void
.end method

.method private updateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;F)V
    .registers 4

    if-eqz p2, :cond_1b

    .line 1011
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 1012
    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->access$400(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1013
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    if-nez p1, :cond_15

    return-void

    .line 1019
    :cond_15
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1020
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public varargs alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 4

    .line 702
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method protected varargs animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V
    .registers 21

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v2, p5

    move-object/from16 v4, p9

    if-eqz v1, :cond_42

    .line 962
    iget-object v5, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    move-object v6, p1

    .line 963
    invoke-static {v5, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->access$400(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v4, :cond_20

    .line 965
    new-instance v1, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;[Ljava/lang/Runnable;)V

    invoke-virtual {v9, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 977
    :cond_20
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    if-nez v5, :cond_27

    return-void

    .line 983
    :cond_27
    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$YrUNYDpshnd98P1tIxCkdc37pTc;

    move-object v4, v1

    move/from16 v6, p7

    move/from16 v7, p8

    move v8, p4

    move v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$YrUNYDpshnd98P1tIxCkdc37pTc;-><init>(Landroidx/dynamicanimation/animation/SpringForce;FFFLandroidx/dynamicanimation/animation/SpringAnimation;F)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3f

    .line 996
    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    .line 998
    :cond_3f
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_42
    :goto_42
    return-void
.end method

.method public varargs followAnimatedTargetAlongPath(Landroid/graphics/Path;ILandroid/animation/TimeInterpolator;[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 7

    .line 766
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathXProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathYProperty:Landroid/util/FloatProperty;

    invoke-static {p0, v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 768
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 769
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    iput-object p4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->clearTranslationValues()V

    return-object p0
.end method

.method protected getAnimatedProperties()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation

    .line 936
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 937
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 940
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_19

    .line 941
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 942
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v0
.end method

.method public synthetic lambda$start$1$PhysicsAnimationLayout$PhysicsPropertyAnimator(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .registers 5

    .line 884
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 885
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    if-eqz p1, :cond_1c

    .line 886
    array-length p2, p1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_1c

    aget-object v1, p1, v0

    .line 887
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 p1, 0x0

    .line 891
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public synthetic lambda$startPathAnimation$3$PhysicsAnimationLayout$PhysicsPropertyAnimator()V
    .registers 4

    .line 1040
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->updateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;F)V

    .line 1042
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->updateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;F)V

    return-void
.end method

.method public varargs position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 5

    .line 743
    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Runnable;

    .line 744
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, p3, [Ljava/lang/Runnable;

    .line 745
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public varargs property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 5

    .line 695
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 4

    .line 790
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public varargs scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 4

    .line 801
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public varargs start([Ljava/lang/Runnable;)V
    .registers 13

    .line 855
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAssociatedController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "Bubbs.PAL"

    const-string p1, "Only the active animation controller is allowed to start animations. Use PhysicsAnimationLayout#setActiveController to set the active animation controller."

    .line 856
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 862
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    .line 866
    array-length v2, p1

    if-lez v2, :cond_2e

    new-array v2, v1, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 868
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 869
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAssociatedController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    new-instance v4, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$iuqdgR2C6CC4Qpac87e6S6WedyM;

    invoke-direct {v4, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$iuqdgR2C6CC4Qpac87e6S6WedyM;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setEndActionForMultipleProperties(Ljava/lang/Runnable;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 878
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    if-eqz p1, :cond_62

    .line 879
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 880
    invoke-static {p1, v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->access$300(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 881
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 882
    invoke-static {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->access$300(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    .line 883
    new-instance v3, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 895
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Runnable;

    aput-object v3, v5, v1

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-array v4, v4, [Ljava/lang/Runnable;

    aput-object v3, v4, v1

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :cond_62
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_69

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->startPathAnimation()V

    .line 906
    :cond_69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 909
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_8f

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 910
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 911
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_8e
    return-void

    .line 915
    :cond_8f
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 916
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 919
    :cond_a8
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 920
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 923
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    iget v5, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 924
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-wide v6, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 926
    iget v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    if-ltz v9, :cond_dc

    goto :goto_e0

    :cond_dc
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v1

    :goto_e0
    move v9, v1

    .line 927
    iget v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_e9

    move v0, v1

    goto :goto_ed

    :cond_e9
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v0

    :goto_ed
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 928
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Ljava/lang/Runnable;

    move-object v1, p0

    move v8, v9

    move v9, v0

    .line 920
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    goto/16 :goto_6d

    .line 931
    :cond_fe
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->clearAnimator()V

    return-void
.end method

.method protected startPathAnimation()V
    .registers 7

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, v1, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1035
    iget-wide v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_25

    .line 1036
    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1039
    :cond_25
    new-instance v2, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$VvmQYTYF92KoaeTMVxzFjdA4FFA;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$VvmQYTYF92KoaeTMVxzFjdA4FFA;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    .line 1046
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$1Xv4slF4ncwrmkshsfcHipCSgjk;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$1Xv4slF4ncwrmkshsfcHipCSgjk;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1047
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;-><init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->access$900(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1082
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1085
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->target_animator_tag:I

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1086
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public varargs translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 4

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 714
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public varargs translationY(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 6

    .line 733
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public varargs translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 4

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 727
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-object p0
.end method

.method public withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 2

    .line 821
    iput p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    return-object p0
.end method

.method public withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withStartDelay(J)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 3

    .line 846
    iput-wide p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    return-object p0
.end method

.method public withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
    .registers 2

    .line 830
    iput p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    return-object p0
.end method
