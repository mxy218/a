.class public Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Box"
.end annotation


# instance fields
.field public height:F

.field public minX:F

.field public minY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 868
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 869
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 870
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method public static fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;
    .registers 5

    .line 875
    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public maxX()F
    .registers 2

    .line 883
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, p0

    return v0
.end method

.method public maxY()F
    .registers 2

    .line 884
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, p0

    return v0
.end method

.method public toRectF()Landroid/graphics/RectF;
    .registers 5

    .line 880
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public union(Lcom/caverock/androidsvg/SVG$Box;)V
    .registers 4

    .line 888
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 889
    :cond_a
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_14

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 890
    :cond_14
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 891
    :cond_29
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result p1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    :cond_3e
    return-void
.end method
