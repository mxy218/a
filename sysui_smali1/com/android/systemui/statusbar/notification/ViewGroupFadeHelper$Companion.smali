.class public final Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;
.super Ljava/lang/Object;
.source "ViewGroupFadeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewGroupFadeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewGroupFadeHelper.kt\ncom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion\n*L\n1#1,148:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J2\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;",
        "",
        "()V",
        "visibilityIncluder",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "fadeOutAllChildrenExcept",
        "",
        "root",
        "Landroid/view/ViewGroup;",
        "excludedView",
        "duration",
        "",
        "endRunnable",
        "Ljava/lang/Runnable;",
        "gatherViews",
        "",
        "shouldInclude",
        "reset",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;-><init>()V

    return-void
.end method

.method private final gatherViews(Landroid/view/ViewGroup;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_b
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_48

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_15
    if-ge v1, v2, :cond_3a

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "child"

    .line 95
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_37

    .line 96
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 99
    :cond_3a
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_48

    .line 103
    :cond_41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_48
    :goto_48
    return-object p0
.end method


# virtual methods
.method public final fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "excludedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->access$getVisibilityIncluder$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;->gatherViews(Landroid/view/ViewGroup;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object p0

    .line 51
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getHasOverlappingRendering()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 55
    sget v1, Lcom/android/systemui/R$id;->view_group_fade_helper_hardware_layer:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_16

    :cond_3e
    new-array p2, v1, [F

    .line 59
    fill-array-data p2, :array_7a

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-string/jumbo v0, "this"

    .line 60
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;

    move-object v1, v0

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$1;-><init>(JLandroid/view/ViewGroup;Ljava/util/Set;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;-><init>(JLandroid/view/ViewGroup;Ljava/util/Set;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    sget p3, Lcom/android/systemui/R$id;->view_group_fade_helper_modified_views:I

    invoke-virtual {p1, p3, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 84
    sget p0, Lcom/android/systemui/R$id;->view_group_fade_helper_animator:I

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void

    nop

    :array_7a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final reset(Landroid/view/ViewGroup;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "root"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget p0, Lcom/android/systemui/R$id;->view_group_fade_helper_modified_views:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 116
    sget v0, Lcom/android/systemui/R$id;->view_group_fade_helper_animator:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz p0, :cond_85

    if-nez v0, :cond_1c

    goto :goto_85

    .line 121
    :cond_1c
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 123
    sget v0, Lcom/android/systemui/R$id;->view_group_fade_helper_previous_value_tag:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 126
    sget v3, Lcom/android/systemui/R$id;->view_group_fade_helper_restore_tag:I

    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-nez v3, :cond_43

    goto :goto_2b

    .line 130
    :cond_43
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 132
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 135
    :cond_54
    sget v3, Lcom/android/systemui/R$id;->view_group_fade_helper_hardware_layer:I

    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    .line 136
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 138
    sget v3, Lcom/android/systemui/R$id;->view_group_fade_helper_hardware_layer:I

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 140
    :cond_70
    sget v3, Lcom/android/systemui/R$id;->view_group_fade_helper_restore_tag:I

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2b

    .line 142
    :cond_76
    sget p0, Lcom/android/systemui/R$id;->view_group_fade_helper_modified_views:I

    invoke-virtual {p1, p0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 143
    sget p0, Lcom/android/systemui/R$id;->view_group_fade_helper_previous_value_tag:I

    invoke-virtual {p1, p0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 144
    sget p0, Lcom/android/systemui/R$id;->view_group_fade_helper_animator:I

    invoke-virtual {p1, p0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_85
    :goto_85
    return-void
.end method
