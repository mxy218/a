.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "FinderPattern.java"


# instance fields
.field private final resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final startEnd:[I

.field private final value:I


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    .line 29
    iput-object p2, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/ResultPoint;

    .line 30
    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-direct {p2, p3, p5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float p3, p4

    invoke-direct {p2, p3, p5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 50
    instance-of v0, p1, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 53
    :cond_6
    check-cast p1, Lcom/google/zxing/oned/rss/FinderPattern;

    .line 54
    iget p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    iget p1, p1, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    if-ne p0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object p0
.end method

.method public getStartEnd()[I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    return-object p0
.end method

.method public getValue()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    return p0
.end method
