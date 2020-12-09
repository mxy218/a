.class public final Lcom/android/server/utils/PriorityDump;
.super Ljava/lang/Object;
.source "PriorityDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/PriorityDump$PriorityDumper;,
        Lcom/android/server/utils/PriorityDump$PriorityType;
    }
.end annotation


# static fields
.field public static final PRIORITY_ARG:Ljava/lang/String; = "--dump-priority"

.field public static final PRIORITY_ARG_CRITICAL:Ljava/lang/String; = "CRITICAL"

.field public static final PRIORITY_ARG_HIGH:Ljava/lang/String; = "HIGH"

.field public static final PRIORITY_ARG_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final PRIORITY_TYPE_CRITICAL:I = 0x1

.field private static final PRIORITY_TYPE_HIGH:I = 0x2

.field private static final PRIORITY_TYPE_INVALID:I = 0x0

.field private static final PRIORITY_TYPE_NORMAL:I = 0x3

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 141
    nop

    .line 142
    nop

    .line 144
    const/4 v0, 0x0

    if-nez p3, :cond_9

    .line 145
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 146
    return-void

    .line 149
    :cond_9
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    .line 150
    nop

    .line 151
    move v2, v0

    move v3, v2

    move v4, v3

    :goto_10
    array-length v5, p3

    const/4 v6, 0x1

    if-ge v0, v5, :cond_42

    .line 152
    aget-object v5, p3, v0

    const-string v7, "--proto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 153
    move v4, v6

    goto :goto_40

    .line 154
    :cond_20
    aget-object v5, p3, v0

    const-string v7, "--dump-priority"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 155
    add-int/lit8 v5, v0, 0x1

    array-length v7, p3

    if-ge v5, v7, :cond_40

    .line 156
    nop

    .line 157
    aget-object v0, p3, v5

    invoke-static {v0}, Lcom/android/server/utils/PriorityDump;->getPriorityType(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    move v0, v5

    goto :goto_40

    .line 160
    :cond_39
    add-int/lit8 v5, v2, 0x1

    aget-object v7, p3, v0

    aput-object v7, v1, v2

    move v2, v5

    .line 151
    :cond_40
    :goto_40
    add-int/2addr v0, v6

    goto :goto_10

    .line 164
    :cond_42
    array-length p3, p3

    if-ge v2, p3, :cond_4c

    .line 165
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 168
    :cond_4c
    if-eq v3, v6, :cond_60

    const/4 p3, 0x2

    if-eq v3, p3, :cond_5c

    const/4 p3, 0x3

    if-eq v3, p3, :cond_58

    .line 182
    invoke-interface {p0, p1, p2, v1, v4}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 183
    return-void

    .line 178
    :cond_58
    invoke-interface {p0, p1, p2, v1, v4}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 179
    return-void

    .line 174
    :cond_5c
    invoke-interface {p0, p1, p2, v1, v4}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 175
    return-void

    .line 170
    :cond_60
    invoke-interface {p0, p1, p2, v1, v4}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method private static getPriorityType(Ljava/lang/String;)I
    .registers 6

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x76664f19  # -3.699977E-33f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2b

    const v1, -0x5cfe9861

    if-eq v0, v1, :cond_21

    const v1, 0x21d5a2

    if-eq v0, v1, :cond_17

    :cond_16
    goto :goto_35

    :cond_17
    const-string v0, "HIGH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v4

    goto :goto_36

    :cond_21
    const-string v0, "CRITICAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v2

    goto :goto_36

    :cond_2b
    const-string v0, "NORMAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v3

    goto :goto_36

    :goto_35
    const/4 p0, -0x1

    :goto_36
    if-eqz p0, :cond_40

    if-eq p0, v4, :cond_3f

    if-eq p0, v3, :cond_3d

    .line 203
    return v2

    .line 200
    :cond_3d
    const/4 p0, 0x3

    return p0

    .line 197
    :cond_3f
    return v3

    .line 194
    :cond_40
    return v4
.end method
