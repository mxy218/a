.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    .line 44
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    .line 45
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 48
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    .line 50
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 7

    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 184
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_17

    .line 185
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 188
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static isClassUnsolicited(I)Z
    .registers 2

    .line 117
    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;
    .registers 14

    .line 138
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_93

    .line 143
    nop

    .line 147
    const/4 v2, 0x0

    :try_start_c
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 148
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_18} :catch_89

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 151
    nop

    .line 153
    const/4 v6, -0x1

    .line 154
    invoke-static {v7}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v8

    if-nez v8, :cond_47

    .line 155
    array-length v6, v1

    const/4 v8, 0x3

    if-lt v6, v8, :cond_3f

    .line 159
    :try_start_26
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 160
    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_32} :catch_35

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 163
    goto :goto_47

    .line 161
    :catch_35
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing cmdNumber"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 156
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguemnts"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_47
    :goto_47
    nop

    .line 167
    array-length v8, v1

    if-le v8, v3, :cond_7b

    aget-object v8, v1, v3

    const-string/jumbo v9, "{{sensitive}}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 168
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_7c

    .line 172
    :cond_7b
    move-object v10, p0

    :goto_7c
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    new-instance v0, Lcom/android/server/NativeDaemonEvent;

    move-object v5, v0

    move-object v9, p0

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v0

    .line 149
    :catch_89
    move-exception p0

    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing code"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 140
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 216
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1a

    .line 217
    nop

    .line 218
    move v3, v5

    move v6, v3

    goto :goto_1c

    .line 216
    :cond_1a
    move v3, v2

    move v6, v3

    .line 220
    :goto_1c
    if-ge v3, v1, :cond_81

    .line 222
    const/16 v7, 0x20

    if-eqz v6, :cond_24

    move v8, v4

    goto :goto_25

    :cond_24
    move v8, v7

    .line 223
    :goto_25
    move v9, v3

    .line 224
    :goto_26
    if-ge v9, v1, :cond_3a

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_3a

    .line 225
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_38

    .line 227
    add-int/lit8 v9, v9, 0x1

    .line 229
    :cond_38
    add-int/2addr v9, v5

    goto :goto_26

    .line 231
    :cond_3a
    if-le v9, v1, :cond_3d

    move v9, v1

    .line 232
    :cond_3d
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 233
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v3, v9

    .line 234
    if-nez v6, :cond_4d

    .line 235
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 237
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    .line 240
    :goto_4f
    const-string v6, "\\\\"

    const-string v9, "\\"

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 241
    const-string v8, "\\\""

    const-string v9, "\""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 248
    const-string v7, " \""

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 252
    const/4 v8, -0x1

    if-le v7, v8, :cond_77

    if-gt v7, v6, :cond_77

    .line 253
    nop

    .line 254
    add-int/lit8 v7, v7, 0x2

    move v6, v5

    move v3, v7

    goto :goto_80

    .line 256
    :cond_77
    nop

    .line 257
    if-le v6, v8, :cond_7f

    .line 258
    add-int/lit8 v6, v6, 0x1

    move v3, v6

    move v6, v2

    goto :goto_80

    .line 257
    :cond_7f
    move v6, v2

    .line 265
    :goto_80
    goto :goto_1c

    .line 266
    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5

    .line 126
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-ne v0, p1, :cond_5

    .line 129
    return-void

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmdNumber()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 201
    :cond_c
    add-int/lit8 p1, p1, 0x2

    .line 202
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v1, v0

    if-le p1, v1, :cond_15

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_15
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .registers 3

    .line 106
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_c

    const/16 v1, 0x258

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isClassContinue()Z
    .registers 3

    .line 85
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isClassOk()Z
    .registers 3

    .line 92
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isClassServerError()Z
    .registers 3

    .line 99
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_c

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isClassUnsolicited()Z
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object v0
.end method
