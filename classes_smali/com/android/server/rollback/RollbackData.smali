.class Lcom/android/server/rollback/RollbackData;
.super Ljava/lang/Object;
.source "RollbackData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackData$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_ENABLING:I


# instance fields
.field public apkSessionId:I

.field public final backupDir:Ljava/io/File;

.field public final info:Landroid/content/rollback/RollbackInfo;

.field public restoreUserDataInProgress:Z

.field public final stagedSessionId:I

.field public state:I

.field public timestamp:Ljava/time/Instant;


# direct methods
.method constructor <init>(ILjava/io/File;I)V
    .registers 13

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 112
    new-instance v8, Landroid/content/rollback/RollbackInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eq p3, v0, :cond_15

    const/4 v0, 0x1

    move v5, v0

    goto :goto_16

    :cond_15
    move v5, v1

    :goto_16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v8, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 117
    iput-object p2, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    .line 118
    iput p3, p0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    .line 119
    iput v1, p0, Lcom/android/server/rollback/RollbackData;->state:I

    .line 120
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZ)V
    .registers 9

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 128
    iput-object p1, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 129
    iput-object p2, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    .line 130
    iput-object p3, p0, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 131
    iput p4, p0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    .line 132
    iput p5, p0, Lcom/android/server/rollback/RollbackData;->state:I

    .line 133
    iput p6, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    .line 134
    iput-boolean p7, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 135
    return-void
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58e10884

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2b

    const v1, -0x2bbe7537

    if-eq v0, v1, :cond_21

    const v1, 0x61e1ed80

    if-eq v0, v1, :cond_17

    :cond_16
    goto :goto_35

    :cond_17
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v3

    goto :goto_36

    :cond_21
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v4

    goto :goto_36

    :cond_2b
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_36

    :goto_35
    const/4 v0, -0x1

    :goto_36
    if-eqz v0, :cond_56

    if-eq v0, v4, :cond_55

    if-ne v0, v2, :cond_3e

    .line 158
    const/4 p0, 0x3

    return p0

    .line 160
    :cond_3e
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_55
    return v4

    .line 156
    :cond_56
    return v3
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .registers 4

    .line 145
    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    .line 148
    const-string p0, "committed"

    return-object p0

    .line 150
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 147
    :cond_22
    const-string p0, "available"

    return-object p0

    .line 146
    :cond_25
    const-string p0, "enabling"

    return-object p0
.end method


# virtual methods
.method public getStateAsString()Ljava/lang/String;
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/rollback/RollbackData;->state:I

    invoke-static {v0}, Lcom/android/server/rollback/RollbackData;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStaged()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method
