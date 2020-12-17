.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;


# instance fields
.field public timeOffsetNanos:J

.field public timestamp:J

.field public type:I

.field public values:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 557
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .registers 2

    .line 534
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_15

    .line 535
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_7
    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    .line 538
    sput-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    .line 540
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 542
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .registers 4

    const/4 v0, 0x1

    .line 562
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type:I

    const-wide/16 v0, 0x0

    .line 563
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos:J

    .line 564
    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 565
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp:J

    const/4 v0, -0x1

    .line 566
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 8

    .line 592
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 593
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    .line 595
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_e
    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    .line 599
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    const/4 v3, 0x4

    if-eqz v1, :cond_2a

    array-length v4, v1

    if-lez v4, :cond_2a

    .line 602
    array-length v4, v1

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 604
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 606
    :cond_2a
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp:J

    cmp-long p0, v1, v5

    if-eqz p0, :cond_35

    .line 608
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_35
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 574
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 576
    :cond_8
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const/4 v4, 0x2

    .line 577
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 579
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v0, :cond_2a

    array-length v0, v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    .line 580
    :goto_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v4, v1

    if-ge v0, v4, :cond_2a

    const/4 v4, 0x3

    .line 581
    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 584
    :cond_2a
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    const/4 v2, 0x4

    .line 585
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 587
    :cond_34
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
