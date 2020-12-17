.class final Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
.super Ljava/lang/Object;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSHeaderInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Location"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0010J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t¨\u0006\u001b"
    }
    d2 = {
        "Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;",
        "",
        "left",
        "",
        "right",
        "(II)V",
        "getLeft",
        "()I",
        "setLeft",
        "(I)V",
        "getRight",
        "setRight",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "setLocationFromOffset",
        "",
        "parentWidth",
        "offset",
        "width",
        "RTL",
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
.field private left:I

.field private right:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_22

    instance-of v1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iget v3, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    if-ne v1, v3, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-eqz v1, :cond_21

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    iget p1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    if-ne p0, p1, :cond_1d

    move p0, v0

    goto :goto_1e

    :cond_1d
    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    return v2

    :cond_22
    :goto_22
    return v0
.end method

.method public final getLeft()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    return p0
.end method

.method public final getRight()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLocationFromOffset(IIIZ)V
    .registers 5

    if-eqz p4, :cond_a

    sub-int/2addr p1, p2

    sub-int p2, p1, p3

    .line 123
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    goto :goto_f

    .line 126
    :cond_a
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    add-int/2addr p2, p3

    .line 127
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    :goto_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
