.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field private mColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mLength:F

.field private mOffset:F


# direct methods
.method public constructor <init>(IFF)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 48
    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    .line 49
    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 61
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return p0
.end method

.method public getLength()F
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return p0
.end method

.method public getOffset()F
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return p0
.end method

.method public setColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 66
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return-void
.end method

.method public setLength(F)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public setOffset(F)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return-void
.end method
