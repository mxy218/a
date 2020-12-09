.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_POLICY_CHANGED:I = 0x7

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_f

    .line 109
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private dumpGrantFlags(I)Ljava/lang/String;
    .registers 5

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    and-int/lit8 v1, p1, 0x1

    const/16 v2, 0x7c

    if-eqz v1, :cond_19

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_14
    const-string v1, "INITIATED_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_19
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2b

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_26
    const-string p1, "DISMISS_KEYGUARD"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_36

    .line 210
    const/16 p1, 0x30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dumpType(I)Ljava/lang/String;
    .registers 4

    .line 177
    packed-switch p1, :pswitch_data_32

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_1a  #0x7
    const-string p1, "DevicePolicyChanged"

    return-object p1

    .line 191
    :pswitch_1d  #0x6
    const-string p1, "ManagingTrust"

    return-object p1

    .line 189
    :pswitch_20  #0x5
    const-string p1, "AgentStopped"

    return-object p1

    .line 187
    :pswitch_23  #0x4
    const-string p1, "AgentConnected"

    return-object p1

    .line 185
    :pswitch_26  #0x3
    const-string p1, "AgentDied"

    return-object p1

    .line 183
    :pswitch_29  #0x2
    const-string p1, "TrustTimeout"

    return-object p1

    .line 181
    :pswitch_2c  #0x1
    const-string p1, "RevokeTrust"

    return-object p1

    .line 179
    :pswitch_2f  #0x0
    const-string p1, "GrantTrust"

    return-object p1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .registers 4

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p0, v0

    .line 163
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    .line 167
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 168
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    if-ltz v0, :cond_19

    .line 170
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_19
    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .registers 16

    .line 116
    nop

    .line 117
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 118
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba

    if-ge v2, p2, :cond_ba

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustArchive$Event;

    .line 120
    const/4 v4, -0x1

    if-eq p3, v4, :cond_23

    iget v5, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq p3, v5, :cond_23

    iget v5, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq v5, v4, :cond_23

    .line 122
    goto :goto_9

    .line 125
    :cond_23
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-wide v7, v3, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v7, v8}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 127
    invoke-direct {p0, v7}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 126
    const-string v7, "#%-2d %s %s: "

    invoke-virtual {p1, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    if-ne p3, v4, :cond_58

    .line 129
    const-string/jumbo v4, "user="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :cond_58
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v4, :cond_76

    .line 132
    const-string v4, "agent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    if-eqz p5, :cond_6d

    .line 134
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_76

    .line 136
    :cond_6d
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    :cond_76
    :goto_76
    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    if-eqz v4, :cond_97

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7e

    goto :goto_b3

    .line 145
    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", managingTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    goto :goto_b3

    .line 141
    :cond_97
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v3, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-wide v5, v3, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 142
    invoke-static {v5, v6}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget v3, v3, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v9

    .line 141
    const-string v3, ", message=\"%s\", duration=%s, flags=%s"

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    nop

    .line 149
    :goto_b3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto/16 :goto_9

    .line 152
    :cond_ba
    return-void
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .registers 14

    .line 92
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 93
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .registers 14

    .line 88
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 89
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .registers 14

    .line 96
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 97
    return-void
.end method

.method public logDevicePolicyChanged()V
    .registers 12

    .line 104
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 105
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 18

    .line 75
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 77
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .registers 15

    .line 100
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 101
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .registers 14

    .line 80
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 81
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .registers 14

    .line 84
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 85
    return-void
.end method
