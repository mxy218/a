.class public Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 50
    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionLeftPadding:I

    .line 54
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionTopPadding:I

    .line 55
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionRightPadding:I

    .line 56
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionBottomPadding:I

    .line 76
    :try_start_13
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 77
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_28
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 144
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 146
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->setSelectorEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->updateSelectorStateCompat()V

    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 6

    .line 161
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4c

    .line 162
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4c

    .line 166
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 167
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    if-nez p0, :cond_46

    if-eqz p2, :cond_2e

    const/4 p0, 0x0

    .line 169
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_23
    if-ge p0, v2, :cond_3f

    .line 170
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3f

    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_2e
    add-int/lit8 p0, v2, -0x1

    .line 174
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_34
    if-ltz p0, :cond_3f

    .line 175
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3f

    add-int/lit8 p0, p0, -0x1

    goto :goto_34

    :cond_3f
    if-ltz p0, :cond_45

    if-lt p0, v2, :cond_44

    goto :goto_45

    :cond_44
    return p0

    :cond_45
    :goto_45
    return v1

    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    return p1

    :cond_4c
    :goto_4c
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mMotionPosition:I

    .line 124
    :goto_17
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .registers 8

    .line 222
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 227
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 228
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 234
    :try_start_31
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_56

    .line 236
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_56

    .line 238
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 7

    .line 204
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    if-eqz v3, :cond_13

    .line 207
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 210
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    if-eqz v3, :cond_30

    .line 213
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 216
    invoke-virtual {p0}, Landroid/widget/ListView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    invoke-static {v0, p2, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_30
    return-void
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 5

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    .line 197
    invoke-static {p0, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 85
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;

    invoke-direct {v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelector:Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;

    .line 86
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelector:Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1a

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 93
    :cond_1a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionLeftPadding:I

    .line 94
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionTopPadding:I

    .line 95
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionRightPadding:I

    .line 96
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelectionBottomPadding:I

    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->mSelector:Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;

    if-eqz p0, :cond_7

    .line 360
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected updateSelectorStateCompat()V
    .registers 3

    .line 128
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 129
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/ListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 130
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_13
    return-void
.end method
