.class Lcom/android/server/biometrics/face/FaceService$UsageStats;
.super Ljava/lang/Object;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStats"
.end annotation


# static fields
.field static final EVENT_LOG_SIZE:I = 0x64


# instance fields
.field acceptCount:I

.field acceptLatency:J

.field mAuthenticationEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mErrorCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mErrorLatency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field rejectCount:I

.field rejectLatency:J

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    .line 156
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    .line 157
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 158
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method


# virtual methods
.method addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V
    .registers 8

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_10

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$000(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 168
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    .line 169
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    goto :goto_9c

    .line 170
    :cond_2b
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v0

    if-nez v0, :cond_41

    .line 171
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    .line 172
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    goto :goto_9c

    .line 174
    :cond_41
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 176
    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 175
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_9c
    return-void
.end method

.method print(Ljava/io/PrintWriter;)V
    .registers 15

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 183
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mAuthenticationEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 188
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept\tCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tLatency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\tAverage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v4, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptCount:I

    const-wide/16 v5, 0x0

    if-lez v4, :cond_61

    iget-wide v7, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->acceptLatency:J

    int-to-long v9, v4

    div-long/2addr v7, v9

    goto :goto_62

    :cond_61
    move-wide v7, v5

    :goto_62
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject\tCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v4, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectCount:I

    if-lez v4, :cond_8f

    iget-wide v7, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->rejectLatency:J

    int-to-long v9, v4

    div-long/2addr v7, v9

    goto :goto_90

    :cond_8f
    move-wide v7, v5

    :goto_90
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 194
    iget-object v7, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorCount:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\tCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    if-lez v7, :cond_f9

    iget-object v9, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mErrorLatency:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    int-to-long v11, v7

    div-long/2addr v9, v11

    goto :goto_fa

    .line 198
    :cond_f9
    move-wide v9, v5

    :goto_fa
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/biometrics/face/FaceService$UsageStats;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v4, v0}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    goto :goto_a4

    .line 201
    :cond_117
    return-void
.end method
