.class final Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field final cutpoint:I

.field final lastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field mSlowDispatchCount:I

.field final pkg:Ljava/lang/String;

.field final uid:I

.field final which:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1380
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 1386
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x4
        0x8
        0x2
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .registers 5

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    .line 1395
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    .line 1396
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    .line 1397
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    .line 1398
    iget p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    if-ltz p1, :cond_17

    .line 1399
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    goto :goto_1a

    .line 1401
    :cond_17
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    .line 1403
    :goto_1a
    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 1406
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1407
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1409
    iget v8, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    sget-object v9, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v6, 0x20e00000003L

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 1411
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_62

    .line 1413
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1414
    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v0, :cond_62

    .line 1415
    const-wide v4, 0x20b00000005L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1416
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1417
    const-wide v6, 0x10500000002L

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1418
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1414
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1421
    :cond_62
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1422
    return-void
.end method
