.class final Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "PinnerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinnedFile"
.end annotation


# instance fields
.field final bytesPinned:I

.field final fileName:Ljava/lang/String;

.field private mAddress:J

.field final mapSize:I


# direct methods
.method constructor <init>(JILjava/lang/String;I)V
    .registers 6
    .param p1, "address"  # J
    .param p3, "mapSize"  # I
    .param p4, "fileName"  # Ljava/lang/String;
    .param p5, "bytesPinned"  # I

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-wide p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 942
    iput p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    .line 943
    iput-object p4, p0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 944
    iput p5, p0, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 945
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 949
    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    .line 950
    iget v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mapSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PinnerService;->access$1200(JJ)V

    .line 951
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 953
    :cond_12
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 957
    invoke-virtual {p0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 958
    return-void
.end method
