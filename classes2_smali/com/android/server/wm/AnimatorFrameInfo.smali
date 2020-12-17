.class public Lcom/android/server/wm/AnimatorFrameInfo;
.super Ljava/lang/Object;
.source "AnimatorFrameInfo.java"


# static fields
.field private static final ANIMATION_DONE:I = 0x3

.field private static final ANIMATION_FRAME_BEGIN:I = 0x0

.field private static final ANIMATION_FRAME_END:I = 0x1

.field private static final ANIMATION_FRAME_VSYNC:I = 0x4

.field private static final ANIMATION_START:I = 0x2

.field private static mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

.field private static final mFrameInfos:Lcom/android/server/wm/LimitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/LimitQueue<",
            "Lcom/android/server/wm/AnimatorFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastVsync:J

.field private static mRecordFrameInfoEnable:Z


# instance fields
.field private final mFrameInfo:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/android/server/wm/LimitQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/android/server/wm/LimitQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    return-void
.end method

.method public static clearAll()V
    .registers 2

    .line 107
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    invoke-virtual {v1}, Lcom/android/server/wm/LimitQueue;->clear()V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static dumpFrameInfoLocked(Ljava/io/PrintWriter;)V
    .registers 24
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 141
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump Animator FrameInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v0, "RealFrameTime,BinderTime,FrameTime,FrameInterVal,AnimatorStart,AnimatorDone"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    sget-object v2, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    monitor-enter v2

    .line 149
    :try_start_22
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/LimitQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "queueArray":[Ljava/lang/Object;
    array-length v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-lez v3, :cond_4c

    .line 152
    array-length v3, v0

    sub-int/2addr v3, v5

    aget-object v3, v0, v3

    check-cast v3, Lcom/android/server/wm/AnimatorFrameInfo;

    .line 153
    .local v3, "lastFrame":Lcom/android/server/wm/AnimatorFrameInfo;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v8, v3, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v8, v8, v4

    sub-long/2addr v6, v8

    const-wide v8, 0xb2d05e00L

    cmp-long v6, v6, v8

    if-lez v6, :cond_4c

    .line 154
    sget-object v4, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    invoke-virtual {v4}, Lcom/android/server/wm/LimitQueue;->clear()V

    .line 155
    monitor-exit v2

    return-void

    .line 158
    .end local v3  # "lastFrame":Lcom/android/server/wm/AnimatorFrameInfo;
    :cond_4c
    array-length v3, v0

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_4e
    if-ltz v3, :cond_e9

    .line 159
    aget-object v6, v0, v3

    check-cast v6, Lcom/android/server/wm/AnimatorFrameInfo;

    .line 160
    .local v6, "animatorFrameInfoBack":Lcom/android/server/wm/AnimatorFrameInfo;
    const/4 v7, 0x0

    if-lez v3, :cond_5a

    add-int/lit8 v8, v3, -0x1

    goto :goto_5b

    :cond_5a
    move v8, v7

    :goto_5b
    aget-object v8, v0, v8

    check-cast v8, Lcom/android/server/wm/AnimatorFrameInfo;

    .line 161
    .local v8, "animatorFrameInfoFront":Lcom/android/server/wm/AnimatorFrameInfo;
    iget-object v9, v6, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v9, v9, v7

    iget-object v11, v8, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v11, v11, v7

    sub-long/2addr v9, v11

    .line 162
    .local v9, "frameInterval":J
    iget-object v11, v6, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v12, v11, v7

    aget-wide v14, v11, v4

    sub-long/2addr v12, v14

    .line 163
    .local v12, "realFrameTime":J
    aget-wide v14, v11, v4

    .line 164
    .local v14, "binderTime":J
    const/16 v16, 0x2

    aget-wide v17, v11, v16

    const-wide/16 v19, 0x0

    cmp-long v11, v17, v19

    if-nez v11, :cond_7e

    move-wide/from16 v17, v12

    goto :goto_80

    :cond_7e
    move-wide/from16 v17, v19

    :goto_80
    move-wide/from16 v11, v17

    .line 165
    .end local v12  # "realFrameTime":J
    .local v11, "realFrameTime":J
    iget-object v13, v6, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v17, v13, v5

    aget-wide v21, v13, v4

    sub-long v4, v17, v21

    .line 166
    .local v4, "frameTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    aget-wide v21, v13, v16

    cmp-long v13, v21, v19

    if-lez v13, :cond_b9

    const/4 v13, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v13, 0x0

    .line 167
    :goto_ba
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    const/16 v16, 0x3

    aget-wide v21, v13, v16

    cmp-long v13, v21, v19

    if-lez v13, :cond_d3

    const/16 v17, 0x1

    goto :goto_d5

    :cond_d3
    const/16 v17, 0x0

    .line 168
    :goto_d5
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .end local v6  # "animatorFrameInfoBack":Lcom/android/server/wm/AnimatorFrameInfo;
    .end local v8  # "animatorFrameInfoFront":Lcom/android/server/wm/AnimatorFrameInfo;
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    goto/16 :goto_4e

    .line 170
    .end local v0  # "queueArray":[Ljava/lang/Object;
    .end local v3  # "i":I
    .end local v4  # "frameTime":J
    .end local v9  # "frameInterval":J
    .end local v11  # "realFrameTime":J
    .end local v14  # "binderTime":J
    :cond_e9
    monitor-exit v2

    .line 171
    return-void

    .line 170
    :catchall_eb
    move-exception v0

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_22 .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method private markAnimationsBegin()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 78
    return-void
.end method

.method private markAnimationsDone()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 134
    return-void
.end method

.method private markAnimationsStart()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 130
    return-void
.end method

.method private markVsyncFrame(J)V
    .registers 5
    .param p1, "frameTimeNs"  # J

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    const/4 v1, 0x4

    aput-wide p1, v0, v1

    .line 138
    return-void
.end method

.method static postAnimationDone()V
    .registers 2

    .line 97
    sget-boolean v0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    if-eqz v0, :cond_1b

    .line 98
    const-string v0, "AnimatorFrameInfo"

    const-string v1, "Animator end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    if-nez v0, :cond_16

    .line 100
    new-instance v0, Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    .line 102
    :cond_16
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsDone()V

    .line 104
    :cond_1b
    return-void
.end method

.method static postAnimationStart(J)V
    .registers 4
    .param p0, "frameTime"  # J

    .line 89
    sget-boolean v0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    if-eqz v0, :cond_17

    .line 90
    const-string v0, "AnimatorFrameInfo"

    const-string v1, "Animator start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    .line 92
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsStart()V

    .line 94
    :cond_17
    return-void
.end method

.method static postAnimationUpdate(J)V
    .registers 4
    .param p0, "frameTime"  # J

    .line 51
    sget-boolean v0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    if-eqz v0, :cond_4d

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_4d

    .line 53
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    if-eqz v0, :cond_25

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->hasMarkAnimationBegin()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 55
    return-void

    .line 57
    :cond_15
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AnimatorFrameInfo;->markVsyncFrame(J)V

    .line 58
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsBegin()V

    .line 59
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsEnd()V

    goto :goto_41

    .line 61
    :cond_25
    sget-wide v0, Lcom/android/server/wm/AnimatorFrameInfo;->mLastVsync:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_4c

    .line 62
    new-instance v0, Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    .line 63
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AnimatorFrameInfo;->markVsyncFrame(J)V

    .line 64
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsBegin()V

    .line 65
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->markAnimationsEnd()V

    .line 70
    :goto_41
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    invoke-static {v0}, Lcom/android/server/wm/AnimatorFrameInfo;->postAnimatorFrameInfo(Lcom/android/server/wm/AnimatorFrameInfo;)V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mAnimatorFrameInfo:Lcom/android/server/wm/AnimatorFrameInfo;

    .line 72
    sput-wide p0, Lcom/android/server/wm/AnimatorFrameInfo;->mLastVsync:J

    goto :goto_4d

    .line 67
    :cond_4c
    return-void

    .line 74
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static postAnimatorFrameInfo(Lcom/android/server/wm/AnimatorFrameInfo;)V
    .registers 3
    .param p0, "animatorFrameInfo"  # Lcom/android/server/wm/AnimatorFrameInfo;

    .line 38
    sget-boolean v0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    if-eqz v0, :cond_11

    .line 39
    sget-object v0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfos:Lcom/android/server/wm/LimitQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LimitQueue;->offer(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 43
    :cond_11
    :goto_11
    return-void
.end method

.method static setRecordFrameInfoEnable(Z)V
    .registers 1
    .param p0, "enable"  # Z

    .line 46
    sput-boolean p0, Lcom/android/server/wm/AnimatorFrameInfo;->mRecordFrameInfoEnable:Z

    .line 47
    invoke-static {}, Lcom/android/server/wm/AnimatorFrameInfo;->clearAll()V

    .line 48
    return-void
.end method


# virtual methods
.method protected hasMarkAnimationBegin()Z
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method protected markAnimationsEnd()V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/AnimatorFrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 82
    return-void
.end method
