.class public final Lcom/android/systemui/qs/QSHeaderInfoLayout;
.super Landroid/widget/FrameLayout;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0001!B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J0\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0014J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0014J,\u0010\u001c\u001a\u00020\u0007*\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0014H\u0002R\u000e\u0010\n\u001a\u00020\u000bX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX.¢\u0006\u0002\n\u0000¨\u0006\""
    }
    d2 = {
        "Lcom/android/systemui/qs/QSHeaderInfoLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "alarmContainer",
        "Landroid/view/View;",
        "location",
        "Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;",
        "ringerContainer",
        "statusSeparator",
        "onFinishInflate",
        "",
        "onLayout",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "layoutView",
        "pWidth",
        "pHeight",
        "offset",
        "RTL",
        "Location",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private alarmContainer:Landroid/view/View;

.field private final location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

.field private ringerContainer:Landroid/view/View;

.field private statusSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    .line 38
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final layoutView(Landroid/view/View;IIIZ)I
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p2, p4, v1, p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->setLocationFromOffset(IIIZ)V

    .line 70
    iget-object p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getLeft()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getRight()I

    move-result p0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p0, p3}, Landroid/view/View;->layout(IIII)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.alarm_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    .line 49
    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ringer_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    .line 50
    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.status_separator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string/jumbo v1, "statusSeparator"

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_14

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_41

    .line 57
    :cond_14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    sub-int p2, p4, p2

    sub-int p3, p5, p3

    const/4 p1, 0x0

    .line 62
    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v5, :cond_4c

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p1, p4

    .line 63
    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-eqz v5, :cond_48

    move-object v4, p0

    move v6, p2

    move v7, p3

    move v8, p1

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p4, p1

    .line 64
    iget-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz p1, :cond_42

    move p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    :goto_41
    return-void

    :cond_42
    const-string p0, "ringerContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4c
    const-string p0, "alarmContainer"

    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_52
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    .line 76
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 75
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string/jumbo v2, "statusSeparator"

    const/4 v3, 0x0

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9d

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    const-string v4, "alarmContainer"

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 85
    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-eqz v5, :cond_95

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 86
    iget-object v5, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    const-string v6, "ringerContainer"

    if-eqz v5, :cond_91

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int/2addr v7, v2

    .line 88
    div-int/lit8 v2, v7, 0x2

    if-ge v0, v2, :cond_5b

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz v2, :cond_57

    sub-int/2addr v7, v0

    .line 92
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 89
    invoke-virtual {p0, v2, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_9d

    .line 90
    :cond_57
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5b
    if-ge v5, v2, :cond_72

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v2, :cond_6e

    sub-int/2addr v7, v5

    .line 98
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 96
    invoke-virtual {p0, v2, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_9d

    :cond_6e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_72
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 104
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 102
    invoke-virtual {p0, v0, v4, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-eqz v0, :cond_89

    .line 108
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 106
    invoke-virtual {p0, v0, v1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_9d

    .line 107
    :cond_89
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_8d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_91
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_95
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_99
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_9d
    :goto_9d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void

    .line 83
    :cond_a5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
