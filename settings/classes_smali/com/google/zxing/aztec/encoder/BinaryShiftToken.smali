.class final Lcom/google/zxing/aztec/encoder/BinaryShiftToken;
.super Lcom/google/zxing/aztec/encoder/Token;
.source "BinaryShiftToken.java"


# instance fields
.field private final binaryShiftByteCount:S

.field private final binaryShiftStart:S


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/Token;II)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/Token;-><init>(Lcom/google/zxing/aztec/encoder/Token;)V

    int-to-short p1, p2

    .line 30
    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    int-to-short p1, p3

    .line 31
    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/google/zxing/common/BitArray;[B)V
    .registers 8

    const/4 v0, 0x0

    .line 36
    :goto_1
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    if-ge v0, v1, :cond_3b

    const/16 v2, 0x3e

    const/16 v3, 0x1f

    if-eqz v0, :cond_f

    if-ne v0, v3, :cond_2e

    if-gt v1, v2, :cond_2e

    :cond_f
    const/4 v1, 0x5

    .line 40
    invoke-virtual {p1, v3, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 41
    iget-short v4, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    if-le v4, v2, :cond_1f

    add-int/lit8 v4, v4, -0x1f

    const/16 v1, 0x10

    .line 42
    invoke-virtual {p1, v4, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2e

    :cond_1f
    if-nez v0, :cond_29

    .line 45
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2e

    :cond_29
    add-int/lit8 v4, v4, -0x1f

    .line 48
    invoke-virtual {p1, v4, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 51
    :cond_2e
    :goto_2e
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    add-int/2addr v1, v0

    aget-byte v1, p2, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    iget-short p0, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    add-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
