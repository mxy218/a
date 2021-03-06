.class public Landroidx/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingMax:I

.field private mPaddingMin:I

.field private mPreferredKeyLine:I

.field private mReversedFlow:Z

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    const/high16 v0, 0x42480000  # 50.0f

    .line 61
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 80
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->reset()V

    .line 81
    iput-object p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final calculateKeyline()I
    .registers 5

    .line 196
    iget-boolean v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v1, 0x42c80000  # 100.0f

    const/high16 v2, -0x40800000  # -1.0f

    if-nez v0, :cond_1e

    .line 197
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_d

    goto :goto_10

    .line 200
    :cond_d
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    add-int/2addr v0, v3

    .line 202
    :goto_10
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_35

    .line 203
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    goto :goto_35

    .line 206
    :cond_1e
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_27

    .line 207
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    sub-int/2addr v3, v0

    move v0, v3

    goto :goto_28

    :cond_27
    neg-int v0, v0

    .line 211
    :goto_28
    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_35

    .line 212
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v0, p0

    :cond_35
    :goto_35
    return v0
.end method

.method final calculateScrollToKeyLine(II)I
    .registers 3

    sub-int/2addr p1, p2

    return p1
.end method

.method public final getClientSize()I
    .registers 3

    .line 191
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMaxScroll()I
    .registers 1

    .line 148
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return p0
.end method

.method public final getMinScroll()I
    .registers 1

    .line 136
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return p0
.end method

.method public final getPaddingMax()I
    .registers 1

    .line 187
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return p0
.end method

.method public final getPaddingMin()I
    .registers 1

    .line 183
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    return p0
.end method

.method public final getScroll(I)I
    .registers 9

    .line 307
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    .line 308
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v1

    .line 309
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 310
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v3

    if-nez v2, :cond_39

    .line 312
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v4, v1, v4

    .line 313
    iget-boolean v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_21

    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_39

    goto :goto_27

    :cond_21
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_39

    :goto_27
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v6, p1, v5

    if-gt v6, v4, :cond_39

    .line 317
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v5, p1

    if-nez v3, :cond_37

    .line 319
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v5, p0, :cond_37

    goto :goto_38

    :cond_37
    move p0, v5

    :goto_38
    return p0

    :cond_39
    if-nez v3, :cond_64

    sub-int v3, v0, v1

    .line 326
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v3, v4

    .line 327
    iget-boolean v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_4b

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_64

    goto :goto_51

    :cond_4b
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_64

    :goto_51
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int v5, v4, p1

    if-gt v5, v3, :cond_64

    .line 331
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, p1

    sub-int/2addr v4, v0

    if-nez v2, :cond_62

    .line 333
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v4, p0, :cond_62

    goto :goto_63

    :cond_62
    move p0, v4

    :goto_63
    return p0

    .line 340
    :cond_64
    invoke-virtual {p0, p1, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p0

    return p0
.end method

.method public final getSize()I
    .registers 1

    .line 174
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    return p0
.end method

.method public final invalidateScrollMax()V
    .registers 2

    const v0, 0x7fffffff

    .line 152
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 153
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return-void
.end method

.method public final invalidateScrollMin()V
    .registers 2

    const/high16 v0, -0x80000000

    .line 140
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 141
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return-void
.end method

.method public final isMaxUnknown()Z
    .registers 2

    .line 166
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isMinUnknown()Z
    .registers 2

    .line 162
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method final isPreferKeylineOverHighEdge()Z
    .registers 1

    .line 105
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method final isPreferKeylineOverLowEdge()Z
    .registers 2

    .line 109
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method reset()V
    .registers 2

    const/high16 v0, -0x80000000

    .line 157
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const v0, 0x7fffffff

    .line 158
    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method

.method public final setPadding(II)V
    .registers 3

    .line 178
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 179
    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return-void
.end method

.method public final setReversedFlow(Z)V
    .registers 2

    .line 344
    iput-boolean p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    return-void
.end method

.method public final setSize(I)V
    .registers 2

    .line 170
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    return-void
.end method

.method public final setWindowAlignment(I)V
    .registers 2

    .line 89
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateMinMax(IIII)V
    .registers 9

    .line 230
    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 231
    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 232
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result p1

    .line 233
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result p2

    .line 234
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    .line 235
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    if-nez v0, :cond_35

    .line 237
    iget-boolean v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v2, :cond_21

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    goto :goto_27

    :cond_21
    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2f

    .line 240
    :goto_27
    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_35

    .line 243
    :cond_2f
    invoke-virtual {p0, p3, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_35
    :goto_35
    if-nez v1, :cond_57

    .line 247
    iget-boolean v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v2, :cond_42

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_51

    goto :goto_48

    :cond_42
    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_51

    .line 250
    :goto_48
    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    iput v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_57

    .line 253
    :cond_51
    invoke-virtual {p0, p4, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_57
    :goto_57
    if-nez v1, :cond_e6

    if-nez v0, :cond_e6

    .line 257
    iget-boolean p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez p1, :cond_a3

    .line 258
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_82

    .line 259
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 262
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 263
    invoke-virtual {p0, p4, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p2

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 266
    :cond_77
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_e6

    :cond_82
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e6

    .line 268
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 271
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 272
    invoke-virtual {p0, p3, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p2

    .line 271
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 275
    :cond_98
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_e6

    .line 278
    :cond_a3
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c6

    .line 279
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 282
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 283
    invoke-virtual {p0, p3, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p2

    .line 282
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 286
    :cond_bb
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_e6

    :cond_c6
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e6

    .line 288
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 291
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 292
    invoke-virtual {p0, p4, p2}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result p2

    .line 291
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 295
    :cond_dc
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_e6
    :goto_e6
    return-void
.end method
