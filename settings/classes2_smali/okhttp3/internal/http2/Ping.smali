.class final Lokhttp3/internal/http2/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private received:J

.field private sent:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lokhttp3/internal/http2/Ping;->sent:J

    .line 27
    iput-wide v0, p0, Lokhttp3/internal/http2/Ping;->received:J

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 5

    .line 44
    iget-wide v0, p0, Lokhttp3/internal/http2/Ping;->received:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    iget-wide v0, p0, Lokhttp3/internal/http2/Ping;->sent:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lokhttp3/internal/http2/Ping;->received:J

    .line 46
    iget-object p0, p0, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 44
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method receive()V
    .registers 5

    .line 38
    iget-wide v0, p0, Lokhttp3/internal/http2/Ping;->received:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-wide v0, p0, Lokhttp3/internal/http2/Ping;->sent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Ping;->received:J

    .line 40
    iget-object p0, p0, Lokhttp3/internal/http2/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 38
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method send()V
    .registers 5

    .line 33
    iget-wide v0, p0, Lokhttp3/internal/http2/Ping;->sent:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Ping;->sent:J

    return-void

    .line 33
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
