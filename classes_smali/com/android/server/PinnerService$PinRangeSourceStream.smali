.class final Lcom/android/server/PinnerService$PinRangeSourceStream;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinRangeSourceStream"
.end annotation


# instance fields
.field private mDone:Z

.field private final mStream:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$1;)V

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 748
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    .line 749
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/PinnerService$PinRange;)Z
    .registers 4

    .line 753
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 755
    :try_start_5
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 756
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_16

    .line 759
    goto :goto_19

    .line 757
    :catch_16
    move-exception p1

    .line 758
    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 761
    :cond_19
    :goto_19
    iget-boolean p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    xor-int/2addr p1, v1

    return p1
.end method
