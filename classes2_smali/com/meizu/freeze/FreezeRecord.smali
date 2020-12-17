.class Lcom/meizu/freeze/FreezeRecord;
.super Ljava/lang/Object;
.source "FreezeRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    }
.end annotation


# static fields
.field private static final FAST_FREEZE_RECORD_SIZE:I = 0x32

.field private static final FAST_FREEZE_TYPE:I = 0x3

.field private static final FAST_UNFREEZE_TYPE:I = 0x4

.field private static final FREEZE_RECORD_SIZE:I = 0x64

.field private static final NORMAL_FREEZE_TYPE:I = 0x1

.field private static final NORMAL_UNFREEZE_TYPE:I = 0x2

.field private static mInstance:Lcom/meizu/freeze/FreezeRecord;


# instance fields
.field private final mFastFreezeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreezeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/freeze/FreezeRecord;->mInstance:Lcom/meizu/freeze/FreezeRecord;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    .line 47
    return-void
.end method

.method private addFastFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V
    .registers 4
    .param p1, "freezeRecordItem"  # Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    .line 92
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_10

    .line 93
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_10
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private addFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V
    .registers 4
    .param p1, "freezeRecordItem"  # Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    .line 85
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_10

    .line 86
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method private getFreezeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"  # I

    .line 153
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    .line 163
    const-string v0, ""

    return-object v0

    .line 161
    :cond_f
    const-string v0, "-Fast Freeze"

    return-object v0

    .line 159
    :cond_12
    const-string v0, "+Fast Freeze"

    return-object v0

    .line 157
    :cond_15
    const-string v0, "-Freeze     "

    return-object v0

    .line 155
    :cond_18
    const-string v0, "+Freeze     "

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/meizu/freeze/FreezeRecord;
    .registers 2

    const-class v0, Lcom/meizu/freeze/FreezeRecord;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/meizu/freeze/FreezeRecord;->mInstance:Lcom/meizu/freeze/FreezeRecord;

    if-nez v1, :cond_e

    .line 40
    new-instance v1, Lcom/meizu/freeze/FreezeRecord;

    invoke-direct {v1}, Lcom/meizu/freeze/FreezeRecord;-><init>()V

    sput-object v1, Lcom/meizu/freeze/FreezeRecord;->mInstance:Lcom/meizu/freeze/FreezeRecord;

    .line 42
    :cond_e
    sget-object v1, Lcom/meizu/freeze/FreezeRecord;->mInstance:Lcom/meizu/freeze/FreezeRecord;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addFastFreezeRecord([I)V
    .registers 5
    .param p1, "pids"  # [I

    .line 57
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_3
    new-instance v1, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, p1}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;-><init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V

    .line 59
    .local v1, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeRecord;->addFastFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V

    .line 60
    .end local v1  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public addFastUnfreezeRecord()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_3
    new-instance v1, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;-><init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V

    .line 73
    .local v1, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeRecord;->addFastFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V

    .line 74
    .end local v1  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public addFastUnfreezeRecord([I)V
    .registers 5
    .param p1, "pids"  # [I

    .line 78
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    monitor-enter v0

    .line 79
    :try_start_3
    new-instance v1, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, p1}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;-><init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V

    .line 80
    .local v1, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeRecord;->addFastFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V

    .line 81
    .end local v1  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public addFreezeRecord(Lcom/meizu/freeze/FreezeItem;)V
    .registers 5
    .param p1, "freezeItem"  # Lcom/meizu/freeze/FreezeItem;

    .line 50
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    monitor-enter v0

    .line 51
    :try_start_3
    new-instance v1, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;-><init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V

    .line 52
    .local v1, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeRecord;->addFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V

    .line 53
    .end local v1  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public addUnfreezeRecord(Lcom/meizu/freeze/FreezeItem;)V
    .registers 5
    .param p1, "freezeItem"  # Lcom/meizu/freeze/FreezeItem;

    .line 64
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    monitor-enter v0

    .line 65
    :try_start_3
    new-instance v1, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;-><init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V

    .line 66
    .local v1, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeRecord;->addFreezeRecordItem(Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;)V

    .line 67
    .end local v1  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 127
    const-string v0, "--------------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    monitor-enter v1

    .line 130
    :try_start_f
    iget-object v2, p0, Lcom/meizu/freeze/FreezeRecord;->mFreezeRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    .line 131
    .local v3, "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->currentTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->type:I

    invoke-direct {p0, v5}, Lcom/meizu/freeze/FreezeRecord;->getFreezeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    .end local v3  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    goto :goto_15

    .line 138
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_bb

    .line 139
    const-string v1, "--------------------------------------------------------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    monitor-enter v2

    .line 141
    :try_start_67
    iget-object v1, p0, Lcom/meizu/freeze/FreezeRecord;->mFastFreezeRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;

    .line 142
    .restart local v3  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->currentTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->type:I

    invoke-direct {p0, v5}, Lcom/meizu/freeze/FreezeRecord;->getFreezeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    .end local v3  # "freezeRecordItem":Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
    goto :goto_6d

    .line 149
    :cond_b6
    monitor-exit v2

    .line 150
    return-void

    .line 149
    :catchall_b8
    move-exception v1

    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_67 .. :try_end_ba} :catchall_b8

    throw v1

    .line 138
    :catchall_bb
    move-exception v2

    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v2
.end method
