.class public Lcom/android/server/wm/utils/WmDisplayCutout;
.super Ljava/lang/Object;
.source "WmDisplayCutout.java"


# static fields
.field public static final NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;


# instance fields
.field private final mFrameSize:Landroid/util/Size;

.field private final mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    sput-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 42
    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 6

    .line 115
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_36

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    .line 117
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    .line 119
    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v0

    .line 120
    const/16 v1, 0x50

    invoke-static {p0, p1, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result p0

    .line 121
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 122
    :cond_36
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_69

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    .line 126
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result v0

    .line 127
    const/4 v1, 0x5

    invoke-static {p0, p1, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I

    move-result p0

    .line 128
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v2, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 130
    :cond_69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cutout="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4

    .line 46
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-eq p0, v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1e

    .line 50
    :cond_b
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 51
    invoke-static {v0, p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object p2

    .line 47
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method private static findInsetForSide(Landroid/util/Size;Ljava/util/List;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;I)I"
        }
    .end annotation

    .line 136
    nop

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_74

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 140
    const/4 v4, 0x3

    if-eq p2, v4, :cond_67

    const/4 v4, 0x5

    if-eq p2, v4, :cond_53

    const/16 v4, 0x30

    if-eq p2, v4, :cond_48

    const/16 v4, 0x50

    if-ne p2, v4, :cond_31

    .line 147
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_71

    .line 148
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_71

    .line 162
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown gravity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_48
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_71

    .line 143
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_71

    .line 157
    :cond_53
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_71

    .line 158
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_71

    .line 152
    :cond_67
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_71

    .line 153
    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 138
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 165
    :cond_74
    return v2
.end method


# virtual methods
.method public calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    if-nez v0, :cond_5

    .line 85
    return-object p0

    .line 87
    :cond_5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 89
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_22

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_22

    if-nez v0, :cond_22

    if-nez v1, :cond_22

    .line 90
    return-object p0

    .line 92
    :cond_22
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    if-lt v2, v3, :cond_49

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 93
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    if-lt v2, v3, :cond_49

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 94
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lt v0, v2, :cond_49

    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 95
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lt v1, v2, :cond_49

    .line 96
    sget-object p1, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p1

    .line 98
    :cond_49
    iget-object v2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 99
    return-object p0

    .line 101
    :cond_52
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    return-object p1
.end method

.method public computeSafeInsets(II)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 174
    instance-of v0, p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 175
    return v1

    .line 177
    :cond_6
    check-cast p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    iget-object v2, p1, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    iget-object p1, p1, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 179
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 178
    :goto_1f
    return v1
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inset(IIII)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 8

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    if-ne v1, v0, :cond_b

    .line 65
    return-object p0

    .line 68
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    if-nez v1, :cond_11

    const/4 p1, 0x0

    goto :goto_25

    :cond_11
    new-instance v2, Landroid/util/Size;

    .line 69
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p3

    iget-object p1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 70
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p4

    invoke-direct {v2, v1, p1}, Landroid/util/Size;-><init>(II)V

    move-object p1, v2

    .line 72
    :goto_25
    new-instance p2, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-direct {p2, v0, p1}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WmDisplayCutout{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
