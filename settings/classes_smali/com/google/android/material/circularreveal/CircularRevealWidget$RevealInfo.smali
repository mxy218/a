.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 148
    iput p2, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 149
    iput p3, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$1;)V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 4

    .line 153
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget p1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .registers 2

    .line 171
    iget p0, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    cmpl-float p0, p0, v0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public set(FFF)V
    .registers 4

    .line 157
    iput p1, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 158
    iput p2, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 159
    iput p3, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    return-void
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 4

    .line 163
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget p1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    return-void
.end method
