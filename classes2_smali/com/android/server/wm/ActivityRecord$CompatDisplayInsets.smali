.class Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field final mDisplayHeight:I

.field final mDisplayWidth:I

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mStableInsets:[Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    .line 3878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 3876
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 3879
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 3880
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 3881
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 3882
    const/4 v8, 0x0

    move v9, v8

    :goto_1a
    if-ge v9, v0, :cond_6c

    .line 3883
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v9

    .line 3884
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v9

    .line 3885
    const/4 v2, 0x1

    if-eq v9, v2, :cond_36

    const/4 v3, 0x3

    if-ne v9, v3, :cond_35

    goto :goto_36

    :cond_35
    move v2, v8

    .line 3886
    :cond_36
    :goto_36
    if-eqz v2, :cond_3b

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_3d

    :cond_3b
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    :goto_3d
    move v4, v3

    .line 3887
    if-eqz v2, :cond_43

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_45

    :cond_43
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    :goto_45
    move v5, v2

    .line 3888
    invoke-virtual {p1, v9}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 3889
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    .line 3890
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v7, v2, v9

    move-object v2, v1

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3891
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3892
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2, v9}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3882
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 3894
    :cond_6c
    return-void
.end method


# virtual methods
.method getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V
    .registers 7

    .line 3904
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3905
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3906
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    move p2, v2

    .line 3907
    :goto_17
    if-eqz p2, :cond_1b

    move v3, v0

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 3908
    :goto_1c
    if-eqz p2, :cond_1f

    move v0, v1

    .line 3907
    :cond_1f
    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3909
    return-void
.end method

.method getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 6

    .line 3897
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 3898
    :cond_9
    :goto_9
    if-eqz v0, :cond_e

    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_10

    :cond_e
    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 3899
    :goto_10
    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_17

    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 3900
    :goto_17
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3901
    return-void
.end method
