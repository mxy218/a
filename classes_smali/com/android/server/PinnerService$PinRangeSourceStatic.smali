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

    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$1;)V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 729
    iput p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    .line 730
    iput p2, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    .line 731
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/PinnerService$PinRange;)Z
    .registers 3

    .line 735
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 736
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 737
    iget-boolean p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 739
    xor-int/2addr p1, v0

    return p1
.end method
