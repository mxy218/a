.class Lcom/android/server/location/GnssLocationProvider$8;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    .line 1831
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .registers 20

    .line 1837
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v15, p2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNiResponse, notifId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_2b
    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, v2, v15}, Lcom/android/server/location/GnssLocationProvider;->access$2200(Lcom/android/server/location/GnssLocationProvider;II)V

    .line 1843
    const/16 v1, 0x7c

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1856
    invoke-static {v14}, Lcom/android/server/location/GnssLocationProvider;->access$2300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v14

    iget-object v0, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1857
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$900(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v16

    .line 1843
    move v0, v1

    move v1, v3

    move/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v16

    move/from16 v15, p2

    invoke-static/range {v0 .. v15}, Landroid/util/StatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)I

    .line 1860
    const/4 v0, 0x1

    return v0
.end method
