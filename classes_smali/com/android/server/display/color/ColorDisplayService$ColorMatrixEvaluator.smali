.class Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorMatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private final mResultMatrix:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService$1;)V
    .registers 2

    .line 1166
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1166
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[F[F)[F
    .registers 8

    .line 1175
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1176
    aget v2, p2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1178
    :cond_13
    return-object v1
.end method
