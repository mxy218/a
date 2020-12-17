.class Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;
.super Landroid/os/Handler;
.source "ConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;Landroid/os/Looper;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_60

    .line 72
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 76
    :try_start_1c
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_24} :catch_24

    .line 80
    :catch_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 81
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    const/16 v6, 0x78

    const/16 v7, 0xf0

    invoke-static {v0, v6, v7}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;II)I

    move-result v0

    sub-long v2, v4, v2

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-lez v0, :cond_60

    .line 83
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_60
    return-void
.end method
