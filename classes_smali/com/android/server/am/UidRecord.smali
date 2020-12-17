.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_CACHED:I = 0x8

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_IDLE:I = 0x2

.field static final CHANGE_PROCSTATE:I = 0x0

.field static final CHANGE_UNCACHED:I = 0x10

.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field curProcStateSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "networkStateUpdate"
        }
    .end annotation
.end field

.field curWhitelist:Z

.field ephemeral:Z

.field foregroundServices:Z

.field volatile hasInternetPermission:Z

.field idle:Z

.field lastBackgroundTime:J

.field lastDispatchedProcStateSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "networkStateUpdate"
        }
    .end annotation
.end field

.field lastNetworkUpdatedProcStateSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "networkStateUpdate"
        }
    .end annotation
.end field

.field lastReportedChange:I

.field private mCurProcState:I

.field final networkStateLock:Ljava/lang/Object;

.field numProcs:I

.field pendingChange:Lcom/android/server/am/UidRecord$ChangeItem;

.field setIdle:Z

.field setProcState:I

.field setWhitelist:Z

.field final uid:I

.field volatile waitingForNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 98
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "_uid"  # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 119
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->idle:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 122
    return-void
.end method


# virtual methods
.method public getCurProcState()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return v0
.end method

.method public reset()V
    .registers 2

    .line 133
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 135
    return-void
.end method

.method public setCurProcState(I)V
    .registers 2
    .param p1, "curProcState"  # I

    .line 129
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget v2, p0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    if-eqz v1, :cond_36

    .line 189
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v1, :cond_3f

    .line 192
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eqz v1, :cond_48

    .line 195
    const-string v1, " whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_48
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    .line 198
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 201
    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_68

    .line 202
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_68
    iget v1, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    if-eqz v1, :cond_c6

    .line 205
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "printed":Z
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7e

    .line 208
    const/4 v1, 0x1

    .line 209
    const-string v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_7e
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_93

    .line 212
    if-eqz v1, :cond_8c

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_8c
    const/4 v1, 0x1

    .line 216
    const-string/jumbo v2, "idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_93
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a4

    .line 219
    if-eqz v1, :cond_9e

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_9e
    const/4 v1, 0x1

    .line 223
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_a4
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b5

    .line 226
    if-eqz v1, :cond_af

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_af
    const/4 v1, 0x1

    .line 230
    const-string v2, "cached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_b5
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c6

    .line 233
    if-eqz v1, :cond_c0

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_c0
    const-string/jumbo v2, "uncached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v1  # "printed":Z
    :cond_c6
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateHasInternetPermission()V
    .registers 3

    .line 138
    iget v0, p0, Lcom/android/server/am/UidRecord;->uid:I

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 140
    return-void
.end method

.method public updateLastDispatchedProcStateSeq(I)V
    .registers 4
    .param p1, "changeToDispatch"  # I

    .line 148
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    .line 149
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    iput-wide v0, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    .line 151
    :cond_8
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/UidRecord;->uid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 157
    iget v2, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 158
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 159
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 160
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 161
    iget-wide v8, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 161
    const-wide v6, 0x10b00000006L

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 163
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->idle:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 164
    iget v8, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    if-eqz v8, :cond_64

    .line 165
    const-wide v6, 0x20e00000008L

    sget-object v9, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 168
    :cond_64
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 170
    const-wide v2, 0x10b0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 171
    .local v2, "seqToken":J
    const-wide v4, 0x10300000001L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 172
    const-wide v4, 0x10300000002L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 174
    const-wide v4, 0x10300000003L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 175
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 178
    return-void
.end method
