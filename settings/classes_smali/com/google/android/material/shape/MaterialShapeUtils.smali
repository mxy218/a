.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method static createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;
    .registers 3

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 33
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    return-object p0

    .line 31
    :cond_a
    new-instance p0, Lcom/google/android/material/shape/CutCornerTreatment;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>(F)V

    return-object p0

    .line 29
    :cond_11
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object p0
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 1

    .line 42
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method
