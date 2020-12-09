.class final Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoreEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method constructor <init>([BI)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 77
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    .line 79
    return-void
.end method

.method private static compare([B[B)I
    .registers 6

    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 115
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-le v2, v3, :cond_d

    .line 116
    const/4 p0, 0x1

    return p0

    .line 117
    :cond_d
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ge v2, v3, :cond_15

    .line 118
    const/4 p0, -0x1

    return p0

    .line 114
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_18
    return v0
.end method

.method private set([BI)V
    .registers 6

    .line 82
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 83
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_d
    iput p2, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 86
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;)I
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object p1, p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 72
    check-cast p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;)I

    move-result p1

    return p1
.end method

.method public updateIfBetter([BI)V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    .line 95
    :cond_c
    return-void
.end method
