.class final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "GlobalSaturationTintController.java"


# instance fields
.field private final mMatrixGlobalSaturation:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .line 74
    const/16 v0, 0x96

    return v0
.end method

.method public getMatrix()[F
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 79
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public setMatrix(I)V
    .registers 8

    .line 44
    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_7

    .line 45
    move p1, v1

    goto :goto_a

    .line 46
    :cond_7
    if-le p1, v0, :cond_a

    .line 47
    move p1, v0

    .line 49
    :cond_a
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting saturation level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorDisplayService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-ne p1, v0, :cond_2f

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/GlobalSaturationTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 53
    iget-object p1, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_87

    .line 55
    :cond_2f
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/GlobalSaturationTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 56
    int-to-float p1, p1

    const v2, 0x3c23d70a  # 0.01f

    mul-float/2addr p1, v2

    .line 57
    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p1

    .line 58
    const/4 v3, 0x3

    new-array v3, v3, [F

    const v4, 0x3e6c8b44  # 0.231f

    mul-float/2addr v4, v2

    aput v4, v3, v1

    const v4, 0x3f370a3d  # 0.715f

    mul-float/2addr v4, v2

    aput v4, v3, v0

    const v4, 0x3d9374bc  # 0.072f

    mul-float/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 60
    iget-object v2, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    aget v5, v3, v1

    add-float/2addr v5, p1

    aput v5, v2, v1

    .line 61
    aget v5, v3, v1

    aput v5, v2, v0

    .line 62
    aget v1, v3, v1

    aput v1, v2, v4

    .line 63
    const/4 v1, 0x4

    aget v5, v3, v0

    aput v5, v2, v1

    .line 64
    const/4 v1, 0x5

    aget v5, v3, v0

    add-float/2addr v5, p1

    aput v5, v2, v1

    .line 65
    const/4 v1, 0x6

    aget v0, v3, v0

    aput v0, v2, v1

    .line 66
    const/16 v0, 0x8

    aget v1, v3, v4

    aput v1, v2, v0

    .line 67
    const/16 v0, 0x9

    aget v1, v3, v4

    aput v1, v2, v0

    .line 68
    const/16 v0, 0xa

    aget v1, v3, v4

    add-float/2addr v1, p1

    aput v1, v2, v0

    .line 70
    :goto_87
    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 3

    .line 35
    return-void
.end method
