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
    .registers 13
    .param p1, "display"  # Lcom/android/server/wm/DisplayContent;

    .line 4022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4014
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 4020
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 4023
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 4024
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 4025
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 4026
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v2, 0x0

    move v8, v2

    .local v8, "rotation":I
    :goto_1a
    if-ge v8, v0, :cond_6e

    .line 4027
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 4028
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 4029
    const/4 v2, 0x1

    if-eq v8, v2, :cond_36

    const/4 v3, 0x3

    if-ne v8, v3, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :cond_36
    :goto_36
    move v9, v2

    .line 4030
    .local v9, "rotated":Z
    if-eqz v9, :cond_3c

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_3e

    :cond_3c
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    :goto_3e
    move v4, v2

    .line 4031
    .local v4, "dw":I
    if-eqz v9, :cond_44

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_46

    :cond_44
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    :goto_46
    move v5, v2

    .line 4032
    .local v5, "dh":I
    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 4033
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v10

    .line 4034
    .local v10, "cutout":Landroid/view/DisplayCutout;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v7, v2, v8

    move-object v2, v1

    move v3, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 4035
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4036
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 4026
    .end local v4  # "dw":I
    .end local v5  # "dh":I
    .end local v9  # "rotated":Z
    .end local v10  # "cutout":Landroid/view/DisplayCutout;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 4038
    .end local v8  # "rotation":I
    :cond_6e
    return-void
.end method


# virtual methods
.method getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "outBounds"  # Landroid/graphics/Rect;
    .param p2, "orientation"  # I

    .line 4048
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4049
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4050
    .local v1, "shortSide":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v2

    .line 4051
    .local v3, "isLandscape":Z
    :goto_17
    if-eqz v3, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 4052
    :goto_1c
    if-eqz v3, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v0

    .line 4051
    :goto_21
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4053
    return-void
.end method

.method getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "outBounds"  # Landroid/graphics/Rect;
    .param p2, "rotation"  # I

    .line 4041
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 4042
    .local v0, "rotated":Z
    :cond_9
    :goto_9
    if-eqz v0, :cond_e

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_10

    :cond_e
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 4043
    .local v2, "dw":I
    :goto_10
    if-eqz v0, :cond_15

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_17

    :cond_15
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 4044
    .local v3, "dh":I
    :goto_17
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4045
    return-void
.end method
