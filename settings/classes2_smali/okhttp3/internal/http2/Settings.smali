.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 55
    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method get(I)I
    .registers 2

    .line 77
    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget p0, p0, p1

    return p0
.end method

.method getHeaderTableSize()I
    .registers 2

    .line 88
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_d

    :cond_c
    const/4 p0, -0x1

    :goto_d
    return p0
.end method

.method getInitialWindowSize()I
    .registers 2

    .line 114
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x7

    aget p0, p0, v0

    goto :goto_f

    :cond_c
    const p0, 0xffff

    :goto_f
    return p0
.end method

.method getMaxConcurrentStreams(I)I
    .registers 3

    .line 99
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 p1, 0x4

    aget p1, p0, p1

    :cond_b
    return p1
.end method

.method getMaxFrameSize(I)I
    .registers 3

    .line 104
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_b
    return p1
.end method

.method isSet(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 72
    iget p0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 123
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_13

    .line 124
    :cond_c
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
    .registers 6

    .line 59
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_6

    return-object p0

    :cond_6
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 64
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 65
    aput p2, v0, p1

    return-object p0
.end method

.method size()I
    .registers 1

    .line 82
    iget p0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
