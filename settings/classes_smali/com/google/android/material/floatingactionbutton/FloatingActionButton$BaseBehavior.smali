.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private autoHideEnabled:Z

.field private internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 954
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 955
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 959
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 960
    sget-object v0, Lcom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    .line 961
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 962
    sget p2, Lcom/google/android/material/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v0, 0x1

    .line 963
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 966
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1016
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1017
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 1018
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private offsetIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 8

    .line 1134
    iget-object p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    if-eqz p0, :cond_59

    .line 1136
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_59

    .line 1138
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1143
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_27

    .line 1145
    iget v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_34

    .line 1146
    :cond_27
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gt v1, v2, :cond_33

    .line 1148
    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_34

    :cond_33
    move v1, v3

    .line 1150
    :goto_34
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v4

    if-lt v2, p1, :cond_44

    .line 1152
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    .line 1153
    :cond_44
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getTop()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gt p1, v0, :cond_4f

    .line 1155
    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int v3, p0

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_54

    .line 1159
    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_54
    if-eqz v1, :cond_59

    .line 1162
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_59
    return-void
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .registers 5

    .line 1030
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1031
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return v1

    .line 1035
    :cond_c
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p0, p1, :cond_17

    return v1

    .line 1042
    :cond_17
    invoke-virtual {p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getUserSetVisibility()I

    move-result p0

    if-eqz p0, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .registers 6

    .line 1052
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1056
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    .line 1057
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 1061
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 1062
    invoke-static {p1, p2, v0}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1064
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result p2

    if-gt p1, p2, :cond_26

    .line 1066
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_2b

    .line 1069
    :cond_26
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z
    .registers 6

    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1079
    :cond_8
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_23

    .line 1081
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_28

    .line 1083
    :cond_23
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    :goto_28
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 4
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 945
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1119
    iget-object p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 1121
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLeft()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 1122
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 1123
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1124
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBottom()I

    move-result p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    .line 1120
    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 2
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 995
    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_8

    const/16 p0, 0x50

    .line 998
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_8
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 945
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;)Z
    .registers 5

    .line 1005
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_a

    .line 1008
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    goto :goto_13

    .line 1009
    :cond_a
    invoke-static {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1010
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 945
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z

    move-result p0

    return p0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Z
    .registers 9

    .line 1092
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2e

    .line 1094
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1095
    instance-of v4, v3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_1e

    .line 1096
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    .line 1099
    :cond_1e
    invoke-static {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1100
    invoke-direct {p0, v3, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1106
    :cond_2e
    :goto_2e
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->offsetIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setInternalAutoHideListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1025
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    return-void
.end method