.class final Lcom/android/systemui/DualToneHandler$Color;
.super Ljava/lang/Object;
.source "DualToneHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DualToneHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Color"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000c\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008¨\u0006\u0015"
    }
    d2 = {
        "Lcom/android/systemui/DualToneHandler$Color;",
        "",
        "single",
        "",
        "background",
        "fill",
        "(III)V",
        "getBackground",
        "()I",
        "getFill",
        "getSingle",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final background:I

.field private final fill:I

.field private final single:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    iput p2, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    iput p3, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2d

    instance-of v1, p1, Lcom/android/systemui/DualToneHandler$Color;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/android/systemui/DualToneHandler$Color;

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    iget v3, p1, Lcom/android/systemui/DualToneHandler$Color;->single:I

    if-ne v1, v3, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    iget v3, p1, Lcom/android/systemui/DualToneHandler$Color;->background:I

    if-ne v1, v3, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_2c

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    iget p1, p1, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    if-ne p0, p1, :cond_28

    move p0, v0

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v2

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final getBackground()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    return p0
.end method

.method public final getFill()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    return p0
.end method

.method public final getSingle()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color(single="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
