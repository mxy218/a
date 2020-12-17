.class final Lcom/android/server/PinnerService$PinRangeSourceStatic;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinRangeSourceStatic"
.end annotation


# instance fields
.field private mDone:Z

.field private final mPinLength:I

.field private final mPinStart:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "pinStart"  # I
    .param p2, "pinLength"  # I

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$1;)V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 735
    iput p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    .line 736
    iput p2, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    .line 737
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/PinnerService$PinRange;)Z
    .registers 4
    .param p1, "outPinRange"  # Lcom/android/server/PinnerService$PinRange;

    .line 741
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 742
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 743
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 744
    .local v0, "done":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 745
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
