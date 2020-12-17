.class public Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScrollNonTouch:Z

.field private mDidAcceptNestedScrollTouch:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 2778
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2718
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 p2, -0x1

    .line 2740
    iput p2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    iput p2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2782
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2718
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v1, -0x1

    .line 2740
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2784
    sget-object v2, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2787
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2790
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2792
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2796
    sget v3, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2799
    sget v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2800
    sget v1, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2802
    sget v0, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2804
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v0, :cond_68

    .line 2805
    sget v0, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2808
    :cond_68
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2810
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz p1, :cond_72

    .line 2812
    invoke-virtual {p1, p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    :cond_72
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3

    .line 2817
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2718
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    .line 2740
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 2825
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2718
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    .line 2740
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 2821
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2718
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    const/4 v0, -0x1

    .line 2740
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .registers 7

    .line 3048
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3049
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    if-ne v0, p2, :cond_22

    .line 3051
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 3052
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-void

    .line 3055
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3060
    :cond_22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_26
    if-eq v2, p2, :cond_4b

    if-eqz v2, :cond_4b

    if-ne v2, p1, :cond_3f

    .line 3064
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 3065
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-void

    .line 3068
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3071
    :cond_3f
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_46

    .line 3072
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 3062
    :cond_46
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_26

    .line 3075
    :cond_4b
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    return-void

    .line 3077
    :cond_4e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3078
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-void

    .line 3081
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to anchor view "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .registers 3

    .line 3117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3118
    iget p1, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    if-eqz p1, :cond_19

    .line 3119
    iget p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 3120
    invoke-static {p0, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .registers 7

    .line 3093
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 3097
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3098
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_12
    if-eq v1, p2, :cond_2b

    if-eqz v1, :cond_25

    if-ne v1, p1, :cond_19

    goto :goto_25

    .line 3105
    :cond_19
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_20

    .line 3106
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 3100
    :cond_20
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_12

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 3102
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return v2

    .line 3109
    :cond_2b
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method checkAnchorChanged()Z
    .registers 2

    .line 2912
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_b

    iget p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .line 3007
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_1b

    .line 3008
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz p0, :cond_19

    .line 3009
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method didBlockInteraction()Z
    .registers 2

    .line 2923
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 2924
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2926
    :cond_7
    iget-boolean p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return p0
.end method

.method findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 3032
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 p1, 0x0

    .line 3033
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object p1

    .line 3037
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3038
    :cond_15
    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 3040
    :cond_18
    iget-object p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2861
    iget-object p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    return-object p0
.end method

.method getChangedAfterNestedScroll()Z
    .registers 1

    .line 2987
    iget-boolean p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return p0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .registers 1

    .line 2904
    iget-object p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .registers 5

    .line 2941
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2945
    :cond_6
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_f

    .line 2946
    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return p1
.end method

.method isNestedScrollAccepted(I)Z
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 2981
    :cond_7
    iget-boolean p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    return p0

    .line 2979
    :cond_a
    iget-boolean p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    return p0
.end method

.method resetChangedAfterNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 2995
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return-void
.end method

.method resetNestedScroll(I)V
    .registers 3

    const/4 v0, 0x0

    .line 2962
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    return-void
.end method

.method resetTouchBehaviorTracking()V
    .registers 2

    const/4 v0, 0x0

    .line 2958
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return-void
.end method

.method public setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .registers 3
    .param p1  # Landroid/support/design/widget/CoordinatorLayout$Behavior;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2874
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_16

    if-eqz v0, :cond_9

    .line 2877
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2880
    :cond_9
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    const/4 v0, 0x0

    .line 2881
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2882
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz p1, :cond_16

    .line 2886
    invoke-virtual {p1, p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    :cond_16
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .registers 2

    .line 2991
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 2896
    iget-object p0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method setNestedScrollAccepted(IZ)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 2971
    :cond_6
    iput-boolean p2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_b

    .line 2968
    :cond_9
    iput-boolean p2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    :goto_b
    return-void
.end method
