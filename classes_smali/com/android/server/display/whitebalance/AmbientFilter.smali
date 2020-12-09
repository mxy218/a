.class public abstract Lcom/android/server/display/whitebalance/AmbientFilter;
.super Ljava/lang/Object;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false


# instance fields
.field private final mBuffer:Lcom/android/server/display/utils/RollingBuffer;

.field private final mHorizon:I

.field protected mLoggingEnabled:Z

.field protected final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->validateArguments(I)V

    .line 62
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    .line 63
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    .line 64
    iput p2, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    .line 65
    new-instance p1, Lcom/android/server/display/utils/RollingBuffer;

    invoke-direct {p1}, Lcom/android/server/display/utils/RollingBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 66
    return-void
.end method

.method private truncateOldValues(J)V
    .registers 5

    .line 150
    iget v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 151
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/utils/RollingBuffer;->truncate(J)V

    .line 152
    return-void
.end method

.method private validateArguments(I)V
    .registers 3

    .line 144
    if-lez p1, :cond_3

    .line 147
    return-void

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "horizon must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addValue(JF)Z
    .registers 7

    .line 79
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_7

    .line 80
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->truncateOldValues(J)V

    .line 83
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v0, :cond_2c

    .line 84
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/utils/RollingBuffer;->add(JF)V

    .line 87
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    .line 112
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected abstract filter(JLcom/android/server/display/utils/RollingBuffer;)F
.end method

.method public getEstimate(J)F
    .registers 7

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->truncateOldValues(J)V

    .line 100
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->filter(JLcom/android/server/display/utils/RollingBuffer;)F

    move-result v0

    .line 101
    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v1, :cond_2b

    .line 102
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get estimate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2b
    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 123
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 124
    const/4 p1, 0x0

    return p1

    .line 126
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    .line 127
    const/4 p1, 0x1

    return p1
.end method
