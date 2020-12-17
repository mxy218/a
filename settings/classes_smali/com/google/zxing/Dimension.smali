.class public final Lcom/google/zxing/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    .line 31
    iput p1, p0, Lcom/google/zxing/Dimension;->width:I

    .line 32
    iput p2, p0, Lcom/google/zxing/Dimension;->height:I

    return-void

    .line 29
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 45
    instance-of v0, p1, Lcom/google/zxing/Dimension;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 46
    check-cast p1, Lcom/google/zxing/Dimension;

    .line 47
    iget v0, p0, Lcom/google/zxing/Dimension;->width:I

    iget v2, p1, Lcom/google/zxing/Dimension;->width:I

    if-ne v0, v2, :cond_14

    iget p0, p0, Lcom/google/zxing/Dimension;->height:I

    iget p1, p1, Lcom/google/zxing/Dimension;->height:I

    if-ne p0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getHeight()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/google/zxing/Dimension;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/google/zxing/Dimension;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/google/zxing/Dimension;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget p0, p0, Lcom/google/zxing/Dimension;->height:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/zxing/Dimension;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
