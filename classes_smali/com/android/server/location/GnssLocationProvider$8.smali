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
    .param p1, "this$0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 1842
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .registers 21
    .param p1, "notificationId"  # I
    .param p2, "userResponse"  # I

    .line 1849
    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendNiResponse, notifId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, v15, v14}, Lcom/android/server/location/GnssLocationProvider;->access$1900(Lcom/android/server/location/GnssLocationProvider;II)V

    .line 1854
    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1867
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2000(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v16

    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1868
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$600(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v17

    .line 1854
    const/16 v1, 0x7c

    const/4 v2, 0x2

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

    move/from16 v3, p1

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, p2

    invoke-static/range {v1 .. v16}, Landroid/util/StatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)I

    .line 1871
    const/4 v1, 0x1

    return v1
.end method
