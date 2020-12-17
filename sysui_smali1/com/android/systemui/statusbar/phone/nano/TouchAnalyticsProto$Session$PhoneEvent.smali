.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;


# instance fields
.field public timeOffsetNanos:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 752
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 2

    .line 735
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_15

    .line 736
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_7
    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 739
    sput-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 741
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 743
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 3

    const/4 v0, 0x0

    .line 757
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    const-wide/16 v0, 0x0

    .line 758
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    const/4 v0, -0x1

    .line 759
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 6

    .line 777
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 778
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 780
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_e
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1c

    const/4 p0, 0x2

    .line 784
    invoke-static {p0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1c
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 767
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 769
    :cond_8
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    .line 770
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 772
    :cond_14
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
