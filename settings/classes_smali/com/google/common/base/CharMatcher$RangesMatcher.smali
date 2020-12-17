.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 7

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 109
    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 110
    array-length p0, p2

    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_f

    move p0, v0

    goto :goto_10

    :cond_f
    move p0, v1

    :goto_10
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    move p0, v1

    .line 111
    :goto_14
    array-length p1, p2

    if-ge p0, p1, :cond_36

    .line 112
    aget-char p1, p2, p0

    aget-char v2, p3, p0

    if-gt p1, v2, :cond_1f

    move p1, v0

    goto :goto_20

    :cond_1f
    move p1, v1

    :goto_20
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 p1, p0, 0x1

    .line 113
    array-length v2, p2

    if-ge p1, v2, :cond_34

    .line 114
    aget-char p0, p3, p0

    aget-char v2, p2, p1

    if-ge p0, v2, :cond_30

    move p0, v0

    goto :goto_31

    :cond_30
    move p0, v1

    :goto_31
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_34
    move p0, p1

    goto :goto_14

    :cond_36
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_a

    return v1

    :cond_a
    not-int v0, v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_15

    .line 126
    iget-object p0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char p0, p0, v0

    if-gt p1, p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method
