.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
.super Ljava/lang/Object;
.source "ConnectionRateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRateSampler"
.end annotation


# instance fields
.field private mCount:J

.field private mInterface:[Ljava/lang/String;

.field private mOldBytes:[J

.field private oldMobileBytes:J

.field private oldMobileIfaces:Ljava/lang/String;

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V
    .registers 8

    .line 178
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "wlan0"

    const-string/jumbo v0, "wlan1"

    const-string v1, "bt-pan"

    const-string v2, "ppp9"

    .line 172
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    .line 174
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileIfaces:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 176
    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    const/4 p1, 0x0

    .line 179
    :goto_2f
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_4a

    .line 180
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_4a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v0

    .line 188
    :goto_6
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length v8, v7

    const-wide/high16 v9, 0x40a8000000000000L  # 3072.0

    if-ge v4, v8, :cond_36

    .line 189
    aget-object v5, v7, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v7}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 190
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aget-wide v11, v7, v4

    cmp-long v8, v11, v0

    if-lez v8, :cond_2f

    cmp-long v8, v5, v0

    if-lez v8, :cond_2f

    .line 191
    aget-wide v7, v7, v4

    sub-long v7, v5, v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v2, v7

    .line 193
    :cond_2f
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 195
    :cond_36
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$100(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 196
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v6

    add-long v5, v4, v6

    .line 197
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 198
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileIfaces:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 199
    iput-wide v5, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    .line 200
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$300(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D

    move-result-wide v2

    .line 201
    iput-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileIfaces:Ljava/lang/String;

    goto :goto_76

    .line 203
    :cond_5f
    iget-wide v7, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    cmp-long v4, v7, v0

    if-lez v4, :cond_76

    cmp-long v4, v5, v0

    if-lez v4, :cond_76

    iget-wide v11, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    const-wide/16 v13, 0x2

    cmp-long v4, v11, v13

    if-lez v4, :cond_76

    sub-long v7, v5, v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v2, v7

    :cond_76
    :goto_76
    cmp-long v4, v5, v0

    if-lez v4, :cond_7f

    .line 208
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    :cond_7f
    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    .line 209
    iput-wide v5, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    .line 210
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 211
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: bacr,rate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_a1
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$600(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$600(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
