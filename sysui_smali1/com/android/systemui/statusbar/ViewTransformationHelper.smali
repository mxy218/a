.class public Lcom/android/systemui/statusbar/ViewTransformationHelper;
.super Ljava/lang/Object;
.source "ViewTransformationHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;
.implements Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    }
.end annotation


# static fields
.field private static final TAG_CONTAINS_TRANSFORMED_VIEW:I


# instance fields
.field private mCustomTransformations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformedViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTransformationAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget v0, Lcom/android/systemui/R$id;->contains_transformed_view:I

    sput v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->TAG_CONTAINS_TRANSFORMED_VIEW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    return-void
.end method

.method private abortTransformations()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 202
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 204
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 205
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    :cond_27
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ViewTransformationHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->abortTransformations()V

    return-void
.end method


# virtual methods
.method public addRemainingTransformTypes(Landroid/view/View;)V
    .registers 8

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 219
    :goto_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v3, v4, :cond_29

    .line 220
    sget v4, Lcom/android/systemui/statusbar/ViewTransformationHelper;->TAG_CONTAINS_TRANSFORMED_VIEW:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_12

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 224
    :cond_2c
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_34
    :goto_34
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 228
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 229
    sget v2, Lcom/android/systemui/statusbar/ViewTransformationHelper;->TAG_CONTAINS_TRANSFORMED_VIEW:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_55

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_55

    .line 235
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    goto :goto_34

    .line 239
    :cond_55
    sget v2, Lcom/android/systemui/statusbar/ViewTransformationHelper;->TAG_CONTAINS_TRANSFORMED_VIEW:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 240
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 241
    check-cast p1, Landroid/view/ViewGroup;

    move v2, v1

    .line 242
    :goto_6a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 243
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_7a
    return-void
.end method

.method public addTransformedView(ILandroid/view/View;)V
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllTransformingViews()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1b

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    .line 63
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnimating()Z
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public reset()V
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public resetTransformedView(Landroid/view/View;)V
    .registers 2

    .line 250
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    const/4 p1, 0x1

    .line 251
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void
.end method

.method public setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V
    .registers 3

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 195
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_11

    :cond_2f
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 134
    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 168
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    if-eqz v3, :cond_34

    .line 169
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 171
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 174
    :cond_34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 176
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 177
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_48

    .line 179
    :cond_45
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 181
    :goto_48
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    :cond_4c
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    if-eqz v3, :cond_34

    .line 112
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 114
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 117
    :cond_34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 119
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_48

    .line 122
    :cond_45
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 124
    :goto_48
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    :cond_4c
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 71
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 73
    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
